<?php
require_once 'function.php';
$expldStr = explode('/', $_SERVER['PATH_INFO']);
if(isset($expldStr[1])){
	$id = $expldStr[1];
	$gcAJSDemoObj = new gcAJSDemo();
	$gcAJSDemoObj->getPlayersByTeam($id);
}