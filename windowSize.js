var canvasVariable = document.querySelector('canvas');

canvasVariable.width = window.innerWidth;
canvasVariable.height = window.innerHeight;

window.addEventListener('resize', function()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
});