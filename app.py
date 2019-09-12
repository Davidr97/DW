from flask import Flask, request
from flask_restful import Resource, Api
from models.ScriptDispatcher import ScriptDispatcher
from models.ProcessQuery import ProcessQuery
from models.ExecuteQuery import ExecuteQuery

app = Flask(__name__)
api = Api(app)

api.add_resource(ScriptDispatcher, '/sendDatabaseScipt')
api.add_resource(ProcessQuery, '/processInput')
api.add_resource(ExecuteQuery, '/executeQuery')	

if __name__ == '__main__':
    app.run(debug=True)