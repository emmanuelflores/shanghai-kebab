//http://www.w3schools.com/tags/ref_canvas.asp
var canvas = document.getElementById('canvas');
var context = canvas.getContext('2d');

//events handlers
context.canvas.onmousedown = function(e){
	console.log("moused pressed: " + e.x + " "+e.y);
/*
	context.beginPath(); 
	context.arc(e.x, e.y, 50, 0, Math.PI*2, false); 
	context.closePath(); 
	context.stroke(); 
*/
	context.clearRect(0, 0, canvas.width, canvas.height);
}

context.canvas.onmousemove = function(e){
	//console.log("mouse moved: " + e.x + " " + e.y);
	
	context.beginPath(); 
	context.arc(e.x, e.y, 50, 0, Math.PI*2, false); 
	context.closePath(); 
	context.stroke(); 
	
}

/*
context.canvas.onclick = function(e){
	console.log("clicking!");
}
*/

/*
context.beginPath(); // Start the path
context.arc(230, 90, 50, 0, Math.PI*2, false); // Draw a circle 
context.closePath(); // Close the path
context.stroke(); // Fill the path
*/