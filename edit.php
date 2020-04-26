<?php
session_start();
$jobID = $_SESSION["job"];
echo "<input id='job-id'  type='hidden' value = '$jobID'>";
?>


<!doctype html>

<head>
    <link rel="shortcut icon" type="image/x-icon" href="/favicon.ico">
    <!--
        This project uses wavesurfer: https://wavesurfer-js.org/
        https://opensource.org/licenses/BSD-3-Clause
    -->
    <title>MASTR</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body onLoad="initWavesurfer('<?php echo $_SESSION['job'] ?>')">
<div class = "bg-img" id = "bg-img" style="background-image: img/background.png"></div>
<div class = "header" style="background-image: img/logo.png"></div>
<div class = "flex-container">
    <div class = "filename-container">
        <div class = "filename">Your file: <?php echo $_SESSION['filename'] ?></div>
    </div>
</div>
<div class = "plugin-container-outer" id = "plugin-container">
    <div class = "plugin-container-inner" id = "plugin-container-inner">

    </div>
</div>
<div class = "footer">
    <button class = "transport-button" onClick="wavesurfer.play();initializeChunkPlayer();">▶</button>
    <button class = "transport-button" onClick="wavesurfer.pause()">❚❚</button>

    <div style = "height: 128px; width: 3px; background-color: white; float: left; margin-left: 30px"></div>
    <div id="waveform"></div>
    <div style = "height: 128px; width: 3px; background-color: white; float: left;"></div>

    <div class = "add-button-container" id = "add-button-container">
        <select id = "selector">
            <option value="FastFilter Go-L">Limiter: FastFilter Go-L</option>
            <option value="FastFilter Go-R">Reverb: FastFilter Go-R</option>
            <option value="Beheader">Distortion: Beheader</option>
            <option value="PreQ">Equalizer: PREQ</option>
            <option value="Creamy">Tape Emulation: Creamy Tape</option>
        </select>
        <button class = "add-button" onClick="addPlugin(); saveState()">Add FX</button>
        <button class = "add-button" onClick = "saveState(); render('<?php echo $_SESSION['job'] ?>', '<?php echo $_SESSION['filename'] ?>')">Render</button>
        <button class = "add-button" onClick = "download('<?php echo $_SESSION['job'] ?>', '<?php echo $_SESSION['filename'] ?>')">DOWNLOAD</button>
    </div>


</div>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
crossorigin="anonymous"></script>
<script src = "js/ChunkPlayer.js"></script>
<script src = "js/MastrSocket.js"></script>
<script src = "js/PluginValueSender.js"></script>
<script src = "js/plugins.js"></script>
<script src="https://unpkg.com/wavesurfer.js"></script>
<script src = "js/wavesurfer_settings.js"></script>


<script>
    function initializeChunkPlayer(){
        player = new ChunkPlayer(20480);
        mastrSocket = new MastrSocket("localhost", 80, player);

        setInterval(function () {
            player.playBuffer();
        }, 300);

        mastrSocket.socket.onopen = function () {
            pluginAdded();
        }
    }

    window.addEventListener("load", function (){loadState(); console.log("TEST")});

</script>

</body>
