import os
import re
import jsonpickle
from utils import io_tools as iot



def read_sql_code(filename):
    with open(filename, 'r', encoding='UTF_16LE') as f:
        sql = f.read().replace('\n', ' ')
        sql = sql.replace('\t', '')

    return sql


def parse_attributes(tables_sql_list):
    table_dict = {}
    for table in tables_sql_list:
        table_name = "" + str(re.search('CREATE TABLE (.*?)\]\(', table).group(1)) + "]"
        table_name = table_name.replace(']', '')
        table_name = table_name.replace('[', '')
        schema, table_name = table_name.split('.')
        table_dict.setdefault(table_name, {"attributes": {}, "schema": ""})

        table_attrs = re.split("CREATE TABLE (.*?)\]\(", table)[2]
        cols = re.findall(' \[(.*?)NULL,', table_attrs)

        table_dict[table_name]["schema"] = schema

        for col in cols:
            col = col.replace(']', '')
            col = col.replace('[', '')
            col = col.replace(', ', ',')
            col_arr = col.split(' ')
            table_dict[table_name]["attributes"].setdefault(col_arr[0], {})
            table_dict[table_name]["attributes"][col_arr[0]]["type"] = col_arr[1]
            table_dict[table_name]["attributes"][col_arr[0]]["not_null"] = col.endswith("NOT ")
            table_dict[table_name]["attributes"][col_arr[0]]["primary"] = False


        pks_split = re.split("PRIMARY KEY(.*?)CLUSTERED", table_attrs)
        if len(pks_split) > 1:
            pks = re.split("PRIMARY KEY(.*?)CLUSTERED", table_attrs)[-1]
            pks = re.split("\)",pks)[0]
            pks = pks.replace("(", "")
            pks_list = pks.split(",")
            for pk in pks_list:
                pk = pk.lstrip()
                pk = pk.rstrip()
                pk = pk.replace("]", "")
                pk = pk.replace("[", "")
                pk_name, pk_sort = pk.split(" ")
                table_dict[table_name]["attributes"][pk_name]["primary"] = True

    return table_dict


def parse_relations(relations_sql_list):
    relations_list = []
    for relation in relations_sql_list:
        child_table_name = "" + str(re.search('ALTER TABLE (.*?) WITH', relation).group(1))
        child_table_name = child_table_name.lstrip().rstrip().replace('[','').replace(']','').split('.')[1]

        split_child_parent = relation.split(" REFERENCES ")

        child_fk_name = split_child_parent[0].split("FOREIGN KEY")[1].replace('(','').replace(')','').replace('[','').replace(']','')


        parent_info = split_child_parent[1]
        parent_info_list = parent_info.split(" ")
        parent_pk = parent_info_list[1].replace('(','').replace(')','').replace('[','').replace(']','')
        parent_table = parent_info_list[0].split(".")[1].replace('[','').replace(']','')

        relations_list.append([parent_table, parent_pk, child_table_name, child_fk_name])

    return relations_list


def parse_create_script(filename):

    sql = read_sql_code(filename)
    sql_commands_list = sql.split("GO ")

    create_table_commands = [x for x in sql_commands_list if "CREATE TABLE " in x]

    foreign_key_commands = [x for x in sql_commands_list if
                            ("ALTER TABLE " in x and "ADD  CONSTRAINT" in x and "FOREIGN KEY" in x)]

    attributes_dict = parse_attributes(create_table_commands)
    relations_list = parse_relations(foreign_key_commands)

    iot.save_all_data(processed_filename=filename, attributes=attributes_dict, relations=relations_list)


if __name__ == "__main__":
    ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

    sql_filename = os.path.join(ROOT_DIR, "backup/iknow_anonymus.sql")

    parse_create_script(sql_filename)
