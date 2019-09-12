from flask_restful import Resource, reqparse
from .Query import Query

queryHandler = Query()
parser = reqparse.RequestParser()
parser.add_argument('input', help='The sentance that needs to be processed')

class ProcessQuery(Resource):
	def post(self):
		args = parser.parse_args()
		inputSentance = args['input']
		return queryHandler.processQuery(inputSentance)
