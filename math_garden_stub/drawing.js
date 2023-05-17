const BACKGROUND_COLOUR = "#000000";
const LINE_COLOUR = "#BCFF00";
const LINE_WIDTH = 15;

var currentX = 0;
var currentY = 0;
var prevX = 0;
var prevY = 0;

var canvas;
var context;

function prepareCanvas() {
	console.log("Preparing Canvas");
	canvas = document.getElementById("mycanvas");
	context = canvas.getContext("2d");

	context.fillStyle = BACKGROUND_COLOUR;
	context.fillRect(0, 0, canvas.clientWidth, canvas.clientHeight);

	context.strokeStyle = LINE_COLOUR;
	context.lineWidth = LINE_WIDTH;
	context.lineJoin = "round";

	var isPainting = false;

	document.addEventListener('mousedown', function (event) {
		console.log("mouse pressed");
		isPainting = true;
		currentX = event.clientX - canvas.offsetLeft;
		currentY = event.clientY - canvas.offsetTop;
	});

	document.addEventListener('mousemove', function (event) {
		if (isPainting) {
			prevX  = currentX;
			currentX = event.clientX - canvas.offsetLeft;

			prevY = currentY;
			currentY = event.clientY - canvas.offsetTop;

			draw();
		}
	});

	
	document.addEventListener('mouseup', function (event) {
		console.log("mouse released");
		isPainting = false;
	});

	canvas.addEventListener('mouseleave', function (event) {
		isPainting = false;
		console.log("left canvas");
	});


	//touch events
	canvas.addEventListener('touchstart', function (event) {
		isPainting = true;
		currentX = event.touches[0].clientX - canvas.offsetLeft;
		currentY = event.touches[0].clientY - canvas.offsetTop;
	});

	canvas.addEventListener('touchend', function (event) {
		console.log("touched");
		isPainting = false;
	});

	canvas.addEventListener('touchcancel', function (event) {
		isPainting = false;
	});

	canvas.addEventListener('touchmove', function (event) {
		if (isPainting) {
			prevX  = currentX;
			currentX = event.touches[0].clientX - canvas.offsetLeft;

			prevY = currentY;
			currentY = event.touches[0].clientY - canvas.offsetTop;
			draw();
		}
	});

}

function draw() {
	context.beginPath();
	context.moveTo(prevX, prevY);
	context.lineTo(currentX, currentY);
	context.closePath();
	context.stroke();
}

function clearCanvas() {
	currentX = 0;
	currentY = 0;
	prevX = 0;
	prevY = 0;
	context.fillRect(0, 0, canvas.clientWidth, canvas.clientHeight)
	console.log("canvas cleared");
}
