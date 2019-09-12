from flask_restful import Resource
from .Script import Script

scriptHandler = Script()

class ScriptDispatcher(Resource):
	
	def post(self):
		return scriptHandler.saveScriptToDatabase()