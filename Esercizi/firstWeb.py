import bottle
import pymongo

@bottle.route('/')
def index():
	# connect to db
	connection = pymongo.MongoClient('localhost', 27017)

	db = connection.test

	#handle to names collection
	names = db.names

	item = names.find_one()

	return '<b>Hello %s!</b>' % item['name']

bottle.run(host='localhost', port=8082)