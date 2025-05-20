let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

let x, y, radius;
const startAngle = 0;
const endAngle = Math.PI * 2;

for (let i = 0; i < 200; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    canvas2DContextVariable.stroke();
}

window.addEventListener('resize', function()
{
    resizeCanvas();
});

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}