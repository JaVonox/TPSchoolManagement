<?php
//This script will run on all pages that require a login and will force a redirect if the user enters a page they cannot use.
session_start();

function PageCheck($groupRestrict) //Expected values = "Student","Teacher","Staff"
{
	//groupRestrict is an array that contains all the allowed usergroups. If this function is called, it is assumed that the page is a restricted area, and thus no supplied usergroups will default
	//to always redirecting a user.
	
	//Redirects are mapped to the homepage of a user if logged in, and if they are not logged in it will redirect to the login page
	
	if(!isset($_SESSION['Type']))
	{
		header("Location: index.php?Error=Restricted Page");
	}
	
	$permittedPage = False;
	
	if(in_array($_SESSION['Type'],$groupRestrict))
	{
		$permittedPage = True;
	}
	
	if(!$permittedPage)
	{
		if($_SESSION['Type'] == "Student")
		{
			header("Location: StudentHomePage.php?Error=Restricted Page");
		}
		else if($_SESSION['Type'] == "Teacher")
		{
			header("Location: TeacherHomePage.php?Error=Restricted Page");
		}
		else if($_SESSION['Type'] == "Staff")
		{
			header("Location: StaffHomePage.php?Error=Restricted Page");
		}
		else
		{
			header("Location: index.php?Error=Restricted Page");
		}
	}
}
?>