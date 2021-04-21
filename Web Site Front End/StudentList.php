<!DOCTYPE html>
<?php 
include "Scripts/PageAccessVerify.php";
PageCheck(array("Staff","Teacher"));

$focusStudent = "";
isset($_GET['Focus']) ? $focusStudent = $_GET['Focus'] : $focusStudent="";
?>
<html lang="English">
<head>
    <style>
        <?php include "CSS/Header.css"?>

        body {
            margin: 0;

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
            width: 400px;
        }
        table tr.header, table tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
<div class="header">

    <h1>Student List</h1>
    <a href="TeacherHomePage.php"><img style="float: right;" src=Picture2.png></a>
	<?php include "PageElements/LoggedInBox.php"?>

</div>

<table id="table" class="Rows">
    <thead>

    <tr>
        <th class="tableheading">Student ID</th>
        <th class="tableheading">Full Name</th>
        <th class="tableheading">Year</th>
        <th class="tableheading">Class</th>
        <th><div class="InputBox">
                <input id="myInput" onkeyup="SearchFunction()" placeholder="Search for names.." style=" padding: 8px" type = "text" value="<?php echo $focusStudent;?>">
                <button class ="button">Search</button>
            </div>
        </th>

    </tr>
    </thead>
    <tbody>
    <?php
    $DataBaseData = 0;

	$dataGetter = new UserInteractionHandler();
	$studentsArray = $dataGetter->PullStudentsArray();

    //Changing count number (10) changes the amount of rows. So table is dynamic to the number of records in the
    //database
	$i = 0;
    while ($i < count($studentsArray))
    {
        echo "<tr>";
        //Student ID
        echo "<td>".$studentsArray[$i]['Person_ID']."</td>";
        //Full Name
        echo "<td>".$studentsArray[$i]['First_Name']." ". $studentsArray[$i]['Last_Name'] ."</td>";
        //Year
        echo "<td>".$studentsArray[$i]['Class_Year']."</td>";
        //Optional Subjects
        echo "<td>".$studentsArray[$i]['Class_Name']."</td>";

        echo "</tr>";
		$i++;
    }
    echo "</tbody>";
    echo "</table>";
    ?>
    </tbody>
    <script>
		
	var focusInput = "<?php echo $focusStudent;?>";
	
	if(focusInput != "") //If a parameter has been provided, limit to just this parameter.
	{
		SearchExactMatch();
	}
	
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
	
	function SearchExactMatch()
	{
		var input, filter, table, tr, td, i, txtValue;
		input = document.getElementById("myInput");
		filter = input.value.toUpperCase();
		table = document.getElementById("table");
		tr = table.getElementsByTagName("tr");
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[0];
			if (td) {
				txtValue = td.textContent || td.innerText;
				if (txtValue.toUpperCase() == filter) {
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
