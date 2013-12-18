//http://www.w3schools.com/tags/ref_canvas.asp
var canvas = document.getElementById('canvas');
var context = canvas.getContext('2d');
//context.strokeStyle = 'goldenrod';
createBoxes();	

context.canvas.onmousedown = function(e){
	context.clearRect(0, 0, canvas.width, canvas.height);
	createBoxes();
}


function createBoxes(){
	for(var i=0;i<30;i++){
	
	var lw = Math.floor(Math.random()*10)+1;
	var sizeX = Math.floor(Math.random() * 100)+10;
	var sizeY = Math.floor(Math.random() * 100)+10;
	var x = Math.random() * canvas.width-sizeX;
	var y = Math.random() * canvas.height-sizeY;
	context.lineWidth = lw;
	context.strokeRect(x,y,sizeX,sizeY);	
	}
}