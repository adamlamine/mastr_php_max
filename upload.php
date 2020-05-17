<?php
session_start();
putenv("ffmpeg=C:\Program Files (x86)\ffmpeg\bin\ffmpeg.exe");

$jobID = GUID();
$uploaddir = 'jobs\\' .  $jobID . '\\';

$chunkdir = $uploaddir . 'chunks';
//$uploadfile = $uploaddir . basename($_FILES['file']['name']);
$uploadfile = $uploaddir . "original.wav";
$maxfile = $uploaddir . "maxpatch.maxpat";
mkdir($uploaddir, 0700);
$_SESSION["job"] = $jobID;
$_SESSION["filename"] = $_FILES['file']['name'];

$config_file = fopen(__DIR__ . '\\' . $uploaddir . "config.txt", "w");
$sock_port = rand(8000,10000);
$_SESSION['sock_port'] = $sock_port;

move_uploaded_file($_FILES['file']['tmp_name'], $uploadfile);
copy("maxmsp/effect_streamer.maxpat", $maxfile);

fwrite($config_file, $sock_port);
fclose($config_file);

$openMaxCMD = "\"D:\Program Files\Cycling 74\Max 8\Max.exe\" " . __DIR__ . "\\$maxfile";
$createPreviewCMD = str_replace('/', '\\', $openMaxCMD);
echo $openMaxCMD . PHP_EOL;

$daemonCMDFile = fopen(__DIR__ . '\\' . "max_daemon\\commands.txt", "w");
fwrite($daemonCMDFile, $openMaxCMD);
fclose($daemonCMDFile);

//session_write_close();
//pclose(popen("start /B ". $openMaxCMD, "r"));

$createPreviewCMD = '"C:\Program Files (x86)\ffmpeg\bin\ffmpeg.exe" -i ' . getcwd() . '/' . $uploadfile . ' ' . getcwd() . '\\' . $uploaddir . 'preview.mp3';
$createPreviewCMD = str_replace('/', '\\', $createPreviewCMD);
shell_exec($createPreviewCMD);


header('Location: edit.php');
exit;



function GUID()
{
    if (function_exists('com_create_guid') === true)
    {
        return trim(com_create_guid(), '{}');
    }

    return sprintf('%04X%04X-%04X-%04X-%04X-%04X%04X%04X', mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(16384, 20479), mt_rand(32768, 49151), mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(0, 65535));
}

