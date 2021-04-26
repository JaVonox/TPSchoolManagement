<!DOCTYPE HTML>


<?php
   session_start();
   require "Scripts/dbinfo.php"
?>


<head>
  <style>
  body {
    font-size: 150%;      /* magnifies the entire page by a 1.5x scale*/
  }
  .aligned_text {
    text-align: center;
  }
  .button {
    background-color: #4472C4;
    padding: 8px 16px;
  }
  </style>
  </head>


<body>
<div class = "aligned_text">

<?php
	if (!isset($_SESSION['Login']) && !empty($_POST['UserID']) && !empty($_POST['Password'])) 
	{
		$message = '';
		$connection = new PDO("mysql:host=$dbserver;dbname=$dbdatabase", $dbusername, $dbpassword);
		if (!$connection)
		{
			// Unable to make a connection.  
			$message = 'Sorry, we couldn\'t connect to the database. Please contact your school/IT department.';
		}
		else
		{
			$our_ID = $_POST["UserID"];
			$our_Password = $_POST["Password"];
			$query = "SELECT Password FROM login where Person_ID = :id";
			$statement = $connection->prepare($query);
			// Now execute the query proving parameters for the placeholders
			$statement->execute(array(':id' => $our_ID));
			$result = $statement->fetch(PDO::FETCH_ASSOC);
			
			
			if (hash('sha256',$our_Password, false) == $result["Password"]) 
			{
				$_SESSION['Login'] = $our_ID;
			   
				//Now find if student or staff:
				$query = "SELECT Person_ID FROM student where Person_ID = :id";
				$statement = $connection->prepare($query);
				// Now execute the query proving parameters for the placeholders
				$statement->execute(array(':id' => $our_ID));
				$result = $statement->fetch(PDO::FETCH_ASSOC);
			
				//Get result and redirect to the appropriate homepage.
				if ($result) 
				{
					$_SESSION['Type'] = "Student";
					header("Location: StudentHomePage.php");
				}
				else
				{
					$_SESSION['Type'] = "Teacher";
					header("Location: TeacherHomePage.php");
				}
				
			}
			else
			{
				$message = 'Sorry, this is not the correct password.';
			}
			
			echo "<p>".$message."</p>";
			//Abort connection
			$connection = NULL;
		}
	}
	else if(isset($_SESSION['Login']))
	{
		if($_SESSION['Type'] == "Student")
		{
			header("Location: StudentHomePage.php");
		}
		else if($_SESSION['Type'] == "Teacher")
		{
			header("Location: TeacherHomePage.php");
		}
	}
?>
		 
		 
  <h2> Welcome!</h2>
  <form action="index.php" method="POST">
	  <div>Username: <input type = "text" name = "UserID" placeholder="ID"> </div>
	  <br>
	  <div>Password: <input type = "password" name = "Password" placeholder="Password"> </div>
	  <br>
	  <input class = "button" type ="button" onclick="displayMessage()" value="Forgotten Password"></input>   <!-- buttons nested between anchor tag, which is a hyperlink-->
	  <input class = "button" type = "submit" name = "submit" value = "Login" >
  </form>
  
  <script>
  function displayMessage()
  {
	alert("Please contact your school's administration team to change your password!");
  }
  </script>
</div>
</body>