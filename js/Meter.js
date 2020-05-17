class Meter {

    constructor (audioCtx, canvas) {
        this.audioCtx = audioCtx;
        this.node = audioCtx.createAnalyser();
        this.node.fftSize = 4096;
        this.canvas = canvas;
        this.canvasCtx = this.canvas.getContext('2d');
        this.timeData = new Float32Array();
        var self = this;
        this.updateMeter(self);
    }


    updateMeter(self) {
        this.timeData = new Float32Array(this.node.fftSize);
        this.node.getFloatTimeDomainData(this.timeData)

        var peak = 0;
        for(var i = 0; i < self.timeData.length; i++){
            var sample = Math.abs(self.timeData[i]);
            if(sample > peak) {
                peak = sample;
            }
        }

        requestAnimationFrame(function () {
            self.updateMeter(self);
        });

        self.canvasCtx.clearRect(0, 0, self.canvas.width, self.canvas.height);
        self.canvasCtx.fillStyle = "#00ff31";
        self.canvasCtx.fillRect(0, self.canvas.height, self.canvas.width, -Math.min(self.canvas.height, peak * self.canvas.height));

    }

}