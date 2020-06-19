var pluginList = [];
var imgPath = "";
var MAX_PLUGINS = 5;

Number.prototype.map = function (in_min, in_max, out_min, out_max) {
  return (this - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

function uuid4() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
    return v.toString(16);
  });
}

function offset(el) {
    var rect = el.getBoundingClientRect(),
    scrollLeft = window.pageXOffset || document.documentElement.scrollLeft,
    scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    return { top: rect.top + scrollTop, left: rect.left + scrollLeft }
}

function setImgPath(inputImgPath){
	imgPath = inputImgPath;
}

var getLogValue = function(logFunc, x){
	var logFunc = logFunc;
	var x = x;
	var e = 2.71828182;
	
	if(logFunc == "FabFilter Pro-L"){
		return Math.floor( 10000 * Math.pow(x, 4) );
	} else if (logFunc == "FabFilter Pro-R") {
		if(x===1){return 10000;}
		
		return Math.floor(200 + 273.2672*x + 18874.99*Math.pow(x,2) - 32566.18*Math.pow(x,3) + 23088.87*Math.pow(x,4));
	} else if (logFunc == "PreQ Frequency") {
		if(x===1){return 21357;}
		if(x===0){return 16;}
		return Math.floor(-0.5479839 + 15.6486*Math.pow( Math.E, (+7.218778*x) ) );
		
	} else if (logFunc == "FabFilter Pro-C Ratio") {
		if(x > 0.999){
			return 100;
		} else if(x < 0.17) {
			return 1;
		}

		if(x < 0.9){
            return 0.1039438 + 0.6251685 * Math.pow(e,(+3.103894*x)) - 0.12;
		} else {
            return 114.0606 + (12.67906 - 114.0606)/(1 + Math.pow((x/0.9779572),89.5577));
		}

	} else if (logFunc == "FabFilter Pro-C Attack"){
		if(x == 0) {
			return 0.01;
		}
        return 10086670 + (0.0002699972 - 10086670)/(1 + Math.pow((x/34.29578),3.000049));
	} else if (logFunc == "FabFilter Pro-C Release"){
		return -0.09649111 + 27.7722*Math.pow(e,(+4.471626*x));
	}
	
}

class Slider{
	
	constructor(pluginDiv, labelText, unit, parameterNr, logarithmic, width, height, min, max, value, resolution, logFunc){
		
		this.logFunc = logFunc;
		
		this.logarithmic = logarithmic;
		this.pluginDiv = pluginDiv;
		
		this.parameterNr = parameterNr;
		
		this.width = width;
		this.height = height;
		
		this.labelText = labelText;
		this.value = value;
		this.unit = unit;
		
		this.max = max;
		this.min = min;
		
		this.stepped = false;
		this.stepList = [];
		
		this.resolution = resolution;
		
		this.relativeValue = value.map(this.min, this.max, 0, 1);
		
		//Slider Container erstellen
		this.sliderContainer = document.createElement("div");
		this.sliderContainer.className = "slider-container";
		
		//Slider erstellen
		this.slider = document.createElement("input");
		this.slider.setAttribute("type", "range");
		this.slider.setAttribute("min", min/resolution	);
		this.slider.setAttribute("max", max/resolution);
		this.slider.setAttribute("value", value/resolution);
		this.slider.className = "slider";
		
		//Label erstellen
		this.label = document.createElement("input");
		this.label.setAttribute("type", "text");
		this.label.style.backgroundColor = "rgba(0,0,0,0)";
		this.label.style.border = "none";
		this.label.style.color = "white";
		this.label.style.fontFamily = "sans-serif";
		this.className = "plugin-label";
		this.label.value = labelText + value + unit;
		
		//Slider stylen
		this.slider.style.width = width + "px"; //EIGENTLICH DIE HÖHE DES SLIDERS!
		this.slider.style.height = height + "px";
		
		//Elemente in DOM einfügen
		this.pluginDiv.appendChild(this.sliderContainer);
		this.sliderContainer.appendChild(this.slider);
		this.sliderContainer.appendChild(this.label);
	}
	
