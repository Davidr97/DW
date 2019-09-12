import os
import csv
from shutil import copyfile


def save_attributes_csv(filename, data):
    with open(filename, "w+") as f:
        wr = csv.writer(f)
        for table_name, table_obj in data.items():
            for attribute_name, attribute_obj in table_obj["attributes"].items():
                wr.writerow([table_obj["schema"], table_name, attribute_name, attribute_name,
                         attribute_obj["type"], attribute_obj["primary"], attribute_obj["not_null"]])


def save_relations_csv(filename, data):
    with open(filename, "w+") as f:
        wr = csv.writer(f)
        for relation in data:
            wr.writerow(relation)



def save_all_data(processed_filename, attributes, relations):
    last_node = os.path.basename(os.path.normpath(processed_filename)).split('.')[0]

    dir_name = os.path.join(os.path.dirname(processed_filename), last_node)
    if not os.path.exists(dir_name):
        os.mkdir(dir_name)

    dir_name_models = os.path.join(dir_name, "models")
    if not os.path.exists(dir_name_models):
        os.mkdir(dir_name_models)


    save_attributes_csv(os.path.join(dir_name, "models", "attributes.csv"), attributes)
    save_relations_csv(os.path.join(dir_name, "models", "data.csv"), relations)

    copyfile(processed_filename, os.path.join(dir_name,os.path.basename(os.path.normpath(processed_filename))))