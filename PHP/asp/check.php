<?php
session_start();
// To avoid case conflicts, make the input uppercase and check against the session value
// If it's correct, echo '1' as a string
if(strtoupper($_GET['asp']) == $_SESSION['asp'])
	echo 'true';
// Else echo '0' as a string
else
	echo 'false';
?>