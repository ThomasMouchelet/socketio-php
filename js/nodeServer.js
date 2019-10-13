var socket = require( 'socket.io' );
var express = require( 'express' );
var http = require( 'http' );

var app = express();
app.use(function(req, res, next) {
	res.header("Access-Control-Allow-Origin", "*");
	res.header("Access-Control-Allow-Headers", "X-Requested-With");
	res.header("Access-Control-Allow-Headers", "Content-Type");
	res.header("Access-Control-Allow-Methods", "PUT, GET, POST, DELETE, OPTIONS");
	next();
});
var server = http.createServer( app );
var allowedOrigins = "http://localhost:* http://127.0.0.1:*";
var io = socket.listen( server ,{origins:allowedOrigins});

io.sockets.on( 'connection', function( client ) {
	console.log( "New client !" );
	
	client.on( 'message', function( data ) {
		io.sockets.emit( 'message', { name: data.name, message: data.message, usuario: data.usuario } );
	});
	client.on( 'notification', function( data ) {
		console.log(data);
		io.sockets.emit( 'notification', { 
			user: data.idUser,
			notifications: data.notification,
			tarea:data.tarea,
			comentario:data.comentario,
			nombrUser:data.nombrUser } );
	});
	
});

server.listen( 8080 );