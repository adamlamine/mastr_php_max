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
	});



	wavesurfer.load(previewPath);
	wavesurfer.setMute(true);
	wavesurfer.setWaveColor("rgba(20,20,255,0.8)");

    //TODO: SEND PLAYBACK COMMANDS TO MAX MSP

    wavesurfer.on('interaction',function(){
    });

    wavesurfer.on('play',function(){
    });

    wavesurfer.on('pause',function(){
        //wavesurfer.getCurrentTime();
    });
}


