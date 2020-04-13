var ID = "";
var previewPath = "";
var wavesurfer = undefined;
	
var initWavesurfer = function(ID){
	ID = ID;
	previewPath = 'jobs/' + ID + '/preview.mp3?' + Math.random();

	wavesurfer = WaveSurfer.create({
		container: '#waveform',
		waveColor: 'violet',
		progressColor: 'purple',
		backend: 'WebAudio'
	});



	wavesurfer.load(previewPath);
	wavesurfer.setMute(true);
	wavesurfer.setWaveColor("rgba(20,20,255,0.8)");

    wavesurfer.on('interaction',function(){
        audio.currentTime = wavesurfer.getCurrentTime();
    });

    wavesurfer.on('play',function(){
        audio.currentTime = wavesurfer.getCurrentTime();
        audio.play();
    });

    wavesurfer.on('pause',function(){
        audio.currentTime = wavesurfer.getCurrentTime();
        audio.pause();
    });
}


