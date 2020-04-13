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
shell_exec($createPreviewCMD);

$splitPreviewCMD = '"C:\Program Files (x86)\ffmpeg\bin\ffmpeg.exe" -i "' . getcwd() . '/' . $uploaddir . 'preview.mp3' . ' ' . '" -f segment -segment_time 1 -c copy ' . getcwd() . '\\' . $chunkdir .'\\%03d.mp3';
$splitPreviewCMD = str_replace('/', '\\', $splitPreviewCMD);
shell_exec($splitPreviewCMD);
echo $splitPreviewCMD;


$fi = new FilesystemIterator($chunkdir, FilesystemIterator::SKIP_DOTS);
$_SESSION["chunkcount"] = iterator_count($fi);

$splitWAVChunksCMD = '"C:\Program Files (x86)\ffmpeg\bin\ffmpeg.exe" -i "' . getcwd() . '/' . $uploadfile . ' ' . '" -f segment -segment_time 1 -c copy ' . getcwd() . '\\' . $chunkdir .'\\%03d.aif';
$splitWAVChunksCMD = str_replace('/', '\\', $splitWAVChunksCMD);
shell_exec($splitWAVChunksCMD);
echo $splitWAVChunksCMD;


header('Location: edit.php');
//header('Location: renderPreview.php');
exit;



function GUID()
{
    if (function_exists('com_create_guid') === true)
    {
        return trim(com_create_guid(), '{}');
    }

    return sprintf('%04X%04X-%04X-%04X-%04X-%04X%04X%04X', mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(16384, 20479), mt_rand(32768, 49151), mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(0, 65535));
}
