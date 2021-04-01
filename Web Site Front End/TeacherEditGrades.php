<!DOCTYPE html>
<?php include "Scripts/PageAccessVerify.php";
PageCheck(array("Teacher"));
?>
<html lang="English">
<head>
    <style>
        .buttonLogOut {
            background-color: lightblue;
            padding: 3px 8px;
            margin-right: 100%;
        }
        .header {
            background-color: #4472C4;
            padding: 20px;
            text-align: center;
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
<div class="header">

    <h1>Edit Grades<a href="TeacherHomePage.php"><img style="float: right;" src=Picture2.png></a></h1>

	<?php include "PageElements/LoggedInBox.php"?>

</div>
<table id="table" class="Rows">
    <thead>

    <tr>
        <th class="tableheading">Name</th>
        <th class="tableheading">Subject</th>
        <th class="tableheading">Level</th>
        <th class="tableheading">Duration</th>
        <th class="tableheading">Marks</th>
        <th class="tableheading">Grade</th>
        <th><div class="InputBox">
                <input id="myInput" onkeyup="SearchFunction()" placeholder="Search for names.." style=" padding: 8px" type = "text">
                <button class ="button">Search</button>
            </div>
        </th>

    </tr>
    </thead>
    <tbody>
    <?php
    $DataBaseData = 0;
    //Changing count number (10) changes the amount of rows. So table is dynamic to the number of records in the
    //database
    while ($DataBaseData < 10)
    {
        $DataBaseData = $DataBaseData + 1;
        echo "<tr>";
        //Name
        echo "<td>".$DataBaseData."</td>";
        //Subject
        echo "<td>".$DataBaseData."</td>";
        //Level
        echo "<td>".$DataBaseData."</td>";
        //Duration
        echo "<td>".$DataBaseData."</td>";
        //Marks
        echo "<td>".$DataBaseData."</td>";
        //Grade *Contenteditable allows editing of the field in the table
        echo "<td><div contenteditable>".$DataBaseData."</div></td>";

        echo "</tr>";
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