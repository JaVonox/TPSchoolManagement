<!DOCTYPE html>
<?php include "Scripts/PageAccessVerify.php";
PageCheck(array("Teacher","Staff"));
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
            width: 535px;
        }
        table tr.header, table tr:hover {
            background-color: #f1f1f1;
        }

    </style>
</head>
<body>
<div class="header">

    <h1>Classrooms</h1>
    <a href="TeacherHomePage.php"><img style="float: right;" src=Picture2.png></a>


	<?php include "PageElements/LoggedInBox.php"?>

</div>

<table id="table" class="Rows">
    <thead>

    <tr>
        <th class="tableheading">Classroom</th>
        <!-- <th class="tableheading">Classes</th>-->
        <th class="tableheading">Capacity</th>
        <th class="tableheading">Location</th>
        <th><div class="InputBox">
                <input id="myInput" onkeyup="SearchFunction()" placeholder="Search for Classrooms.." style=" padding: 8px" type = "text">
                <button class ="button">Search</button>
            </div>
        </th>

    </tr>
    </thead>
    <tbody>
<?php
    $i = 0;
	$fetcher = new UserInteractionHandler();
	$classrooms = $fetcher->pullClassroomsArray();
    //Changing count number (10) changes the amount of rows. So table is dynamic to the number of records in the database
	
    while ($i < count($classrooms))
    {
        echo "<tr>";
        //Classroom
        echo "<td>".$classrooms[$i]['Classroom_Name']."</td>";
        //Classes
        //echo "<td>".$DataBaseData."</td>";
        //Capacity
        echo "<td>".$classrooms[$i]['Maximum_Capacity']."</td>";
        //Location
        echo "<td>".$classrooms[$i]['Classroom_Location']."</td>";

        echo "</tr>";
		$i++;
    }
    echo "</tbody>";
    echo "</table>";
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
