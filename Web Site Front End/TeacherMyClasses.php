<!DOCTYPE HTML>
<?php include "Scripts/PageAccessVerify.php";
PageCheck(array("Teacher"));
?>
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
    <h1>My Classes</h1>
    <a href="TeacherHomePage.php"><img style="float: right;" src=Picture2.png></a>
	<?php include "PageElements/LoggedInBox.php"?>
  </div>

<br>

<?php
	$dataGetter = new UserInteractionHandler();
	$classDetails = $dataGetter->PullAllClassesTeacher($_SESSION['Login']);
?>

<div class = "sizeof">
<div id ="dropdown">
	<?php

	for($i=0;$i<count($classDetails);$i++) //Relies on class having atleast one member. Needs modifying to fix this problem.
	{
		echo '<a href="#nav' . $i .'"><div class="dropdownClass">Class ' . $classDetails[$i][0]['Class_Name'] . '</a></div>';
		echo '<div class="expand grid-item"  id="nav' . $i . '">';

		for($j=0;$j<count($classDetails[$i]);$j++)
		{
			echo '<div class="dropdownElement">' . $classDetails[$i][$j]['Person_ID'] . " : " . $classDetails[$i][$j]['First_Name'] . " " . $classDetails[$i][$j]['Last_Name'] . '</div>';
			echo '<div class="dropdownElementEdit"><a href="StudentList.php?Focus=' . $classDetails[$i][$j]['Person_ID'] .'">View</a></div>';
		}
		echo '</div>';
	}
	?>
</div>
</div>

</body>
