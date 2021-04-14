<?php
    require "Scripts/PageAccessVerify.php";
    require "Scripts/GradesAndAssessmentsService.php";
    require "Scripts/PullUserData.php";
	
	PageCheck(array("Student"));
	
	$dataGetter = new UserInteractionHandler();
	$info = $dataGetter->PullStudentDetails($_SESSION['Login'], $_SESSION['Type']);
?>

<!DOCTYPE html>
<html lang="English">
<head>
    <style>
        <?php include "CSS/Header.css"?>

        body {
            margin: 0;
        }

        .PersonDetails {
            text-align: left;
            font-size: 12px;
        }
        table.paleBlueRows td {
            width: 325px;
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
        .buttonLogOut {
            background-color: lightblue;
            padding: 3px 8px;
            margin-right: 100%;
        }
    </style>
</head>
<body>
<div class="header">

    <h1>My Grades</h1>
    <a href="StudentHomePage.php"><img style="float: right;" src=Picture2.png></a>
	<?php include "PageElements/LoggedInBox.php"?>


</div>
<table class="paleBlueRows">
    <thead>
    <tr>
        <th class="tableheading">Subject</th>
        <th class="tableheading">Grade</th>
        <th class="tableheading">Comments</th>
    </tr>
    </thead>
    <tbody>
<?php
        studentGradesQuery($_SESSION['Login']);
        echo "</tbody>";
        echo "</table>";
?>
</tbody>
</html>