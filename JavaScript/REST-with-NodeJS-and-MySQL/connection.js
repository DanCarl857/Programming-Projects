/* by: Daniel Carlson
 * Creating connection pool 
 */

var mysql = require('mysql');

function Connection() {
	this.pool = null;

	this.init = function() {
		this.pool = mysql.createPool({
			connectionLimit: 100,
			host: 'localhost',
			user: 'root',
			password: 'mysql',
			database: 'tTest'
		});
	};

	this.acquire = function(callback) {
		this.pool.getConnection(function(err, connection){
			callback(err, connection);
		});
	};
}

module.exports = new Connection();