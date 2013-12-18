//transformations 
var canvas = document.getElementById('canvas');
var context = canvas.getContext('2d');

context.fillStyle = "red"; 
context.fillRect(0,0,100,100); 
context.save();

context.translate(200,200);
//Draw same rectangle in the new position
context.fillRect(0,0,100,100);
//Restore previous settings
context.restore();
context.fillStyle = "blue"; 
//Draw something next to the first square
context.arc(150,50,50,0,Math.PI*2,false);
context.fill();
context.save();

context.translate(canvas.width/2,canvas.height/2);
context.rotate(0.78);
context.scale(2,2);
context.strokeRect(0,0,100,100);
context.restore();
context.save();