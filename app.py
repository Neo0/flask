#coding=utf-8

import json
from flask import Flask,request,render_template

app = Flask(__name__)

def send_ok_json(data=None):
	if not data:
		data={}
	ok_json = {'ok':True,'reason':'','data':data}
	return json.dumps(ok_json)

@app.route('/data/get/',methods=['GET'])
def data_get():
	user = request.args.get('user')
	password = request.args.get('password')
	ret = '%s**%s**%s' %(user,password,'get')
	return send_ok_json(ret)

@app.route('/data/post/',methods=['POST'])
def data_post():
	user = request.values.get('user')
	password = request.values.get('password')
	ret = '%s**%s**%s' %(user,password,'post')
	return send_ok_json(ret)
if __name__=="__main__":
	app.run(host='115.28.88.190',port=8000,debug=True)

