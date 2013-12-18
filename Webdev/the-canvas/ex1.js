var canvas = document.getElementById('canvas');
var context = canvas.getContext('2d');
context.fillStyle = "rgb(255, 0, 0)";

context.beginPath();
context.moveTo(40,40);
context.lineTo(440,40);
context.closePath();
context.stroke();

context.strokeRect(100,100,100,100);

context.beginPath();
context.arc(200,90,40,20,Math.PI *2, false);
context.closePath();
context.stroke();