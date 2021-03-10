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
        .buttonLogOut {
            background-color: lightblue;
            padding: 3px 8px;
            margin-right: 100%;
        }
        .Details {
            font-weight: bold;
            font-size: 30px;
            margin: 20px;
        }
        .LinesUnderText {
            height:50px;
            border-bottom: 1px solid cornflowerblue;
            padding-bottom: 5px;
        }
    </style>
</head>
<body>
<div class="header">

    <h1>My Details<a href="StaffHomePage.php"><img style="float: right;" src=Picture2.png></a></h1>

    <p class="PersonDetails">Person_Name</p>
    <p class="PersonDetails">Year 9</p>
    <p class="PersonDetails">Class 9f</p>
    <a href="login.php"><button class ="buttonLogOut" >LogOut</button></a>

</div>
<div class="Details">
    <img style="float: right" src=Picture1.jpg>
    <!---Used php so that its easier for you to add database entries.--->
    <?php   $FullName = "Rick Astley";
            $DateOfBirth = "6/9/1969";
            $ParentGuardianEmail = "NeverGonna@GiveYouUp.co.uk";
            $ParentGuardianPhoneNumber = "074206942069";
            $StudentSubjects = "Music"
    ?>
    <span class ="LinesUnderText">
        Full Name: <?php echo "<label style='font-weight: normal'>".$FullName."</label>"?>
    <br>
    <br>
        Date Of Birth: <?php echo "<label style='font-weight: normal'>".$DateOfBirth."</label>"?>
    <br>
    <br>
        Parent/Guardian Phone Number: <?php echo "<label style='font-weight: normal'>".$ParentGuardianPhoneNumber."</label>"?>
    <br>
    <br>
        Student Subjects: <?php echo "<label style='font-weight: normal'>".$StudentSubjects."</label>"?>
    </span>
</div>
</body>
</html>