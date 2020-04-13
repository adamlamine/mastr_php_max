var chunk_count = document.getElementById('chunk-count').value;
var jobID = document.getElementById('job-id').value;


var audio = document.createElement('audio');
var mediaSource = new MediaSource();
var SEGMENTS = 5;
var requestedFileIndex = 0;
var playingChunkIndex = 0;
var sourceBuffer;

mediaSource.addEventListener('sourceopen', function() {
    sourceBuffer = mediaSource.addSourceBuffer('audio/mpeg');
    sendRequest();

    function onAudioLoaded(data, index) {
        sourceBuffer.appendBuffer(data);
    }

    function sendRequest() {
        var zeroFilled = ('000' + requestedFileIndex);
        zeroFilled = (zeroFilled).substring(zeroFilled.length-3)

        var xhr = new XMLHttpRequest;
        xhr.open('GET', 'jobs/' + jobID + '/chunks/' + zeroFilled + '.mp3');
        xhr.responseType = 'arraybuffer';

        xhr.onload = function() {
            sourceBuffer.appendBuffer(this.response);
            if(requestedFileIndex < (chunk_count - 1)){
                requestedFileIndex++;
                sendRequest();
            }

        };
        xhr.send();
    }

});
    document.getElementsByClassName("filename-container")[0].appendChild(audio);
    audio.setAttribute("controls", true);
    audio.setAttribute("preload", "none");


audio.src = URL.createObjectURL(mediaSource);

function pluginValueChanged(){
    playingChunkIndex = Math.floor(audio.currentTime);
    sourceBuffer.timestampOffset = playingChunkIndex;
    mediaSource.sourceBuffers[0].remove(playingChunkIndex, chunk_count);
    firstRequest = true;
    sendRequest();
    var requestInterval = setInterval(sendRequest, 100);

    function sendRequest() {

        var zeroFilled = ('000' + playingChunkIndex);
        zeroFilled = (zeroFilled).substring(zeroFilled.length-3)

        var xhr = new XMLHttpRequest;
        //xhr.open('GET', 'jobs/' + jobID + '/chunks/' + zeroFilled + '.mp3');
        xhr.open('GET', 'renderPreview.php?chunkindex=' + zeroFilled );
        xhr.responseType = 'arraybuffer';

        xhr.onload = function() {


            console.log("Appended to Buffer: " + zeroFilled);
            mediaSource.sourceBuffers[0].appendBuffer(this.response);
        };
        xhr.send();


        if(playingChunkIndex < (chunk_count - 1)){
            playingChunkIndex++;
        } else {
            clearInterval(requestInterval);
        }
    }
}