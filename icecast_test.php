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
});

audio.src = URL.createObjectURL(mediaSource);

function play(url) {

  fetch(url).then(function(response) {
    var reader = response.body.getReader();
    function read() {
      return reader.read().then(({ value, done })=> {
        context.decodeAudioData(value.buffer, function(buffer) {
          audioStack.push(buffer);
          if (audioStack.length) {
              scheduleBuffers();
          }
        }, function(err) {
          console.log("err(decodeAudioData): "+err);
        });
        read();
      });
    }
    read();
  })
}

  function scheduleBuffers() {
      while ( audioStack.length && sourceBuffer) {
          var buffer    = audioStack.shift();
          var source    = context.createBufferSource();
          console.log(buffer);
          sourceBuffer.appendBuffer(buffer);
          //source.buffer = buffer;
          //source.connect(context.destination);
          //if (nextTime == 0)
          //    nextTime = context.currentTime;  /// add 50ms latency to work well across systems - tune this if you like
          //source.start(nextTime);
          //nextTime += source.buffer.duration; // Make the next buffer wait the length of the last buffer before being played
      };
  }

</script>


HTML;
