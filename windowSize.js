let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

window.addEventListener('resize', function()
{
    resizeCanvas();
});

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}