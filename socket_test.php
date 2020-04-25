<?php
/**
 * Created by PhpStorm.
 * User: AdamLamine
 * Date: 14.04.2020
 * Time: 00:42
 */

echo <<< HTML

<button onclick="play()">Play</button>
<!--<audio src="http://localhost:8000/live.mp3" preload="none" controls autoplay></audio>-->
<script src="pcm-player.js"></script>
<script>

function play() {
      var player = new PCMPlayer({
        encoding: '32bitFloat',
        channels: 1,
        sampleRate: 44100,
        flushingTime: 1000
    });
    
    
    
    var socket = new WebSocket("ws://127.0.0.1:80");
    
    
    socket.onmessage = function (event) {
        var myReader = new FileReader();
        myReader.onload = function(event){
    
            var floatArray = new Float32Array(myReader.result);
            player.feed(floatArray);
            console.log(floatArray);
        };
        myReader.readAsArrayBuffer(event.data);
    }
}


</script>


HTML;



