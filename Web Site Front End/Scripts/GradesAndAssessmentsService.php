<?php 
	
	function studentGradesQuery($student_id)
	{
		require "Scripts/dbinfo.php";
			
		$connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
		if($connection->connect_error)
		{
			echo "<p>Failed to connect to database</p>";
		}
		else
		{
			$query = "select Subject.Subject_Name, Grade, Feedback
			          from subject_grade, subject
					  where subject_grade.Student_ID = ?
					  AND Subject_Grade.Subject_ID = Subject.Subject_ID
					  order by Subject.subject_ID DESC;";
			$statement = $connection->prepare($query);
			$statement->bind_param('s', $student_id);
			$statement->execute();
			$statement->store_result();
			$statement->bind_result($subject_Name, $grade, $feedback);
		}
		
		while($statement->fetch())
		{
			echo "<tr>";
			echo "<td>".$subject_Name."</td>";
			echo "<td>".$grade."</td>";
			echo "<td>".$feedback."</td>";
			echo "</tr>";
		}
		$statement->close();
		$connection->close();
	}
	
	function findClassesQuery($person_id)
	{
	    require "Scripts/dbinfo.php";
		
		$connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
		if($connection->connect_error)
		{
			echo "<p>Failed to connect to database.</p>";
		}
		else
		{
			$query = "SELECT DISTINCT Class_ID
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
					<div class="dropdownElementEdit"><a href="TeacherEditGrades.php?Name=<?php echo $Student_Names[$j]; ?>&Class=<?php echo $Class_IDs[$i]; ?>">Edit Grade</a></div>
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
		require "Scripts/dbinfo.php";
			
		$ASSOCIATIVE_ARRAY = array();
		$connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
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
			
			$i = 0;
			while($statement->fetch())
			{
				$ASSOCIATIVE_ARRAY["Assessment_ID"][$i] = $Assessment_ID;
				$ASSOCIATIVE_ARRAY["Grade"][$i] = $Grade;
				
				$i++;
			}
			$statement->close();
			
			for($i = 0; $i < count($ASSOCIATIVE_ARRAY["Assessment_ID"]); $i++)
			{
			    $query = "SELECT Assessment_Name, Assessment_Type, Class_ID, Date_Assigned, Date_Due, Date_Extension, Duration, Teacher_Comments
                          FROM Assessment
                          WHERE Assessment_ID = ?";
			    $statement2 = $connection->prepare($query);		  
			    $statement2->bind_param('s', $ASSOCIATIVE_ARRAY["Assessment_ID"][$i]);
			    $statement2->execute();
			    $statement2->store_result();
			    $statement2->bind_result($A_Name, $A_Type, $C_ID, $D_Assigned, $D_Due, $D_Extension, $Duration, $T_Comments);
			
			    while($statement2->fetch())
			    {
				    $ASSOCIATIVE_ARRAY["Assessment_Name"][$i] = $A_Name;
				    $ASSOCIATIVE_ARRAY["Assessment_Type"][$i] = $A_Type;
				    $ASSOCIATIVE_ARRAY["Class_ID"][$i] = $C_ID;
				    $ASSOCIATIVE_ARRAY["Date_Assigned"][$i] = $D_Assigned;
				    $ASSOCIATIVE_ARRAY["Date_Due"][$i] = $D_Due;
				    $ASSOCIATIVE_ARRAY["Date_Extension"][$i] = $D_Extension;
				    $ASSOCIATIVE_ARRAY["Duration"][$i] = $Duration;
				    $ASSOCIATIVE_ARRAY["Teacher_Comments"][$i] = $T_Comments;
			    }
			    $statement2->close();
			}
			
			$query = "SELECT Class_Name
			          FROM Class
					  WHERE Class_ID = ?";
			$statement3 = $connection->prepare($query);
			$statement3->bind_param('s', $ASSOCIATIVE_ARRAY["Class_ID"][0]);
			$statement3->execute();
			$statement3->store_result();
			$statement3->bind_result($Class_Name);
			
			while($statement3->fetch())
			{
				$ASSOCIATIVE_ARRAY["Class_Name"] = $Class_Name;
			}
			
			$statement3->close();
			
			for($i = 0; $i < count($ASSOCIATIVE_ARRAY["Assessment_ID"]); $i++)
			{
				echo "<tr>";
                //Name
                echo "<td>".$ASSOCIATIVE_ARRAY["Assessment_Name"][$i]."</td>";
                //Type
                echo "<td>".$ASSOCIATIVE_ARRAY["Assessment_Type"][$i]."</td>";
                //Class
                echo "<td>".$ASSOCIATIVE_ARRAY["Class_Name"]."</td>";
                //Date Assigned
                echo "<td>".$ASSOCIATIVE_ARRAY["Date_Assigned"][$i]."</td>";
                //Date Due
                echo "<td>".$ASSOCIATIVE_ARRAY["Date_Due"][$i]."</td>";
                //Date Extension
                echo "<td>".$ASSOCIATIVE_ARRAY["Date_Extension"][$i]."</td>";
                //Duration
                echo "<td>".$ASSOCIATIVE_ARRAY["Duration"][$i]."</td>";
                //Grade
                echo "<td>".$ASSOCIATIVE_ARRAY["Grade"][$i]."</td>";
                //Comments
                echo "<td>".$ASSOCIATIVE_ARRAY["Teacher_Comments"][$i]."</td>";
                echo "</tr>";
			}
		}
	}
	function updateSubjectGrades($first, $second, $Subject, $grade)
	{
		require "Scripts/dbinfo.php";
		
		$connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
		$Associative = array();
		
		if($connection->connect_error)
		{
			echo "<p>Failed to connect to database</p>";
		}
		else
		{   
			$updateQuery = "UPDATE subject_grade
				            SET Grade = ?
							WHERE Student_ID = (SELECT Person_ID FROM Person WHERE First_Name = ? AND Last_Name = ?)
							AND Subject_ID = ?;";
							
		    $statement = $connection->prepare($updateQuery);
			$statement->bind_param("issi", $grade, $first, $second, $Subject);
			$result = $statement->execute();
			if ($result == FALSE)
				{
					echo "<p>There has been an error</p>";
				}
			$statement->close();
			$connection->close();
		}
	}
	
	function GetGrades($first, $second)
	{
		require "Scripts/dbinfo.php";
		
		$connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
		$Associative = array();
		
		if($connection->connect_error)
		{
			echo "<p>Failed to connect to database</p>";
		}
		else
		{   
			$Associative = array();
		    $statement = $connection->prepare("SELECT subject_grade.Grade, subject.Subject_ID, subject.Subject_Name, subject.Level, subject.Number_Of_Exams
					FROM subject_grade, Subject
					WHERE Subject_grade.Student_ID = (SELECT Person_ID FROM Person WHERE First_Name = ? AND Last_Name = ?)
					AND subject.Subject_ID = subject_grade.Subject_ID;");
			$statement->bind_param("ss", $first, $second);
			$statement->execute();
			$statement->store_result();
			$statement->bind_result($grade, $subid, $name, $level, $exams);
			$i = 0;
			while($statement->fetch())
			{
				$Associative["Name"][$i] = $name;
				$Associative["Grade"][$i] = $grade;
				$Associative["SubjectID"][$i] = $subid;
				$Associative["Level"][$i] = $level;
				$Associative["Exams"][$i] = $exams;
				$i++;
			}
		}
		$connection->close();
		return $Associative;
	}
?>