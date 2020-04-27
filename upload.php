<?php
session_start();
putenv("ffmpeg=C:\Program Files (x86)\ffmpeg\bin\ffmpeg.exe");

$jobID = GUID();
$uploaddir = 'jobs/' .  $jobID . '/';
$chunkdir = $uploaddir . 'chunks';
$uploadfile = $uploaddir . basename($_FILES['file']['name']);
mkdir($uploaddir, 0700);
mkdir($uploaddir . '/chunks', 0700);
$_SESSION["job"] = $jobID;
$_SESSION["filename"] = $_FILES['file']['name'];

move_uploaded_file($_FILES['file']['tmp_name'], $uploadfile);

$createPreviewCMD = '"C:\Program Files (x86)\ffmpeg\bin\ffmpeg.exe" -i ' . getcwd() . '/' . $uploadfile . ' ' . getcwd() . '\\' . $uploaddir . 'preview.mp3';
$createPreviewCMD = str_replace('/', '\\', $createPreviewCMD);

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
