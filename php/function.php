<?php 
// dth - Database Handler
// sth - Statement Handler
class gcAJSDemo {
    private  $dth; 
	private  $host;
	private  $dbUser;
	private  $dbPassword;
	private  $database;
	
	function __construct(){	
	$this->host =  "localhost";
	$this->dbUser = "root";
	$this->dbPassword = 'mysql';
	$this->database = 'ajs-test';
	  try {
			$this->dth = new PDO( "mysql:host=$this->host;dbname=$this->database;charset=utf8", $this->dbUser, $this->dbPassword );
			$this->dth->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
		}
	  catch (PDOException $e) {
		 echo "Connection Error: " . $e->getMessage();
		}
    }
	
	function saQuery($sql){
	    return $this->dth->query($sql);	
	}
	
	function saPrepare($sql){
		return$this->dth->prepare($sql);
	}
	
	function saLastInsertId(){
	   return $this->dth->lastInsertId();
	}
	
	function getTeam(){
		$sth = $this->saQuery('SELECT `id`, `name`, `logoUri` as logo FROM `teams`');
		$sth->setFetchMode(PDO::FETCH_ASSOC);
		$row = $sth->fetchAll();
		echo $this->convertIntoJSON($row, true);
	}

	function getSingleTeam($id){
		$sth = $this->saPrepare('SELECT `name`, `logoUri` as logo FROM `teams` WHERE id = :teamID ');
		$sth->bindParam(':teamID', $id, PDO::PARAM_INT);
		$sth->execute();
		$sth->setFetchMode(PDO::FETCH_ASSOC);
		$row = $sth->fetch();
		return $row;
	}

	function getPlayersByTeam($id){
		$teamID = $id; 
		$team = $this->getSingleTeam($id);
		$sth = $this->saPrepare("SELECT `firstName` as fname, `lastName` as lname, `imageUri` as dp FROM `players`  WHERE teamID = :teamID ");
		$sth->bindParam(':teamID', $teamID, PDO::PARAM_INT);
		$sth->execute();
		$sth->setFetchMode(PDO::FETCH_ASSOC);
		$row = $sth->fetchAll();
		$rows['team'] = $team;
		$rows['players'] = $row;
		echo $this->convertIntoJSON($rows, true);
	}
	
	function convertIntoJSON($data, $status){
	   return json_encode(array('data'=>$data, 'status'=>$status));
	}
}
?>