<?php
$filename = 'storedxss.txt';
$contents = file_get_contents($filename);
echo $contents;
?>