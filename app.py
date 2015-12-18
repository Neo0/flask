#!venv/bin/python
from flask import Flask, jsonify

app = Flask(__name__)


task = [
	{
		'id':1,
		'title': u'Buy groceries',
		'description':u'Milk,Cheese,Pizza,Fruit,Tylenol',
		'done':False
	},
	{
		'id':2,
		'tile':u'Need to find a good Python tutorial on the web',
		'done':False
	}

]


@app.route('/todo/api/v1.0/tasks',methods=['GET'])
def get_task():
	return jsonify({'task':task})


if __name__== '__main__':
	app.run(debug=True)

