from flask_restful import Resource, reqparse
from .Query import Query

queryHandler = Query()
parser = reqparse.RequestParser()
parser.add_argument('query', help='The query that needs to be executed')

class ExecuteQuery(Resource):
	def post(self):
		args = parser.parse_args()
		query = args['query']
		return queryHandler.executeQuery(query)