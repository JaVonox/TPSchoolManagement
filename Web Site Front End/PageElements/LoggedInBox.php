<?php include_once "Scripts/PullUserData.php";?>
<?php
session_start();
$database = new UserInteractionHandler();

$userStats = $database->PullLoggedinBar($_SESSION['Login'],$_SESSION['Type']);
?>
<div style="background-color:white;width:max-content;">
<p class="PersonDetails"><?php echo $userStats['Name']?></p>
<p class="PersonDetails"><?php echo $userStats['Role']?></p>
<p class="PersonDetails"><?php echo $userStats['UserGroup']?></p>
<button class ="buttonLogOut" onclick="document.location='Scripts/KillSession.php'" >LogOut</button></a>
</div>