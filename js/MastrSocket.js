
class MastrSocket{

    constructor(host, port, player){
        this.connectionString = "ws://" + host + ":" + port;
        this.player = player;
        console.log(this.player);
        this.socket = new WebSocket(this.connectionString);
        var self = this;
        this.socket.onmessage = function(ev) { self.handleMessage(self, ev); }
    }

    handleMessage(self, event){
        if(event == null) return;
        if(typeof event.data == "object"){
            self.handleBlob(self, event);
        } else {
            self.handleCommand(self, event);
        }
    }

    handleBlob(self, event){
        var reader = new FileReader();
        reader.onload = function(event){
            var floatArray = new Float32Array(reader.result);
            self.player.fillBuffer(floatArray);
        };
        reader.readAsArrayBuffer(event.data);
    }

    handleCommand(event){
    }

}