	update(){
		var sliderValue = Number(this.slider.value * this.resolution);
		//Logarithmische aufteilung
		if(this.logarithmic){
			
			this.relativeValue = Math.floor(sliderValue.map(this.min, this.max, 0, 1) * 100)/100;
			
			this.value = Math.floor(getLogValue(this.logFunc, this.relativeValue) * 100)/100;
			
			
		} else {
			this.value = Math.floor((this.slider.value)*this.resolution*100)/100;
			this.relativeValue = Math.floor(sliderValue.map(this.min, this.max, 0, 1) * 100)/100;
		}
		

		
		
		this.label.value = this.labelText + this.value + this.unit; //+ "  (" + Math.floor( this.relativeValue * 100 ) / 100 + ")";
		
		if(this.stepped){
			this.label.value = this.labelText + this.stepList[Math.round(this.value)] + this.unit;
		}
	}
	
	getRelativeValue(){
		
		return this.relativeValue;
	}
	
	setStepped(stepped, stepList){
		this.stepped = stepped;
		this.stepList = stepList;
	}
	
}

class PlugIn{
	constructor(type, bgImg){
		this.type = type;
		this.id = uuid4();
		this.sliderList = [];
		
		this.bgImg = bgImg;
		
		this.bypass = false;
		
		this.initWindow();
		this.initHeader();
		this.initSliders();

		for(var i = 0; i < this.sliderList.length; i++){
			var self = this;
			this.sliderList[i].slider.addEventListener('input', function(event){pluginValueChanged(self, event)});
            this.sliderList[i].slider.addEventListener('change',function(event){pluginValueChanged(self, event)});
		}

	}
	
	initWindow(){
		this.parent = document.getElementById("plugin-container-inner");
		
		this.pluginDiv = document.createElement("div");
		this.pluginDiv.style.backgroundImage = "url(img/" + this.bgImg + ")";
		this.parent.appendChild(this.pluginDiv);
		
		this.pluginDiv.id = this.id;
		this.pluginDiv.className = "plugin";
		
		//this.self = this;
	}
	
	initHeader(){
		//Header
		var header = document.createElement("div");
		header.style.height = "50px";
		header.classList.add("plugin-header");
		this.pluginDiv.appendChild(header);
		
		var closeButton = document.createElement("button");
		closeButton.className = "plugin-navbutton";
		closeButton.innerHTML = "x";
		closeButton.style.marginLeft = "15px";
		closeButton.setAttribute('onclick','closePlugin(' + "\"" + this.id + "\"" + '); saveState()'); 
		header.appendChild(closeButton);
				
		var downButton = document.createElement("button");
		downButton.className = "plugin-navbutton";
		downButton.innerHTML = "▼";
		downButton.setAttribute('onclick','movePluginDown(' + "\"" + this.id + "\"" + '); saveState()'); 
		header.appendChild(downButton);
		
		var upButton = document.createElement("button");
		upButton.className = "plugin-navbutton";
		upButton.innerHTML = "▲";
		upButton.setAttribute('onclick','movePluginUp(' + "\"" + this.id + "\"" + '); saveState()'); 
		header.appendChild(upButton);
		
		this.bypassButton = document.createElement("button");
		this.bypassButton.className = "plugin-navbutton";
		this.bypassButton.innerHTML = "Bypass";
		this.bypassButton.setAttribute('onclick','bypass(' + "\"" + this.id + "\"" + '); saveState()'); 
		header.appendChild(this.bypassButton);
	}
	
	update(){
		for(var i = 0; i < this.sliderList.length; i++){
			this.sliderList[i].update();
		}
	}
	
	toggleBypass(){
		this.bypass = !this.bypass;
		
		if(this.bypass){
			this.bypassButton.style.background = "red";
		} else {
			this.bypassButton.style.background = "rgba(35,35,35)";
		}
	}

}

class FastFilterL extends PlugIn{
	
	constructor(type, bgImg){
		super(type, bgImg);
	}
		
	initSliders(){
		
		//Gain Fader
		this.sliderList.push(new Slider(this.pluginDiv, "Gain: ", "dB", 0, false, 540, 20, 0, 30, 0, 0.01, ""));
		
		//Spacer
		var spacer = document.createElement("div");
		spacer.style.height = "30px";
		this.pluginDiv.appendChild(spacer);
		
		//Attack Fader
		this.sliderList.push(new Slider(this.pluginDiv, "Attack: ", "ms", 3, true, 540, 20, 200, 10000, 4200, 0.001, "FabFilter Pro-L"));
		
		//Release Fader
		this.sliderList.push(new Slider(this.pluginDiv, "Release: ", "ms", 4, true, 540, 20, 0, 10000, 4600, 0.001, "FabFilter Pro-L"));
			
		//Spacer
		var spacer = document.createElement("div");
		spacer.style.height = "20px";
		this.pluginDiv.appendChild(spacer);
		
		//Style Fader
		this.sliderList.push(new Slider(this.pluginDiv, "Style: ", "", 1, false, 540, 20, 0, 3, 3, 1, ""));
		this.sliderList[3].setStepped(true, ["Transparent", "Punch", "Lively", "Allround"]);
	}
	
	
}

