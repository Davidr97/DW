import random

class Query():
	def __init__(self):
		return None

	def get_random_tables(self):
		columns = random.randint(5,10)
		rows = random.randint(10, 100)

		mapColumn =lambda col: 'Column' + str(col)
		mapRow = lambda row, col: 'Row' + str(row) + "-" + mapColumn(col)

		data = {
		'headers': {}, 
		'rows': {}
		}
		
		for col in range(1, columns+1):
				data['headers'][col] = mapColumn(col)

		for row in range(1, rows+1):
			rowItem = {}
			for col in range(1, columns+1):
				rowItem[col] = mapRow(row, col)
			data['rows'][row] = rowItem
		return data

	def processQuery(self, sentance):
		return {
			"sentance": sentance
		}

	def executeQuery(self, query):
		return self.get_random_tables()