<?php include_once "Scripts/PullUserData.php";?>
<?php
$interHandler = new UserInteractionHandler();

$userStats = $interHandler->PullLoggedinBar($_SESSION['Login'],$_SESSION['Type']);
?>
<div style="display: inline-block; float: left; ">
<p class="PersonDetails"><?php echo $userStats['Name']?></p>
<p class="PersonDetails"><?php echo $userStats['Role']?></p>
<p class="PersonDetails"><?php echo $userStats['UserGroup']?></p>
<button class ="buttonLogOut" onclick="document.location='Scripts/KillSession.php'" >LogOut</button></a>
</div>