class FastFilterR extends PlugIn{
	
	constructor(type, bgImg){
		super(type, bgImg)
	}
	
	initSliders(){
		
		//Spacer
		var spacer = document.createElement("div");
		spacer.style.height = "50px";
		this.pluginDiv.appendChild(spacer);
		
		//Mix Fader
		this.sliderList.push(new Slider(this.pluginDiv, "Mix: ", "%", 6, false, 540, 20, 0, 100, 100, 0.01, ""));
		
		//Spacer
		var spacer = document.createElement("div");
		spacer.style.height = "20	px";
		this.pluginDiv.appendChild(spacer);
		
		//Space Fader
		this.sliderList.push(new Slider(this.pluginDiv, "Space: ", "ms", 0, true, 540, 20, 200, 10000, 5500, 0.001, "FabFilter Pro-R"));
		
		//Brightness Fader
		this.sliderList.push(new Slider(this.pluginDiv, "Brightness: ", "%", 2, false, 540, 20, 0, 100, 50, 0.01, ""));
		
		//Distance Fader
		this.sliderList.push(new Slider(this.pluginDiv, "Distance: ", "%", 4, false, 540, 20, 0, 100, 50, 0.01, ""));
			
		
		//Character Fader
		this.sliderList.push(new Slider(this.pluginDiv, "Character: ",  "%", 3, false, 540, 20, 0, 100, 50, 0.01, ""));
	}

	
	
}

class Beheader extends PlugIn{
	
	constructor(type, bgImg){
		super(type, bgImg);
	}
	
	initSliders(){
		
		//Spacer
		var spacer = document.createElement("div");
		spacer.style.height = "75px";
		this.pluginDiv.appendChild(spacer);
		
		//Drive Fader
		this.sliderList.push(new Slider(this.pluginDiv, "Drive: ", "", 2, false, 540, 20, 0, 100, 50, 0.01, ""));
		
		//Punish Fader
//		this.sliderList.push(new Slider(this.pluginDiv, "Punish: ", "", 3, false, 520, 20, 0, 1, 0, 1, ""));
		
		//Spacer
		var spacer = document.createElement("div");
		spacer.style.height = "5px";
		this.pluginDiv.appendChild(spacer);
		
//		//Tone Fader
//		this.sliderList.push(new Slider(this.pluginDiv, "Tone: ", "dB", 5, false, 520, 20, -12, 12, 0, 0.001, ""));
//		
//		//Style Fader
//		this.sliderList.push(new Slider(this.pluginDiv, "Style: ", "", 1, false, 520, 20, 0, 5, 5, 1, ""));
//			
//		
//		//Mix Fader
//		this.sliderList.push(new Slider(this.pluginDiv, "Mix: ",  "%", 7, false, 520, 20, 0, 100, 100, 0.01, ""));
	}
}

class PreQ extends PlugIn{
	
	constructor(type, bgImg){
		super(type, bgImg);
	}
	
	initSliders(){
		
		//Spacer
		var spacer = document.createElement("div");
		spacer.style.height = "35px";
		this.pluginDiv.appendChild(spacer);
		
		//Frequency Fader
		this.sliderList.push(new Slider(this.pluginDiv, "Band Frequency: ", "Hz", 3, true, 540, 20, 16, 21357, 8000, 0.01, "PreQ Frequency"));
		
		//Gain Fader
		this.sliderList.push(new Slider(this.pluginDiv, "Band Gain: ", "dB", 2, false, 540, 20, -18, 18, 0, 0.01, ""));
		
		//Spacer
		var spacer = document.createElement("div");
		spacer.style.height = "5px";
		this.pluginDiv.appendChild(spacer);
		
//		//Q Fader
		this.sliderList.push(new Slider(this.pluginDiv, "Q Factor: ", "", 4, false, 540, 20, 0.2, 6.5, 0, 0.001, ""));
//		
//		//Band Type
		this.sliderList.push(new Slider(this.pluginDiv, "Style: ", "", 1, false, 540, 20, 0.01, 3, 0, 0.001, ""));
		this.sliderList[3].setStepped(true, ["Bell", "Low Shelf", "HiPass", "Low P-Shelf"]);
//			
//		
//		//Mix Fader
//		this.sliderList.push(new Slider(this.pluginDiv, "Mix: ",  "%", 7, false, 520, 20, 0, 100, 100, 0.01, ""));
	}
}

