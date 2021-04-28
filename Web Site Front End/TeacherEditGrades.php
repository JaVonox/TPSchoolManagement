<?php 
    require "Scripts/PageAccessVerify.php";
	require "Scripts/PullUserData.php";
	require "Scripts/GradesAndAssessmentsService.php";
	PageCheck(array("Teacher"));
	
	$student_name;
	$first_name;
	$last_name;
	$class_id;
	
	if(isset($_GET['Name']))
	{
		$student_name = $_GET['Name'];
		$student_name_array = explode(" ", $student_name);
		$first_name = $student_name_array[0];
		$last_name = $student_name_array[1];
	}
	if(isset($_GET['Class']))
	{
		$class_id = $_GET['Class'];
	}
	
?>
<!DOCTYPE html>
<html lang="English">
<head>
    <style>
        <?php include "CSS/Header.css"?>
        .buttonLogOut {
            background-color: lightblue;
            padding: 3px 8px;
            margin-right: 100%;
        }

        body {
            margin: 0;
        }
        .PersonDetails {
            text-align: left;
            font-size: 12px;
        }
        .button {
            background-color: #4472C4;
            padding: 8px 16px;
        }
        table.Rows {
            border: 1px solid #FFFFFF;
            width: 100%;
            text-align: center;
            margin-top: 1%;
            border-collapse: collapse;
        }
        table.Rows thead {
            border-bottom: 1px solid cornflowerblue;
        }
        table.Rows thead th.tableheading {
            font-size: 20px;
            font-weight: bold;
            text-align: center;
        }
        table.Rows td {
            width: 270px;
        }
        table tr.header, table tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
<script>




</script>
<div class="header">

    <h1>Edit Grades</h1>
    <a href="TeacherHomePage.php"><img style="float: right;" src=Picture2.png></a>
	<?php include "PageElements/LoggedInBox.php"; ?>

</div>
<h1><?php echo $student_name; ?></h1>
<table id="table" class="Rows">
    <thead>
    <tr>
        <th class="tableheading">Subject</th>
        <th class="tableheading">Level</th>
		<th class="tableheading">Number of Exams</th>
        <th class="tableheading">Grade</th>
    </tr>
    </thead>
    <tbody>
	    <form action="" method="post">
        <?php 
		    if(isset($_POST['submitButton']))
			{
				for($i = 1; $i < 16; $i++)
				{
					$str = "'" . (string)$i. "'";
					
					if(isset($_POST[$i]))
					{
						updateSubjectGrades($first_name, $last_name, $i, $_POST[$i]);
					}
				}
				echo "<p>Grades have been updated.</p>";
			}
			
			$arr = GetGrades($first_name, $last_name);
			for($i = 0; $i < count($arr["Name"]); $i++)
			{
				echo "<tr>";
				//Subject Name
				echo "<td>".$arr["Name"][$i]."</td>";
				//Level
				echo "<td>".$arr["Level"][$i]."</td>";
				//Subject Name
				echo "<td>".$arr["Exams"][$i]."</td>";
				//Grade
				echo "<td>"."<input type='text' id='" . $arr["SubjectID"][$i] . "' name= '" . $arr["SubjectID"][$i] . "' value='".$arr["Grade"][$i]."'>"."</td>";
				echo "</tr>";
				
			}
			?>
		<input type="submit" name="submitButton" value="Submit Changes">
		</form>
    </tbody>
	
</body>
</html>