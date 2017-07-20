# README


Example basi Rails project

Rails: 5
Ruby: 2.3

Login seed:

	username: 	admin@trip.com
	password: 	qwer1234

Api two services:

	GET /api/vehicles
		Return all vehicles


	POST /api/vehicle

		params_example = {
		    "vehicle":{
		        "plate": "ABC123",
		        "color": "#FFF000",
		        "year": "1950"
		    }
		}

		Add new Vehicle in list

		NOTE: the response of api is create with [RABL](https://github.com/nesquena/rabl) 

Run test in model
	
	bundle exec rspec
	Executes 4 tests to the vehicle model, of the business rules



