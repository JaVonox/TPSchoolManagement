<?php
    require "dbinfo.php";
    session_start();
?>

<!DOCTYPE HTML>
<html lang="en">
<head>
    <title>User Session Script</title>
</head>
<body>
    <form action="" method="post">
	<label for="username">Username:</label>
	    <input type="text" id="username" name="username"><br>
		<input type="submit" value="Login">
	</form>
<?php
    if(!isset($_POST["username"]))
	{
		echo "<p>Please enter a username.</p>";
	}
	else
	{
		$connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
		
		if($connection->connect_error)
		{
			echo "<p>Failed to connect to database</p>";
		}
		else
		{
		    $query = "select Person_ID, First_Name, Last_Name, Role
			          from Person
					  where Person.Person_ID = ?;";
			$statement = $connection->prepare($query);
			$statement->bind_param('s', $_POST["username"]);
			$statement->execute();
			$statement->store_result();
			$statement->bind_result($_SESSION["Person_ID"], $_SESSION["First_Name"], $_SESSION["Last_Name"], $_SESSION["Type"]);
            
			while($statement->fetch())
			{
			    echo "<p>ID: ".$_SESSION["Person_ID"]."</p><br>";
			    echo "<p>Name: ".$_SESSION["First_Name"]." ".$_SESSION["Last_Name"]."</p><br>";
			    echo "<p>Role: ",$_SESSION["Role"]."</p><br>";
			}
			$statement->close();
			
			if($_SESSION["Type"] == "Student")
			{
				$query = "select Class_Name
				          from Class, Student
						  where Class.Class_ID = Student.Class_ID and Student.Person_ID = ?;";
                $statement = $connection->prepare($query);
				$statement->bind_param('s', $_SESSION["Person_ID"]);
				$statement->execute();
				$statement->store_result();
				$statement->bind_result($_SESSION["Student_Class"]);
				
				while($statement->fetch())
				{
					echo "<p>Class Name: ".$_SESSION["Student_Class"]."</p>";
				}
				?><a href="StudentHomePage.php">Continue</a>
			<?php
			    
			}
			else if($_SESSION["Type"] == "Teacher")
			{
				?><a href="TeacherHomePage.php">Continue</a>
			<?php
			}
			$connection->close();
		}
	}
?>
</body>
</html>
			
    