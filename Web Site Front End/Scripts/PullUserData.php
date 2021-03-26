<?php
class UserInteractionHandler
{
    private $connectionData;
	
	//This setup may need changing. It is fully susceptable to SQL injection based attacks, this is just a prototype file.
	
	function __Construct()
	{
		require "dbinfo.php"; //pull database info
		
		$conn = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
		if($conn->connect_error) 
		{
			die("A connection error occurred.");
		} 
		else 
		{
			$this->connectionData = $conn;
		}
	}
	function PullLoggedinBar($user,$type) //user = ID, type = session type
	{
		$info = array("Name"=>"","Role"=>"","UserGroup"=>"");
		
		$result = $this->connectionData->query("SELECT First_Name,Last_Name,Role FROM person WHERE Person_ID = ". $user . ";");
		$dataSet = $result->fetch_assoc();
		$info['Name'] = $dataSet['First_Name'] . " " . $dataSet['Last_Name'];
		$info['Role'] = $dataSet['Role'];
		$info['UserGroup'] = $type;
		return $info;
	}
	
	function PullPersonDetails($user,$type) //For the "My Details" pages
	{
		$info = array("Name"=>"","Date Of Birth "=>"","Phone Number"=>"","Role"=>"");
		
		$result = $this->connectionData->query("SELECT person.First_Name,person.Last_Name,person.Role,person.Date_Of_birth,person.Phone_Number FROM person WHERE Person_ID = ". $user . ";");
		$dataSet = $result->fetch_assoc();
		$info['Name'] = $dataSet['First_Name'] . " " . $dataSet['Last_Name'];
		$info['Date_Of_birth'] = $dataSet['Date_Of_birth'];
		$info['Role'] = $dataSet['Role'];
		$info['Phone_Number'] = $dataSet['Phone_Number'];
		return $info;
	}
	
	function PullStudentsArray()
	{
		$result = $this->connectionData->query("SELECT person.Person_ID,person.First_Name,person.Last_Name,Class.Class_Year FROM person,class,student WHERE person.Person_ID = student.Person_ID AND student.Class_ID = class.Class_ID");
		$dataSet = $result->fetch_all(MYSQLI_ASSOC);
		return $dataSet;
	}
	
	function PullClassroomsArray()
	{
		$result = $this->connectionData->query("SELECT Classroom_Name, Classroom_Location, Maximum_Capacity FROM Classroom ORDER BY Classroom_Name;");
		$dataSet = $result->fetch_all(MYSQLI_ASSOC);
		return $dataSet;
	}
	
	function PullBalance($id)
	{
		$result = $this->connectionData->query("SELECT Balance, Last_Top_Up FROM Credit WHERE Person_ID = ".$id.";");
		$dataSet = $result->fetch_all(MYSQLI_ASSOC);
		return $dataSet;
	}
	function PullTransactions($id)
	{
		$result = $this->connectionData->query("SELECT Date_Of_Transaction, Transaction_Value FROM Transactions WHERE Person_ID = ".$id." ORDER BY Date_Of_Transaction;");
		$dataSet = $result->fetch_all(MYSQLI_ASSOC);
		return $dataSet;
	}
	
	
	
}
?>