

function pluginValueChanged(plugin, event) {
    for(var i = 0; i < pluginList.length; i++){
        var currPlugin = pluginList[i];
        var sliders = currPlugin.sliderList;
        for(var j = 0; j < sliders.length; j++){
            var currSlider = sliders[j];
            var sendString = "/param " + i + " " + (currSlider.parameterNr+1) + " " + currSlider.relativeValue;
            mastrSocket.socket.send(sendString);
            console.log(sendString);

        }
    }
}

function pluginAdded(type){
    for(var i = 0; i < pluginList.length; i++){

        var currPlugin = pluginList[i];
        var plugType = currPlugin.type;
        var sendString = "/plugin " + i + " ";

        if(plugType == 1){
            sendString += "plug_vst3 \"FabFilter Pro-L\"";
        } else if (plugType == 2){
            sendString += "plug_vst3 \"FabFilter Pro-R\"";
        } else if (plugType == 3){
            sendString += "plug_vst Decapitator";
        } else if (plugType == 4){
            sendString += "plug_vst3 \"REQ 2 Stereo\"";
        } else if (plugType == 5) {
            sendString += "plug_vst3 \"J37 Stereo\"";
        }
        mastrSocket.socket.send(sendString);
        console.log(sendString);
    }
    setTimeout(pluginValueChanged, 800);
}

function pluginRemoved(type) {
    pluginAdded(type);
}

