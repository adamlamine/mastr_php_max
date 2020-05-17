var ID = "";
var previewPath = "";
var wavesurfer = undefined;
var unhandledWavesurferInteraction = false;
	
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
        unhandledWavesurferInteraction = true;
    });

    wavesurfer.on('seek', function () {
        if(unhandledWavesurferInteraction){
            mastrSocket.socket.send("/player seek " + (wavesurfer.getCurrentTime()*1000));
            wavesurfer.pause();
            mastrSocket.socket.send("/player pause");
            unhandledWavesurferInteraction = false;
        }
    })

    wavesurfer.on('play',function(){
            mastrSocket.socket.send("/player resume");
    });

    wavesurfer.on('pause',function(){
        if(wavesurfer.getCurrentTime() >= wavesurfer.getDuration()-0.3){
            mastrSocket.socket.send("/player 1");
        }
        mastrSocket.socket.send("/player pause");
    });
}


