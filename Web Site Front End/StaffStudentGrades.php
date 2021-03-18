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

    <h1>Student Grades<a href="StaffHomePage.php"><img style="float: right;" src=Picture2.png></a></h1>

	<?php include "PageElements/LoggedInBox.php"?>
  </div>

<br>

<div class = sizeof>

<div id ="dropdown">
    <a href='#nav'><div class="dropdownClass">Class 1</div></a>
    <div class="expand grid-item"  id="nav">
      <div class="dropdownElement">Student 1</div>                                          <!--anchor tags will need to be populated with SQL script that takes teacher to specific student -->
      <div class="dropdownElementEdit"><a href="TeacherEditGrades.php">Edit Grade</a></div>        <!-- each div needs to be populated with the database data -->
      <div class="dropdownElement">Student 2</div>                                                 <!-- you will probably need to create a loop to dynamically add the data -->
      <div class="dropdownElementEdit">Edit Grade</div>
      <div class="dropdownElement">Student 3</div>                                                 <!-- student divs will need to be replace with their corresponding grade page -->
      <div class="dropdownElementEdit">Edit Grade</div>                                            <!-- for each specific student -->
    </div>
    <a href='#nav2'><div class="dropdownClass">Class 2</div></a>
    <div class="expand grid-item"  id="nav2">
      <div class="dropdownElement">Student 1</div>
      <div class="dropdownElementEdit">Edit Grade</div>
      <div class="dropdownElement">Student 2</div>
      <div class="dropdownElementEdit">Edit Grade</div>
    </div>
    <a href='#nav3'><div class="dropdownClass">Class 3</div></a>
    <div class="expand grid-item"  id="nav3">
      <div class="dropdownElement">Student 1</div>
      <div class="dropdownElementEdit">Edit Grade</div>
    </div>
</div>

</div>

</body>
