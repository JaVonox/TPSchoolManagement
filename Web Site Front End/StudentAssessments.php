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
        table.paleBlueRows td {
            width: 325px;
        }
        .buttonLogOut {
            background-color: lightblue;
            padding: 3px 8px;
            margin-right: 100%;
        }
    </style>
</head>
<body>
<div class="header">

    <h1>Assessments<a href="StudentHomePage.php"><img style="float: right;" src=Picture2.png></a></h1>

	<?php include "PageElements/LoggedInBox.php"?>

</div>
<table class="paleBlueRows">
    <thead>
    <tr>
        <th class="tableheading">Name</th>
        <th class="tableheading">Type</th>
        <th class="tableheading">Class</th>
        <th class="tableheading">Date Assigned</th>
        <th class="tableheading">Date Due</th>
        <th class="tableheading">Date Extension</th>
        <th class="tableheading">Duration</th>
        <th class="tableheading">Grade</th>
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
        //Name
        echo "<td>".$DataBaseData."</td>";
        //Type
        echo "<td>".$DataBaseData."</td>";
        //Class
        echo "<td>".$DataBaseData."</td>";
        //Date Assigned
        echo "<td>".$DataBaseData."</td>";
        //Date Due
        echo "<td>".$DataBaseData."</td>";
        //Date Extension
        echo "<td>".$DataBaseData."</td>";
        //Duration
        echo "<td>".$DataBaseData."</td>";
        //Grade
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