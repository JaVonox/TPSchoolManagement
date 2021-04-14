<?php 
    require "Scripts/GradesAndAssessmentsService.php";
	require "Scripts/PageAccessVerify.php"
    PageCheck(array($_SESSION['Type']));
	$info = PullTeacherDetails($_SESSION['Login'], $_SESSION['Type']);
?>

<!DOCTYPE HTML>

<head>
<style>
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
.header
        {
            background-color: #4472C4;
            padding: 20px;
            text-align: center;
        }
.dropdownClass
        {
            border: 1px solid blue;
            background: #4472C4;
            width: 70%;
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

    <h1>Student Grades<a href="TeacherHomePage.php"><img style="float: right;" src=Picture2.png></a></h1>

    <p class="PersonDetails"><?php echo $info['Name']; ?></p>
    <p class="PersonDetails"><?php if($info['Leading'] == "no department"){ echo "Member of ".$info['Department']; }else{ echo "Head of ".$info['Department']; } ?></p>
    <p class="PersonDetails">Teacher</p>
    <a href="login.php"><button class ="buttonLogOut" >LogOut</button></a>
  </div>

<br>

<div class = sizeof>

<div id ="dropdown">
    <?php findClassesQuery($_SESSION['Login']); ?>
</div>

</div>

</body>
