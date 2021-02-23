<?php

require_once "connect.php";

if(isset($_REQUEST['register'])) //button name "register"
{
	$username	= strip_tags($_REQUEST['username']);	//textbox name "txt_email"
	$email		= strip_tags($_REQUEST['email']);		//textbox name "txt_email"
	$password	= strip_tags($_REQUEST['password']);	//textbox name "txt_password"
		
	if(empty($username)){
		$errorMsg[]="Please enter username";	//check username textbox not empty 
	}
	else if(empty($email)){
		$errorMsg[]="Please enter email";	//check email textbox not empty 
	}
	else if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
		$errorMsg[]="Please enter a valid email address";	//check proper email format 
	}
	else if(empty($password)){
		$errorMsg[]="Please enter password";	//check passowrd textbox not empty
	}
	else if(strlen($password) < 8){
		$errorMsg[] = "Password must be atleast 8 characters";	//check passowrd must be 8 characters
	}
	else
	{	
		try
		{	
			$select_stmt=$db->prepare("SELECT username, email FROM users 
										WHERE username=:username OR email=:email"); // sql select query
			
			$select_stmt->execute(array(':username'=>$username, ':email'=>$email)); //execute query 
			$row=$select_stmt->fetch(PDO::FETCH_ASSOC);	
			
			if($row["username"]==$username){
				$errorMsg[]="Sorry username already exists";	//check condition username already exists 
			}
			else if($row["email"]==$email){
				$errorMsg[]="Sorry email already exists";	//check condition email already exists 
			}
			else if(!isset($errorMsg)) //check no "$errorMsg" show then continue
			{
				$new_password = password_hash($password, PASSWORD_DEFAULT); //encrypt password using password_hash()
				
				$insert_stmt=$db->prepare("INSERT INTO users	(username,email,password) VALUES
																(:username,:email,:password)"); 		//sql insert query					
				
				if($insert_stmt->execute(array(	':username'	=>$username, 
												'email'	=>$email, 
												':password'=>$new_password))){
													
					header("Location: login.php");
				}
			}
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();
		}
	}
}
?>