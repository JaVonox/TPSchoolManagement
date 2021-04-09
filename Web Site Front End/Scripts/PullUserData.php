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
	
	function PullStudentDetails($user,$type) //For the "My Details" pages
	{
		$info = array("Name"=>"","Date Of Birth"=>"","Role"=>"","Start Date"=>"","Sex"=>"",
		"Address"=>"","Medical Information"=>"","Comments"=>"","Class"=>"","Year"=>"","GName"=>"","GAddress"=>"",
		"GPhone Number"=>"","GComments"=>"","GRelationship"=>"");
		
		$result = $this->connectionData->query("SELECT First_Name, Last_Name, Date_Of_Birth, 
		Start_Date, Sex, Address, Medical_Information, Comments, Class_Name, Class_Year 
		FROM Person, Student, Class 
		WHERE Person.Person_ID = ". $user . "
		AND Student.Person_ID = Person.Person_ID
		AND Class.Class_ID = Student.Class_ID;") or die($this->connectionData->error);
		
		
		$dataSet = $result->fetch_assoc();
		$info['Name'] = $dataSet['First_Name'] . " " . $dataSet['Last_Name'];
		$info['Date Of Birth'] = $dataSet['Date_Of_Birth'];
		$info['Start Date'] = $dataSet['Start_Date'];
		$info['Sex'] = $dataSet['Sex'];
		$info['Address'] = $dataSet['Address'];
		$info['Medical Information'] = $dataSet['Medical_Information'];
		$info['Comments'] = $dataSet['Comments'];
		$info['Class'] = $dataSet['Class_Name'];
		$info['Year'] = $dataSet['Class_Year'];
		
		$result = $this->connectionData->query("SELECT Person.First_Name, Person.Last_Name, 
		Person.Phone_Number, Person.Address, Person.Comments, Student.Guardian_Relationship
		FROM Person, Student
		WHERE Student.Person_ID = ". $user . "
		AND Student.Guardian_ID = Person.Person_ID;") or die($this->connectionData->error);
		$dataSet = $result->fetch_assoc();
		$info['GName'] = $dataSet['First_Name'] . " " . $dataSet['Last_Name'];
		$info['GAddress'] = $dataSet['Address'];
		$info['GPhone Number'] = $dataSet['Phone_Number'];
		$info['GComments'] = $dataSet['Comments'];
		$info['GRelationship'] = $dataSet['Guardian_Relationship'];
		
		return $info;
	}
	
	function PullTeacherDetails($user,$type) //For the "My Details" pages
	{
		$info = array("Name"=>"","Date Of Birth "=>"","Phone Number"=>"","Start Date"=>"","Sex"=>"",
		"Address"=>"","Medical Information"=>"","Comments"=>"", "Salary"=>"",
		"Education"=>"", "Work"=>"", "NI"=>"", "Tax"=>"", "Bank"=>"", "Department"=>"", "Leading"=>"");
		
		$result = $this->connectionData->query("SELECT Person.First_Name, Person.Last_Name, Person.Date_Of_birth, 
		Person.Phone_Number, Person.Start_Date, Person.Sex, Person.Address, Person.Medical_Information, Person.Comments,
		Staff.Salary, Staff.Education_and_Qualification, Staff.Work_Experience, Staff.LeaderOf, Staff.National_Insurance, 
		Staff.Tax_Code, Staff.Bank_Details, Department_Name FROM Person, Staff, Department 
		WHERE Person.Person_ID = ". $user . "
		AND Person.Person_ID = Staff.Person_ID
		AND Staff.Department_ID = Department.Department_ID;") or die($this->connectionData->error);;
		$dataSet = $result->fetch_assoc();
		$info['Name'] = $dataSet['First_Name'] . " " . $dataSet['Last_Name'];
		$info['Date Of Birth'] = $dataSet['Date_Of_birth'];
		$info['Start Date'] = $dataSet['Start_Date'];
		$info['Sex'] = $dataSet['Sex'];
		$info['Address'] = $dataSet['Address'];
		$info['Medical Information'] = $dataSet['Medical_Information'];
		$info['Comments'] = $dataSet['Comments'];
		$info['Salary'] = $dataSet['Salary'];
		$info['Education'] = $dataSet['Education_and_Qualification'];
		$info['Work'] = $dataSet['Work_Experience'];
		$info['NI'] = $dataSet['National_Insurance'];
		$info['Tax'] = $dataSet['Tax_Code'];
		$info['Bank'] = $dataSet['Bank_Details'];
		$info['Department'] = $dataSet['Department_Name'];
		$info['Phone_Number'] = $dataSet['Phone_Number'];
		
		if (is_null ($dataSet["LeaderOf"]))
		{
			$info['Leading'] = "no department";
		}
		else
		{
			$result = $this->connectionData->query("SELECT Department_Name FROM Staff, Department 
			WHERE Staff.Person_ID = ". $user . "
			AND Staff.LeaderOf = Department.Department_ID;") or die($this->connectionData->error);;
			$dataSet = $result->fetch_assoc();
			$info['Leading'] = $dataSet['Department_Name'];
		}
		return $info;
	}
	
	function PullAllClassesTeacher($teacherID) //Gets all the class info from lesson which involve a specific teacher
	{
		$classes = array();
		
		$result = $this->connectionData->query("SELECT DISTINCT Class_ID FROM lesson WHERE Staff_Person_ID = " . $teacherID);
		$classIDArray = $result->fetch_all(MYSQLI_NUM);
		
		for($i=0;$i<count($classIDArray);$i++)
		{
			$result = $this->connectionData->query("SELECT student.Class_ID,student.Person_ID,person.First_Name,person.Last_Name FROM student RIGHT JOIN person ON student.Person_ID = person.Person_ID WHERE student.Class_ID = " . $classIDArray[$i][0]);
			$classInfo = $result->fetch_all(MYSQLI_ASSOC);
		
			$classes[$i] = $classInfo;
		}
		
		
		return $classes;
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
	function AddToBalance($id, $money) //user = ID, money = money to be added.
	{
		if(!is_numeric($money))
		{
			return "This cannot be added.";
		}
		//GET OLD BALANCE
		$result = $this->connectionData->query("SELECT Balance FROM Credit WHERE Person_ID = ".$id.";");
		$dataSet = $result->fetch_all(MYSQLI_ASSOC);
		$oldbal = $dataSet[0]['Balance'];
		$newbal = $money + $oldbal;
		$newdate = date('Y-m-d');
		
		//UPDATE BALANCE
		$result = $this->connectionData->query("UPDATE Credit set Balance = ". $newbal . ", Last_Top_Up = \"" . $newdate . "\" WHERE Person_ID = ". $id . ";");
		if ($result == FALSE)
		{
			return "Sorry, this top up did not work.";
		}
		else
		{
			return "Top up successful!";
		}
		return $info;
	}
	
	
	
}
?>