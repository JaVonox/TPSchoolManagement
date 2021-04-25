<!DOCTYPE html>
<?php include "Scripts/PageAccessVerify.php";
require "Scripts/PullUserData.php";
PageCheck(array("Student"));
$dataGetter = new UserInteractionHandler();

$timelineInfo = $dataGetter->PullLessonsTimeForStudent($_SESSION['Login']);
?>
<html lang="English">
<head>
    <style>
        <?php include "CSS/Header.css"?>
        .button {
            background-color: #4472C4;
            border-radius: 25px;
            color: white;
            padding: 55px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 17px;
            margin: 5%;
            cursor: pointer;
            font-family: Lato, sans-serif;
            width: 8%;
        }

        body {
            margin: 0;
        }
        .buttonCenter {
            margin:0 auto;
        }


        table, th, td {
            border: 1px solid black;
        }

        td{
            min-width:64px;
            height:64px;
        }

    </style>
</head>
<body>
<div class="header">

    <h1>My Timetable</h1>
    <a href="StudentHomePage.php"><img style="float: right;" src=Picture2.png></a>

	<?php include "PageElements/LoggedInBox.php"?>

</div>
<div>

<table id="TtableContainer" style="margin-left:auto;margin-right:auto;margin-top:32px;text-align:center;">
	<th></th>
	<th>0:00</th>
	<th>1:00</th>
	<th>2:00</th>
	<th>3:00</th>
	<th>4:00</th>
	<th>5:00</th>
	<th>6:00</th>
	<th>7:00</th>
	<th>8:00</th>
	<th>9:00</th>
	<th>10:00</th>
	<th>11:00</th>
	<th>12:00</th>
	<th>13:00</th>
	<th>14:00</th>
	<th>15:00</th>
	<th>16:00</th>
	<th>17:00</th>
	<th>18:00</th>
	<th>19:00</th>
	<th>20:00</th>
	<th>21:00</th>
	<th>22:00</th>
	<th>23:00</th>
</table>

</div>

<template id="Timeline">
	<tr>
		<td id="TIden">Date</td>
		<td id="T0"></td>
		<td id="T1"></td>
		<td id="T2"></td>
		<td id="T3"></td>
		<td id="T4"></td>
		<td id="T5"></td>
		<td id="T6"></td>
		<td id="T7"></td>
		<td id="T8"></td>
		<td id="T9"></td>
		<td id="T10"></td>
		<td id="T11"></td>
		<td id="T12"></td>
		<td id="T13"></td>
		<td id="T14"></td>
		<td id="T15"></td>
		<td id="T16"></td>
		<td id="T17"></td>
		<td id="T18"></td>
		<td id="T19"></td>
		<td id="T20"></td>
		<td id="T21"></td>
		<td id="T22"></td>
		<td id="T23"></td>
	</tr>
</template>

<script>
var backgroundTypes = ["#CCE2CB","#D4F0F0","#FFCCB6","#ECD5E3","#FCB9AA","#FFFFB5","#CBAACB"];
var dayTypes = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"];
var days = [];
var timeData = <?php echo $timelineInfo; ?>;
var currentDate = new Date(); //This is in unix time.

LoadDays();

for(i=0;i<7;i++)
{
	LoadTimeline(i);
}

function LoadTimeline(Iteration) //Iteration is the relative day (Monday To Sunday). 
{
	var temp = document.getElementById("Timeline");
	var templateClone = temp.content.cloneNode(true);
	
	td = templateClone.querySelectorAll("tr,td");
	
	td[0].style.backgroundColor = backgroundTypes[Iteration];
	td[1].textContent = dayTypes[Iteration] + " " + days[Iteration].getDate() + "/" + (days[Iteration].getMonth()+1) + "/" + days[Iteration].getFullYear();
	
	//td slot = 2 + hourvalue
	for(j=0;j<Object.keys(timeData).length;j++)
	{
		var eventSlot = new Date(timeData[j].Lesson_Date);
		
		if(eventSlot.getDate() == days[Iteration].getDate())
		{
			var slotValue = 2 + eventSlot.getHours();
			td[slotValue].innerHTML += "<b>"  + timeData[j].Subject_Name + "</b><br>" +  timeData[j].Classroom_Location +  "<br>Room " + timeData[j].Classroom_Name + "<br>";
		}
	}
	
	document.getElementById("TtableContainer").appendChild(templateClone);
}

function LoadDays()
{
	var dayOffset = [6,0,1,2,3,4,5]; //This is not the most effective solution but the time difference between this and a different method is likely nullable
	var dateDiff = dayOffset[currentDate.getDay()]; //Sunday is considered 0. goes to 6 (Saturday)

	var lastMondayDate = new Date(currentDate - (dateDiff * (1000*24*60*60)));
	for(j=0;j<7;j++)
	{

		days[j] = new Date(lastMondayDate.getTime() + (j * (1000*24*60*60)));
	}
}


</script>

</div>
</body>
</html>