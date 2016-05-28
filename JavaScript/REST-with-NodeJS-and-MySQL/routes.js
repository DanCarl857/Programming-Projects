var starter = require('../models/starter');

module.exports = {
	configure: function(app){
		app.get('/starter/', function(req, res){
			starter.get(res);
		});

		app.post('/starter/', function(req, res){
			starter.create(req.body, res);
		});

		app.put('/stater/', function(req, res){
			starter.update(req.body, res);
		});

		app.delete('/starter/:id/', function(req, res){
			starter.delete(req.params.id, res);
		});
	}
};