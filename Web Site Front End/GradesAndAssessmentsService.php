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
		$connection = new mysqli(getdbserver(), getdbusername(), getdbpassword(), getdbdatabase());
		if($connection->connect_error)
		{
			echo "<p>Failed to connect to database.</p>";
		}
		else
		{
			$query = "SELECT Class_ID
                      FROM Lesson, Person
                      WHERE Staff_Person_ID = ? AND Staff_Person_ID = Person.Person_ID;";
			$statement = $connection->prepare($query);
			$statement->bind_param('s', $person_id);
			$statement->execute();
			$statement->store_result();
			$statement->bind_result($Class_ID);
			
			$Class_IDs = array();
			$Class_Names = array();
			$Student_Names = array();
			$Total_Count = 0;
			$Index_Positions = array(0);
			
			while($statement->fetch())
			{
				$Class_IDs[] = $Class_ID;
				echo "<p>".$Class_ID."</p>";
			}
			$statement->close();
			for($i = 0; $i < count($Class_IDs); $i++)
			{
				$query2 = "SELECT Class_Name
				           FROM Class
						   WHERE Class_ID = ?;";
				$statement2 = $connection->prepare($query2);
				$statement2->bind_param('s', $Class_IDs[$i]);
				$statement2->execute();
				$statement2->store_result();
				$statement2->bind_result($Class_Name);

				while($statement2->fetch())
				{
					$Class_Names[] = $Class_Name;
					echo"<p>".$Class_Name."</p>";
				}
		    }
			$statement2->close();
			for($i = 0; $i < count($Class_IDs); $i++)
			{
			    $query3 = "SELECT First_Name, Last_Name
                           From Person, Student
                           Where Person.Person_ID = student.Person_ID and student.Class_ID = ?;";
				$statement3 = $connection->prepare($query3);
				$statement3->bind_param('s', $Class_IDs[$i]);
				$statement3->execute();
				$statement3->store_result();
				$statement3->bind_result($First_Name, $Last_Name);
				$Current_Count = 0;
				
				while($statement3->fetch())
				{
					$Student_Names[$Total_Count + $Current_Count] = $First_Name." ".$Last_Name;
					echo "<p>".$First_Name." ".$Last_Name."</p>";
					$Current_Count++;
				}
				$Total_Count = $Total_Count + $Current_Count;
				$Index_Positions[$i + 1] = $Total_Count;
			}
			$statement3->close();
			$Index_Positions[$Total_Count - 1] = $Total_Count + 1;
			for($i = 0; $i < count($Class_IDs); $i++)
			{
				?><a href='#nav<?php echo $i; ?>'><div class ="dropdownClass">Class <?php echo $Class_Names[$i]; ?></div></a>
				<div class="expand grid-item" id="nav<?php echo $i; ?>">
				<?php
				for($j = $Index_Positions[$i]; $j < $Index_Positions[$i + 1]; $j++)
				{
					?><div class="dropdownElement"><?php echo $Student_Names[$j]; ?></div>
					<div class="dropdownElementEdit"><a href="TeacherEditGrades.php">Edit Grade</a></div>
					<?php
				}
				?>
				</div>
				<?php
			}
			$connection->close();
		}				
		
	}
	
	function findStudentAssessments($person_id)
	{
		$connection = new mysqli(getdbserver(), getdbusername(), getdbpassword(), getdbdatabase());
		if($connection->connect_error)
		{
			echo "<p>Failed to connect to database.</p>";
		}
		else
		{
			$query = "SELECT Assessment_ID, Grade
			          FROM Assessment_Grade
					  WHERE Student_ID = ?";
			$statement = $connection->prepare($query);
			$statement->bind_param('s', $person_id);
			$statement->execute();
			$statement->store_result();
			$statement->bind_result($Assessment_ID, $Grade);
		}
	}
?>