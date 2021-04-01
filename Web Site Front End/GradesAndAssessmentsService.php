<?php 
    require "dbinfo.php";
	
	function studentGradesQuery($student_id)
	{
		$connection = new mysqli(getdbserver(), getdbusername(), getdbpassword(), getdbdatabase());
		if($connection->connect_error)
		{
			echo "<p>Failed to connect to database</p>";
		}
		else
		{
			$query = "select Subject_ID, Grade, Feedback
			          from subject_grade
					  where subject_grade.Student_ID = ?
					  order by subject_ID DESC;";
			$statement = $connection->prepare($query);
			$statement->bind_param('s', $student_id);
			$statement->execute();
			$statement->store_result();
			$statement->bind_result($subject_id, $grade, $feedback);
		}
		
		while($statement->fetch())
		{
			echo "<tr>";
			echo "<td>".$subject_id."</td>";
			echo "<td>".$grade."</td>";
			echo "<td>".$feedback."</td>";
			echo "</tr>";
		}
		$statement->close();
		$connection->close();
	}
	
	function findClassesQuery($person_id)
	{
		$connection = new mysqli(getdbserver(), getdbusername(), getdbpassword(), getdbserver());
		if($connection->connect_error)
		{
			echo "<p>Failed to connect to database.</p>";
		}
		else
		{
			$query = "SELECT Class_Name
                      FROM class
                      WHERE Class_ID in (SELECT Class_ID
                                         FROM lesson
                                         WHERE Staff_Person_ID = ?);";
			$statement = $connection->prepare($query);
			$statement->bind_param('s', $person_id);
			$statement->execute();
			$statement->store_result();
			$statement->bind_result($Class_Name);
			
			while($statement->fetch())
			{
			}
	}
?>