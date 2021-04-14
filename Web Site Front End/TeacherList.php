<?php
    require "Scripts/PageAccessVerify.php";
    require "Scripts/dbinfo.php";
	require "Scripts/PullUserData.php";
	PageCheck(array("Teacher"));
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
        .PersonDetails {
            text-align: left;
            font-size: 12px;
        }
        body {
            margin: 0;

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
            width: 325px;
        }
        table tr.header, table tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
<div class="header">

    <h1>Teacher List</h1>
    <a href="StaffHomePage.php"><img style="float: right;" src=Picture2.png></a>
	<?php include "PageElements/LoggedInBox.php"?>

</div>

<table id="table" class="Rows">
    <thead>

    <tr>
        <th class="tableheading">Teacher ID</th>
        <th class="tableheading">Full Name</th>
        <th class="tableheading">Classes</th>
        <th class="tableheading">Subjects</th>
        <th class="tableheading">Salary</th>
        <th><div class="InputBox">
                <input id="myInput" onkeyup="SearchFunction()" placeholder="Search for names.." style=" padding: 8px" type = "text">
                <button class ="button">Search</button>
            </div>
        </th>

    </tr>
    </thead>
    <tbody>
    <?php
    $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
	
	if($connection->connect_error)
	{
		echo "<p>Failed to connect to database.</p>";
	}
	else
	{
		$ASSOCIATIVE_ARRAY = array();
		$query = "SELECT Person.Person_ID, First_Name, Last_Name, Salary
                  FROM Person, Staff
                  WHERE Person.Person_ID = Staff.Person_ID;";
		
		$statement = $connection->prepare($query);
		$statement->execute();
		$statement->store_result();
		$statement->bind_result($person_id, $first_name, $last_name, $salary);
		
		$i = 0;
		while($statement->fetch())
		{
			$ASSOCIATIVE_ARRAY["person_id"][$i] = $person_id;
			$ASSOCIATIVE_ARRAY["first_name"][$i] = $first_name;
			$ASSOCIATIVE_ARRAY["last_name"][$i] = $last_name;
			$ASSOCIATIVE_ARRAY["salary"][$i] = $salary;
			$i++;
		}
		$statement->close();
		
		$query2 = "SELECT Class_ID, Subject_ID
		           FROM Lesson
				   WHERE Staff_Person_ID = ?;";
		
		for($i = 0; $i < count($ASSOCIATIVE_ARRAY["person_id"]); $i++)
		{
			$statement2 = $connection->prepare($query2);
			$statement2->bind_param('s', $ASSOCIATIVE_ARRAY["person_id"][$i]);
			$statement2->execute();
			$statement2->store_result();
			$statement2->bind_result($class_id, $subject_id);
			
			while($statement2->fetch())
			{
		        $ASSOCIATIVE_ARRAY["class_id_of_".$ASSOCIATIVE_ARRAY["person_id"][$i]][$i] = $class_id;
                $ASSOCIATIVE_ARRAY["subject_id_of_".$ASSOCIATIVE_ARRAY["person_id"][$i]][$i] = $subject_id;
			}
			$statement2->close();
		}
		for($i = 0; $i < count($ASSOCIATIVE_ARRAY["person_id"]); $i++)
        {
            echo "<tr>";
            //Teacher ID
            echo "<td>".$ASSOCIATIVE_ARRAY["person_id"][$i]."</td>";
            //Full Name
            echo "<td>".$ASSOCIATIVE_ARRAY["first_name"][$i]." ". $ASSOCIATIVE_ARRAY["last_name"][$i]."</td>";
            //Classes
			$class_list = "";
			for($j = 0; $j < count($ASSOCIATIVE_ARRAY["class_id_of_".$ASSOCIATIVE_ARRAY["person_id"][$i]]); $j++)
			{
				if($j == 0)
				{
					$class_list = $ASSOCIATIVE_ARRAY["class_id_of_".$ASSOCIATIVE_ARRAY["person_id"][$i]][$i];
				}
				else
				{
				    $class_list = $class_list.", ".$ASSOCIATIVE_ARRAY["class_id_of_".$ASSOCIATIVE_ARRAY["person_id"][$i]][$i];
				}
			}
			echo "<td>".$class_list."</td>";
            //Subjects
			$subject_list = "";
			for($j = 0; $j < count($ASSOCIATIVE_ARRAY["subject_id_of_".$ASSOCIATIVE_ARRAY["person_id"][$i]]); $j++)
			{
				if($j == 0)
				{
					$subject_list = $ASSOCIATIVE_ARRAY["subject_id_of_".$ASSOCIATIVE_ARRAY["person_id"][$i]][$i];
				}
				else
				{
				    $subject_list = $subject_list.", ".$ASSOCIATIVE_ARRAY["subject_id_of_".$ASSOCIATIVE_ARRAY["person_id"][$i]][$i];
				}
			}
            echo "<td>".$subject_list."</td>";
            //Salary
            echo "<td>£".$ASSOCIATIVE_ARRAY["salary"][$i]."</td>";

            echo "</tr>";
        }
        echo "</tbody>";
        echo "</table>";
	}
    
    ?>
    </tbody>
    <script>
        //Searches first column in table
        function SearchFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("table");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[0];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
    </script>
</body>
</html>
