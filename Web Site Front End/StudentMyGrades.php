<!DOCTYPE html>
<html lang="English">
<head>
    <style>
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
        table.paleBlueRows {
            font-family: "Times New Roman", Times, serif;
            border: 1px solid #FFFFFF;
            width: 100%;
            height: 200px;
            text-align: center;
            border-collapse: collapse;
        }
        table.paleBlueRows td, table.paleBlueRows th {
            border: 1px solid #FFFFFF;
            padding: 3px 2px;
        }
        table.paleBlueRows tbody td {
            font-size: 13px;
        }
        table.paleBlueRows tr:nth-child(even) {
            background: #D0E4F5;
        }
        table.paleBlueRows thead {
            background: #0B6FA4;
            border-bottom: 5px solid #FFFFFF;
        }
        table.paleBlueRows thead th {
            font-size: 17px;
            font-weight: bold;
            color: #FFFFFF;
            text-align: center;
            border-left: 2px solid #FFFFFF;
        }
        table.paleBlueRows thead th:first-child {
            border-left: none;
        }

        table.paleBlueRows tfoot {
            font-size: 14px;
            font-weight: bold;
            color: #333333;
            background: #D0E4F5;
            border-top: 3px solid #444444;
        }
        table.paleBlueRows tfoot td {
            font-size: 14px;
        }
    </style>
</head>
<body>
<div class="header">

    <h1>My Grades<a href="StudentHomePage.html"><img style="float: right;" src=Picture2.png></a></h1>

    <p class="PersonDetails">Person_Name</p>
    <p class="PersonDetails">Year 9</p>
    <p class="PersonDetails">Class 9f</p>

</div>
<table class="paleBlueRows">
    <thead>
    <tr>
        <th class="tableheading">Subject</th>
        <th class="tableheading">Grade</th>
        <th class="tableheading">Date Assigned</th>
        <th class="tableheading">Teacher</th>
        <th class="tableheading">Comments</th>
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
            //Subject
            echo "<td>".$DataBaseData."</td>";
            //Grade
            echo "<td>".$DataBaseData."</td>";
            //Date Assigned
            echo "<td>".$DataBaseData."</td>";
            //Teacher
            echo "<td>".$DataBaseData."</td>";
            //Comments
            echo "<td>".$DataBaseData."</td>";
            echo "</tr>";
        }
        echo "</tbody>";
        echo "</table>";
?>
</tbody>
</html>