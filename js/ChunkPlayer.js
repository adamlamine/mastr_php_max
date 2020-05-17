var jobID = document.getElementById('job-id').value;

class ChunkPlayer{

    constructor(chunkSize) {
        this.audioCtx = new (window.AudioContext || window.webkitAudioContext)();
        console.log(this.audioCtx);
        this.chunkSize = chunkSize;
        this.leftBuffer   = [];
        this.rightBuffer  = [];
        this.startTime = this.audioCtx.currentTime;
        this.leftMeter = new Meter(this.audioCtx, document.querySelector("#metering-canvas-left"));
        this.rightMeter = new Meter(this.audioCtx, document.querySelector("#metering-canvas-right"));
    }

    fillBuffer(data) {
        for(var i = 0; i < this.chunkSize/2; i++){
            this.leftBuffer.push(data[i]);
            this.rightBuffer.push(data[i+(this.chunkSize/2)]);
        }
    }

    playBuffer(){
        if(this.leftBuffer.length < 1) return;
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

        var splitter = this.audioCtx.createChannelSplitter(2);
        splitter.connect(this.leftMeter.node, 0);
        splitter.connect(this.rightMeter.node, 1);

        bufferSource.connect(splitter);
        bufferSource.connect(this.audioCtx.destination);
        bufferSource.start(this.startTime);

        this.startTime += buffer.duration;

        this.leftBuffer   = [];
        this.rightBuffer  = [];
    }




}