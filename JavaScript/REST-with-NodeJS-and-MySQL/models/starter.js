/* by: Daniel Carlson */
var connection = require('../connection');

function Starter() {
	this.get = function(res){
		connection.acquire(function(err, con){
			con.query('select * from users', function(err, result){
				con.release();
				res.send(result);
			});
		});
	};

	this.create = function(user, res){
		connection.acquire(function(err, con){
			con.query('insert into users set ?',user, function(err, result){
				con.release();
				if(err){
					res.send({status: 1, message: 'User creation failed'});
				} else {
					res.send({status: 0, message: 'User creation successfull'});
				}
			});
		});
	};

	this.update = function(user, res){
		connection.acquire(function(err, con){
			con.query('update users set ? where id = ?', [user, user.id], function(err, result){
				con.release();
				if(err){
					res.send({status: 1, message: 'User update failed'});
				} else {
					res.send({status: 0, message: 'User update successful'});
				}
			});
		});
	};

	this.delete = function(id, res){
		connection.acquire(function(err, con){
			con.query('delete from users where id = ?', [id], function(err, result){
				con.release();
				if(err){
					res.send({status: 1, message: 'Failed to delete'});
				} else {
					res.send({status: 0, message: 'Deleted successfully'});
				}
			});
		});
	};
}

module.exports = new Starter();