class Creamy extends PlugIn{
	
	constructor(type, bgImg){
		super(type, bgImg);
	}
	
	initSliders(){
		
		//Spacer
		var spacer = document.createElement("div");
		spacer.style.height = "35px";
		this.pluginDiv.appendChild(spacer);
		
		//Input Fader
		this.sliderList.push(new Slider(this.pluginDiv, "Input: ", "dB", 10, false, 540, 20, -18, 18, 0, 0.01, ""));
		
		//Saturation Fader
		this.sliderList.push(new Slider(this.pluginDiv, "Saturation: ", "", 16, false, 540, 20, 0, 30, 0, 0.01, ""));
		
		//WOW & Flutter Fader
		this.sliderList.push(new Slider(this.pluginDiv, "WOW & Flutter: ", "", 7, false, 540, 20, 0, 100, 20, 0.01, ""));
		
		//Spacer
		var spacer = document.createElement("div");
		spacer.style.height = "5px";
		this.pluginDiv.appendChild(spacer);
		
//		//Noise Fader
//		this.sliderList.push(new Slider(this.pluginDiv, "Noise: ", "", 1, false, 540, 20, 0, 100, 0, 0.001, ""));
//		

//			
//		
//		//Mix Fader
//		this.sliderList.push(new Slider(this.pluginDiv, "Mix: ",  "%", 7, false, 520, 20, 0, 100, 100, 0.01, ""));
	}
}

class FastFilterQ extends PlugIn{

    constructor(type, bgImg){
        super(type, bgImg);
    }

    initSliders(){

        //Spacer
        var spacer = document.createElement("div");
        spacer.style.height = "35px";
        this.pluginDiv.appendChild(spacer);

        //Input Fader
        this.sliderList.push(new Slider(this.pluginDiv, "Input: ", "dB", 10, false, 540, 20, -18, 18, 0, 0.01, ""));

        //Saturation Fader
        this.sliderList.push(new Slider(this.pluginDiv, "Saturation: ", "", 16, false, 540, 20, 0, 30, 0, 0.01, ""));

        //WOW & Flutter Fader
        this.sliderList.push(new Slider(this.pluginDiv, "WOW & Flutter: ", "", 7, false, 540, 20, 0, 100, 20, 0.01, ""));

        //Spacer
        var spacer = document.createElement("div");
        spacer.style.height = "5px";
        this.pluginDiv.appendChild(spacer);
    }
}

class FastFilterC extends PlugIn{

    constructor(type, bgImg){
        super(type, bgImg);
    }

    initSliders(){

        //Spacer
        var spacer = document.createElement("div");
        spacer.style.height = "35px";
        this.pluginDiv.appendChild(spacer);

        //Input Fader
        this.sliderList.push(new Slider(this.pluginDiv, "Input Gain: ", "dB", 35, false, 150, 20, -36, 36, 0, 0.01, ""));

        //Output Wet Fader
        this.sliderList.push(new Slider(this.pluginDiv, "Dry Gain: ", "dB", 10, false, 150, 20, -36, 36, 0, 0.01, ""));

        //Output Dry Fader
        this.sliderList.push(new Slider(this.pluginDiv, "Wet Gain: ", "dB", 12, false, 150, 20, -36, 36, 0, 0.01, ""));

        //Style
		var styleSlider = new Slider(this.pluginDiv, "Style: ", "", 0, false, 150, 20, 0, 7, 0, 1, "");
        this.sliderList.push(styleSlider);
        styleSlider.setStepped(true, ['Clean', 'Classing', 'Opto', 'Vocal', 'Mastering', 'Bus', 'Punch', 'Pumping']);

        //Treshold
        this.sliderList.push(new Slider(this.pluginDiv, "Treshold: ", "dB", 1, false, 150, 20, -60, 0, -18, 1, ""));

        //Ratio
		var ratioSlider = new Slider(this.pluginDiv, "Ratio: ", ":1", 2, false, 150, 20, 0, 1, 0.6, 0.01, "FabFilter Pro-C Ratio");
		ratioSlider.logarithmic = true;
        this.sliderList.push(ratioSlider);

        //Knee
        this.sliderList.push(new Slider(this.pluginDiv, "Knee: ", "dB", 3, false, 150, 20, 0, 72, 18, 0.1, ""));

        //Attack
        var attackSlider = new Slider(this.pluginDiv, "Attack: ", "ms", 5, false, 150, 20, 0, 1, 0.1, 0.01, "FabFilter Pro-C Attack");
        attackSlider.logarithmic = true;
        this.sliderList.push(attackSlider);

        //Release
        var releaseSlider = new Slider(this.pluginDiv, "Release: ", "ms", 6, false, 150, 20, 0, 1, 0.44, 0.01, "FabFilter Pro-C Release");
        releaseSlider.logarithmic = true;
        this.sliderList.push(releaseSlider);

        //Spacer
        var spacer = document.createElement("div");
        spacer.style.height = "5px";
        this.pluginDiv.appendChild(spacer);
    }
}

