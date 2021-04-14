<?php 
    require "Scripts/GradesAndAssessmentsService.php";
	require "Scripts/PageAccessVerify.php";
	require "Scripts/PullUserData.php";
	
    PageCheck(array("Teacher"));
	$dataGetter = new UserInteractionHandler();
	$info = $dataGetter->PullTeacherDetails($_SESSION['Login'], $_SESSION['Type']);
?>

<!DOCTYPE HTML>

<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<style>
    <?php include "CSS/Header.css"?>
  .buttonLogOut
        {
            background-color: lightblue;
            padding: 3px 8px;
            margin-right: 100%;
        }
.PersonDetails
        {
            text-align: left;
            font-size: 12px;
        }
body
        {
            margin: 0;
        }
.sizeof
        {
            font-size: 150%;
        }

.dropdownClass
        {
            border: 1px solid blue;
            background: #4472C4;
            width: 70%;
            color: white;
        }
.dropdownClass a
        {
            text-decoration: none;
            color: white;
        }
.dropdownElement
        {
            background: #4472C4;
            width: 1150px;
            color: white;
        }
.dropdownElementEdit
        {
            background: #ED7D31;
            width: 200px;
            color: white;
            text-align: center;
        }
.dropdownElementEdit a
        {
            text-decoration: none;
            color: white;
        }

.expand {
            background: #fff;
            overflow: auto;
            transition: all .5s ease-in-out;  /*trasnition works by ease-in-out, changing the line height*/
            line-height: 0;                   /*from 0 to 1.5*/

            padding: 0 1em;
            color: transparent;
        }

.expand:target
        {
            line-height: 1.5;
            color: black;
        }
.grid-item
        {
            display: inline-grid;
            grid-template-columns: auto auto;

        }

</style>
</head>

<body>

  <div class="header">

    <h1>Student Grades</h1>
    <a href="TeacherHomePage.php"><img style="float: right;" src=Picture2.png></a>
	<?php include "PageElements/LoggedInBox.php"?>
  </div>

<br>

<div class = sizeof>

<div id ="dropdown">
    <?php findClassesQuery($_SESSION['Login']); ?>
</div>

</div>

</body>
