<?php 
	include_once( dirname( __FILE__ ) . '/class/Database.class.php' );
	$pdo = Database::getInstance()->getPdoObject();
?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta content="width=device-width, initial-scale=1.0" name="viewport">
		
		<title>NodeJS + PHP</title>
	
		<link rel="stylesheet" href="css/bootstrap.css" />
		<style type="text/css">body { padding-top: 60px; }</style>
		<link rel="stylesheet" href="css/bootstrap-responsive.css" />
		<link rel="stylesheet" type="text/css" href="css/jquery.gritter.css">
		
		<link rel="stylesheet" href="css/index.css" />
	</head>

	<body>
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="brand" href="index.php">NodeJS_PHP</a>
				<p class="navbar-text navbar-right">Tareas Asignadas <a href="#" class="navbar-link">
					
				</a>
				<span class="label label-warning notification" data-cliente="<?php echo $_GET['iduser'] ?>">0</span>
				</p>
				</div>

			</div>

		</div>
		
		<div class="container">
			<h1>Integracion PHP + Node JS</h1>
			<p>
				
			</p>

			<div class="alert">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<strong id="notification" class="notification" data-cliente="<?php echo $_GET['iduser'] ?>">Title!</strong>
			</div>
			<form class="form-inline" id="messageForm">
				<input id="nameInput" type="text" class="input-medium" placeholder="Tarea" />
				<input id="messageInput" type="text" class="input-xxlarge" placeHolder="Comentario" />
				<select name="usuario" id="usuario" class="form-control" required="required">
					<option value="0">Selecione Usuario</option>
					<option value="1">Andres</option>
					<option value="2">Jose</option>
					<option value="3">Luisa</option>
				</select>
			
				<input type="submit" value="Send" />
			</form>
			
			<div>
				<ul id="messages">
					<?php 
						$query = $pdo->prepare( 'SELECT * FROM message ORDER BY id DESC' );
						$query->execute();
						
						$messages = $query->fetchAll( PDO::FETCH_OBJ );
						foreach( $messages as $message ):
					?>
						<li> <strong><?php echo $message->tarea; ?></strong> : <?php echo $message->comentario; ?> de : <?php  echo $message->Nombre;  ?> </li>
					<?php endforeach; ?>
				</ul>
			</div>
			<!-- End #messages -->
			
		</div>
		
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" ></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/node_modules/socket.io-client/dist/socket.io.js"></script>
		<script type="text/javascript" src="js/jquery.gritter.min.js"></script>
		<script src="js/nodeClient.js"></script>
	</body>
</html>