//BASIC LOG
//console.log("hello there");

//this is a comment

//VARIABLES
/*
var x = 10;
var y = 20;
var z = x + y;

console.log(z);
*/


//DOCUMENT WRITE
//go on the DOM
/*
var hello = 'hello world';
document.write(hello);
*/

//PROMPT
/*
var name = prompt('What is your name?', '');

document.write('<p>Welcome ' + name + '</p>');
*/

//LOOPS
/*
for (var i=1; i<=100; i++) {
 document.write('Number ' + i + '<br>');
}
*/

//SELECTORS
/*
var div = document.querySelector('#square');

var change_color = function(e) {
    div.style.background = 'green';
}

div.addEventListener( 'click', change_color );
*/


//FUNCTIONS
/*
function addValues(value1, value2){
	return value1 + value2;
}

console.log(addValues(100, 200));
*/


//FUNCTIONS
//1
function echo(what){
	console.log(what);
}

echo("time time time");

//2
var echoAgain = function(what){
	console.log(what);
}

echoAgain("more more more");

