<?php
/**
 * Created by PhpStorm.
 * User: AdamLamine
 * Date: 14.04.2020
 * Time: 00:42
 */

echo <<< HTML

<button onclick="play('http://localhost:8000/live.mp3')">Play</button>
<!--<audio src="http://localhost:8000/live.mp3" preload="none" controls autoplay></audio>-->
<script>


var context = new (window.AudioContext || window.webkitAudioContext)();
var audioStack = [];
var nextTime = 0;

var audio = document.createElement('audio');
var mediaSource = new MediaSource();
var sourceBuffer;

mediaSource.addEventListener('sourceopen', function() {
sourceBuffer = mediaSource.addSourceBuffer('audio/mpeg');
  
  setTimeout(function (){
      audio.play()
  }, 500);
});

audio.src = URL.createObjectURL(mediaSource);

function play(url) {

  fetch(url).then(function(response) {
    var reader = response.body.getReader();
    function read() {
      reader.read().then(({ value, done })=> {
        sourceBuffer.appendBuffer(value);
        read();
      });
    }
    read();
  })
}


</script>


HTML;
