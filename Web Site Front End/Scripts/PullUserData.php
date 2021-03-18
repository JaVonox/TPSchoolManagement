<?php
class UserInteractionHandler
{
    private $connectionData;
	
	//This setup may need changing. It is fully susceptable to SQL injection based attacks, this is just a prototype file.
	
	function __Construct()
	{
		include_once "dbinfo.php"; //pull database info
		
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
}
?>