class FastFilterSaturday extends PlugIn{

    constructor(type, bgImg){
        super(type, bgImg);
    }

    initSliders(){

        //Spacer
        var spacer = document.createElement("div");
        spacer.style.height = "35px";
        this.pluginDiv.appendChild(spacer);


		//NUM ACTIVE BANDS (Invisible)
        var invisibleNumActiveBandsSlider = new Slider(this.pluginDiv, "NumActiveBands: ", "", 5, false, 130, 20, 0, 15, 2, 1, "");
        invisibleNumActiveBandsSlider.slider.style.display = 'none';
        invisibleNumActiveBandsSlider.label.style.display = 'none';


        //Input Fader
        this.sliderList.push(new Slider(this.pluginDiv, "Input Gain: ", "dB", 0, false, 265, 20, -36, 36, 0, 0.01, ""));

        //Output Fader
        this.sliderList.push(new Slider(this.pluginDiv, "Output Gain: ", "dB", 1, false, 265, 20, -36, 36, 0, 0.01, ""));

        //Crossover Frequency
        this.sliderList.push(new Slider(this.pluginDiv, "Crossover Frequency: ", "Hz", 20, false, 540, 20, 20, 18000, 0, 1, "PreQ Frequency"));

        //Band 1 Mix
        this.sliderList.push(new Slider(this.pluginDiv, "Band1 Mix: ", "%", 16, false, 130, 20, 0, 100, 100, 0.1, ""));

        //Band 1 Dynamics
        this.sliderList.push(new Slider(this.pluginDiv, "Band1 Dynamics: ", "%", 8, false, 130, 20, -100, 100, 100, 0.01, ""));

        //Band 1 Style
		var band1StyleSlider = new Slider(this.pluginDiv, "Bnd1 Style: ", "", 9, false, 130, 20, 0, 15, 0, 1, "");
		var saturnStyles = ["Clean Tube", "Warm Tube", "Broken Tube", "Clean Tape", "Warm Tape", "Old Tape", "Smooth Amp", "Crunchy Amp", "Lead Amp", "Screaming Amp", "Power Amp", "Gentle Saturation", "Heavy Saturation", "Smudge", "Rectify", "Destroy"];
        this.sliderList.push(band1StyleSlider);
        band1StyleSlider.setStepped(true, saturnStyles);


        //Band 2 Mix
        this.sliderList.push(new Slider(this.pluginDiv, "Band2 Mix: ", "%", 31, false, 130, 20, 0, 100, 100, 0.1, ""));

        //Band 2 Dynamics
        this.sliderList.push(new Slider(this.pluginDiv, "Band2 Dynamics: ", "%", 23, false, 130, 20, -100, 100, 100, 0.01, ""));

        //Band 2 Style
        var band2StyleSlider = new Slider(this.pluginDiv, "Bnd2 Style: ", "", 24, false, 130, 20, 0, 15, 0, 1, "");
        this.sliderList.push(band2StyleSlider);
        band2StyleSlider.setStepped(true, saturnStyles);

        //Spacer
        var spacer = document.createElement("div");
        spacer.style.height = "5px";
        this.pluginDiv.appendChild(spacer);
    }
}

class Pooltec extends PlugIn{

    constructor(type, bgImg){
        super(type, bgImg);
    }

