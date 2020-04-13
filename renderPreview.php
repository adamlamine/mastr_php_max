<?php
session_start();

$jobID = $_SESSION['job'];
$chunkIndex = $_GET['chunkindex'];
$tempID = GUID();
$fileToRender = getcwd() . "\\jobs\\$jobID\\chunks\\$chunkIndex.aif" ;
$outputFile = getcwd() . "\\jobs\\$jobID\\chunks\\$tempID.wav" ;
$outputFileMP3 = getcwd() . "\\jobs\\$jobID\\chunks\\$chunkIndex.mp3" ;
$mrsWatsonPath = getcwd() . '\\mrswatson64_098.exe';

$mrsWatsonCommand = "$mrsWatsonPath -i $fileToRender -o  $outputFile -p \"Decapitator\"";
shell_exec($mrsWatsonCommand);
//echo $mrsWatsonCommand;
//echo "<br><br><br>";

$ffmpegCommand = "\"C:\\Program Files (x86)\\ffmpeg\bin\\ffmpeg.exe\" -i $outputFile -acodec libmp3lame $outputFileMP3 -y";
shell_exec($ffmpegCommand);
//echo $ffmpegCommand;

echo file_get_contents($outputFileMP3);

function GUID()
{
    if (function_exists('com_create_guid') === true)
    {
        return trim(com_create_guid(), '{}');
    }

    return sprintf('%04X%04X-%04X-%04X-%04X-%04X%04X%04X', mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(16384, 20479), mt_rand(32768, 49151), mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(0, 65535));
}