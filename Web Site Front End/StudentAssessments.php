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

    <p class="PersonDetails"><?php echo $info['Name']; ?></p>
    <p class="PersonDetails">Year <?php echo $info['Year']; ?></p>
    <p class="PersonDetails">Class <?php echo $info['Class']; ?></p>
    <a href="login.php"><button class ="buttonLogOut" >LogOut</button></a>

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
    findStudentAssessments($_SESSION['Login']);
    echo "</tbody>";
    echo "</table>";
    ?>
    </tbody>
</html>