    initSliders(){

        //Spacer
        var spacer = document.createElement("div");
        spacer.style.height = "35px";
        this.pluginDiv.appendChild(spacer);

        //Low Boost Fader
        this.sliderList.push(new Slider(this.pluginDiv, "Low Boost: ", "", 0, false, 268, 20, 0, 11, 0, 0.1, ""));

        //High Boost Fader
        this.sliderList.push(new Slider(this.pluginDiv, "High Boost: ", "", 3, false, 268, 20, 0, 11, 0, 0.1, ""));


        //Low Atten Fader
        this.sliderList.push(new Slider(this.pluginDiv, "Low Atten: ", "", 1, false, 268, 20, 0, 11, 0, 0.1, ""));


        //High Atten Fader
        this.sliderList.push(new Slider(this.pluginDiv, "High Atten: ", "", 6, false, 268, 20, 0, 11, 0, 0.1, ""));



        //Low Frequency Fader
        this.sliderList.push(new Slider(this.pluginDiv, "Low Frequency: ", "Hz", 2, false, 268, 20, 20, 100, 20, 0.01, ""));


        //High Frequency Fader
        this.sliderList.push(new Slider(this.pluginDiv, "High Frequency: ", "KHz", 5, false, 268, 20, 3, 16, 3, 0.01, ""));


        //Bandwidth Fader
        this.sliderList.push(new Slider(this.pluginDiv, "Bandwidth: ", "", 4, false, 150, 20, 0, 11, 0, 0.1, ""));


        //Atten Select Fader
        this.sliderList.push(new Slider(this.pluginDiv, "Atten Sel: ", "", 4, false, 150, 20, 5, 20, 5, 5, ""));

        //Gain Fader
        this.sliderList.push(new Slider(this.pluginDiv, "Gain: ", "dB", 4, false, 150, 20, -18, 18, 0, 0.1, ""));


    }
}

var addPlugin = function(){
	selectorState = document.getElementById("selector").value;
	
	if(selectorState === "FastFilter Go-L"){
		initPlugin(1);
	} else if (selectorState === "FastFilter Go-R"){
		initPlugin(2);
	} else if (selectorState === "Beheader"){
		initPlugin(3);
	} else if (selectorState === "PreQ"){
		initPlugin(4);
	} else if (selectorState === "Creamy"){
		initPlugin(5);
	} else if (selectorState === "FastFilter Go-Q"){
        initPlugin(6);
	} else if (selectorState === "FastFilter Go-C"){
        initPlugin(7);
    } else if (selectorState === "FastFilter Saturday"){
        initPlugin(8);
    } else if (selectorState === "PoolTec"){
        initPlugin(9);
    }

}

var initPlugin = function(type){
	if(type == 1){
		pluginList.push(new FastFilterL(1, "goLbg.png"));
	} else if (type == 2){
		pluginList.push(new FastFilterR(2, "goRbg.png"));
	} else if (type == 3){
		pluginList.push(new Beheader(3, "beheaderbg.png"));
	} else if (type == 4){
		pluginList.push(new PreQ(4, "preqbg.png"));
	} else if (type == 5){
		pluginList.push(new Creamy(5, "creamybg.png"));
	} else if (type == 6){
        pluginList.push(new FastFilterQ(6, "goQbg.png"));
    } else if (type == 7){
        pluginList.push(new FastFilterC(7, "goCbg.png"));
    } else if (type == 8){
        pluginList.push(new FastFilterSaturday(8, "goSatbg.png"));
    } else if (type == 9){
        pluginList.push(new Pooltec(9, "pooltec.png"));
    }

    try{
        sendPluginList(type);
    } catch (e) {
        console.log(e);
    }
}

var saveState = function(){
	
	localStorage.clear();
	stateString = "";
	
	for(var i = 0; i < pluginList.length; i++){
		var plugin = pluginList[i];
		var sliderList = plugin.sliderList;
		
		stateString += "+" + plugin.type + "%" + Number(plugin.bypass);
		
		for(var j = 0; j < sliderList.length; j++){
			
			var parameterNr = sliderList[j].parameterNr;
			var sliderValue = sliderList[j].slider.value;
			
			stateString += "-" + parameterNr + "%" + sliderValue;
			
		}
	}
	
	localStorage.setItem('plugIns', stateString);
}

