

function pluginValueChanged(plugin, event) {
    for(var i = 0; i < pluginList.length; i++){
        var currPlugin = pluginList[i];
        var sliders = currPlugin.sliderList;
        for(var j = 0; j < sliders.length; j++){
            var currSlider = sliders[j];
            var sendString = "/param " + i + " " + (currSlider.parameterNr+1) + " " + currSlider.relativeValue;
            try{mastrSocket.socket.send(sendString);}catch{}
            console.log(sendString);
        }
    }
}

function sendPluginList(){
    for(var i = 0; i < MAX_PLUGINS; i++){
        var sendString = "/plugin " + i + " ";

        try{
            var currPlugin = pluginList[i];
            var plugType = currPlugin.type;
            if(plugType == 0){
                sendString += "plug_vst3 \"FabFilter Pro-Q 2\"";
            } else if(plugType == 1){
                sendString += "plug_vst3 \"FabFilter Pro-L 2\"";
            } else if (plugType == 2){
                sendString += "plug_vst3 \"FabFilter Pro-R\"";
            } else if (plugType == 3){
                sendString += "plug_vst Decapitator";
            } else if (plugType == 4){
                sendString += "plug_vst3 \"REQ 2 Stereo\"";
            } else if (plugType == 5) {
                sendString += "plug_vst3 \"J37 Stereo\"";
            }
        } catch { //empty slot
            sendString += "plug_vst3 \"FabFilter Pro-Q 2\"";
        }



        try{mastrSocket.socket.send(sendString);}catch{}

        console.log(sendString);
    }
    setTimeout(pluginValueChanged, 800);
}

function pluginRemoved() {
    sendPluginList();
}

