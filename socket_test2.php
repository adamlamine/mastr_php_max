<?php ?>
/**
 * Created by PhpStorm.
 * User: AdamLamine
 * Date: 26.04.2020
 * Time: 12:46
 */
<button onclick="play()">Play</button>

<script>
class PCMPlayer{

    constructor() {
        this.audioCtx = new (window.AudioContext || window.webkitAudioContext)();
        console.log(this.audioCtx);
        this.chunkSize = 20480;
        this.leftBuffer   = [];
        this.rightBuffer  = [];
        this.startTime = this.audioCtx.currentTime;
    }

    fillBuffer(data) {



        for(var i = 0; i < this.chunkSize/2; i++){
            this.leftBuffer.push(data[i]);
            this.rightBuffer.push(data[i+(this.chunkSize/2)]);
        }

    }

    playBuffer(){
        var buffer = this.audioCtx.createBuffer(2, this.leftBuffer.length, 44100);
        var l = buffer.getChannelData(0);
        var r = buffer.getChannelData(1);
        for(var i = 0; i < this.leftBuffer.length; i++){
            l[i] = this.leftBuffer[i];
            r[i] = this.rightBuffer[i];
        }


        if (this.startTime < this.audioCtx.currentTime) {
            this.startTime = this.audioCtx.currentTime;
        }

        var bufferSource = this.audioCtx.createBufferSource();
        bufferSource.buffer = buffer;
        bufferSource.connect(this.audioCtx.destination);
        bufferSource.start(this.startTime);

        this.startTime += buffer.duration;

        this.leftBuffer   = [];
        this.rightBuffer  = [];

    }


}

var player;

function play() {
    player = new PCMPlayer();
    setInterval(function () {
        player.playBuffer();
    }, 100);

    var socket = new WebSocket("ws://127.0.0.1:80");
    socket.onmessage = function (event) {
        var myReader = new FileReader();
        myReader.onload = function(event){
            var floatArray = new Float32Array(myReader.result);
            player.fillBuffer(floatArray);
            console.log(floatArray.length);
        };
        myReader.readAsArrayBuffer(event.data);
    }
}



</script>