var loadState = function(){
	
	document.getElementById("plugin-container-inner").innerHTML = '';
	pluginList = [];

	var settings;
	try{
        settings = localStorage.getItem('plugIns');
	} catch {
        settings = "";
    }

    if(settings == null){
    	return;
	}

	var subSettings = settings.split("+");
	
	var params = [];
	
	for(var i = 0; i < subSettings.length; i++){
		params.push(subSettings[i].split("-"));	
	}
	
	params.splice(0, 1);
	
	for(var i = 0; i < params.length; i++){
		var pluginNr = params[i][0].split("%")[0];
		var bypass = params[i][0].split("%")[1];
		
		//console.log("");
		//console.log("PluginNR: " + pluginNr);
		//console.log("Bypass: " + bypass);
		initPlugin(pluginNr);
		//console.log("Bypass (PlugIn): " + pluginList[i].bypass);
		
		if( Number(pluginList[i].bypass) != bypass ){
			 pluginList[i].toggleBypass();  
		}
		
		
		for(var j = 1; j < params[i].length; j++){
			
			var parameterPair = params[i][j].split("%");
			var parameterNr = j-1;
			var parameterValue = parameterPair[1];
			
			//console.log("Parameter: " + parameterNr + ": " + parameterValue);
			try {pluginList[i].sliderList[parameterNr].slider.value = parameterValue;} catch (e) {console.log(e)}
		}
	}
	
	
//	return params;
	
	
}

var loop = function(){
	for(var i = 0; i < pluginList.length; i++){
		pluginList[i].update();
	}
}

var getPluginById = function(ID){
	for(var i = 0; i < pluginList.length; i++){
		if(pluginList[i].id === ID){
			return pluginList[i];
		}
	}
	return undefined;
}

var closePlugin = function(ID){
	var targetPlugin = getPluginById(ID);
	var index = pluginList.indexOf(targetPlugin);
	var pluginDiv = targetPlugin.pluginDiv;
	
	pluginDiv.parentNode.removeChild(pluginDiv);
	
	pluginList.splice(index, 1);
	pluginRemoved();
}

var movePluginUp = function(ID){
	
	var targetPlugin = getPluginById(ID);
	
	var index = pluginList.indexOf(targetPlugin);
	
	var pluginDiv = pluginList[index].pluginDiv;
	
	if(pluginList[index-1] !== undefined){
		pluginDiv.parentNode.insertBefore(pluginDiv, pluginList[index-1].pluginDiv);
		
		var temp = pluginList[index];
	
		pluginList[index] = pluginList[index-1];
		pluginList[index-1] = temp;
	}

	sendPluginList();
}

var movePluginDown = function(ID){
	
	var targetPlugin = getPluginById(ID);
	
	var index = pluginList.indexOf(targetPlugin);
	
	var pluginDiv = pluginList[index].pluginDiv;
	
	if(pluginList[index+2] !== undefined){
		pluginDiv.parentNode.insertBefore(pluginDiv, pluginList[index+2].pluginDiv);
	} else {
		pluginDiv.parentNode.insertBefore(pluginDiv, undefined);
	}
	
	if (pluginList[index+1] !== undefined){
		var temp = pluginList[index];
		pluginList[index] = pluginList[index+1];
		pluginList[index+1] = temp;
	}
    sendPluginList();
}

var bypass = function(ID){
	var targetPlugin = undefined;
	
	for(var i = 0; i < pluginList.length; i++){
		if(pluginList[i].id === ID){
			targetPlugin = pluginList[i];
			break;
		}
	}
	
	targetPlugin.toggleBypass();
}
	
var displayLoadingScreen = function(){
	var darkDiv = document.createElement("div");
	darkDiv.style.position = "fixed";
	darkDiv.style.width = "100%";
	darkDiv.style.height = "100%"; 
	darkDiv.style.background = "rgba(0,0,0,0.4)";
	
	
	var loadingDiv = document.createElement("div");
	loadingDiv.style.position = "fixed";
	loadingDiv.style.width = "100%";
	loadingDiv.style.height = "100%";
	
	loadingDiv.style.background = "url(img/loading.gif) no-repeat center center";
	
	document.body.appendChild(darkDiv);
	document.body.appendChild(loadingDiv);
}


var download = function(ID, filename){
	
	
	var url = "/downloadWAV/" + ID + "&" + filename;
	console.log(url);
//	window.location.replace(url);
	window.open(url,'_blank');
}

setInterval(loop, 30);