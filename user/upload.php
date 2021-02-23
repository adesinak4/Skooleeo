<?php

require_once "../connect.php";

if(isset($_REQUEST['submit'])) //button name "register"
{
	$title	= strip_tags($_REQUEST['title']);
	$desc		= strip_tags($_REQUEST['desc']);
	$content	= strip_tags($_REQUEST['text']);
    $author	= strip_tags($_REQUEST['author']);
    $date	= strip_tags($_REQUEST['date']);
		
	if(empty($title)){
		$errorMsg[]="Please enter title";
	}
	else if(empty($content)){
		$errorMsg[]="Please enter content";
	}
	else
	{	
		try
		{	
			$select_stmt=$db->prepare("SELECT title FROM posts 
										WHERE title=:title"); // sql select query
			
			$select_stmt->execute(array(':title'=>$title)); //execute query 
			$row=$select_stmt->fetch(PDO::FETCH_ASSOC);	
			
			if($row["title"]==$title){
				$errorMsg[]="Sorry title already exists";	//check condition username already exists 
			}
			else if(!isset($errorMsg)) //check no "$errorMsg" show then continue
			{
				
				$insert_stmt=$db->prepare("INSERT INTO posts	(title,description,text,author,date) VALUES
																(:title,:desc,:text,:author,:date)"); 		//sql insert query					
				
				if($insert_stmt->execute(array(	':title'	=>$title, 
												':desc'	=>$desc, 
												':text'=>$content,
                                              ':author'=>$author,
                                              ':date'=>$date))){
													
					header("Location: index.php");
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