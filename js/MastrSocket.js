
class MastrSocket{

    constructor(host, port, player){
        this.connectionString = "ws://" + host + ":" + port;
        this.player = player;
        this.initSocket();
    }

    initSocket(){
            console.log("Initializing Socket...")
            this.socket = new WebSocket(this.connectionString);
            var self = this;
            this.socket.onmessage = function(ev) { self.handleMessage(self, ev); }
            this.socket.addEventListener('error', function (e) {
                self.initSocket();
            })
            this.socket.addEventListener('open', function (e) {
                document.querySelector('#start-overlay').style.display = 'none';
                console.log("Sending player start/pause command.");
                mastrSocket.socket.send("/player 1");
                mastrSocket.socket.send("/player pause");
            })
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
