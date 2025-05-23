const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;
const startAngle = 0;
const endAngle = Math.PI * 2;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let x, y, radius, color, gradient;

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function initializeCanvas()
{
    //Leaving empty for now
}

window.addEventListener('resize', function()
{
    resizeCanvas();
});

resizeCanvas();

for (let i = 0; i < totalCircles; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
    gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
    gradient.addColorStop(0.2, '#FFFFFF');
    gradient.addColorStop(1.0, color + "CC");
    canvas2DContextVariable.fillStyle = gradient;
    canvas2DContextVariable.fill();
}