const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;
const startAngle = 0;
const endAngle = Math.PI * 2;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let circleArray = [];

function Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed)
{
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.color = color;
    this.horizontalMovementSpeed = horizontalMovementSpeed;
    this.verticalMovementSpeed = verticalMovementSpeed;

    this.drawCircle = function()
    {
        canvas2DContextVariable.beginPath();
        canvas2DContextVariable.arc(this.x, this.y, this.radius, startAngle, endAngle);
        this.gradient = canvas2DContextVariable.createRadialGradient(this.x - (this.radius/2), this.y - (this.radius/2), 0, this.x, this.y, this.radius);
        this.gradient.addColorStop(0.2, '#FFFFFF');
        this.gradient.addColorStop(1.0, this.color + "CC");
        canvas2DContextVariable.fillStyle = this.gradient;
        canvas2DContextVariable.fill();
    };

    this.moveCircle = function()
    {
        if (this.x + this.radius > window.innerWidth || this.x - this.radius < 0)
        {
            this.horizontalMovementSpeed = - this.horizontalMovementSpeed;
        }
        this.x = this.x + this.horizontalMovementSpeed;
        if (this.y + this.radius > window.innerHeight || this.y - this.radius < 0)
        {
            this.verticalMovementSpeed = - this.verticalMovementSpeed;
        }
        this.y = this.y + this.verticalMovementSpeed;
        this.drawCircle();
    };
}

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    let x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed;
    for (let i = 0; i < totalCircles; i++)
    {
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        horizontalMovementSpeed = Math.random() - 0.5;
        verticalMovementSpeed = Math.random() - 0.5;
        circleArray.push(new Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed));
    }
}

function initializeCanvas()
{
    resizeCanvas();
    drawCircles();
}

function animateMovingCircles()
{
    window.requestAnimationFrame(animateMovingCircles);
    canvas2DContextVariable.clearRect(0, 0, window.innerWidth, window.innerHeight);
    for (let i = 0; i < circleArray.length; i++)
    {
        circleArray[i].moveCircle();
    }
}

window.addEventListener('resize', function()
{
    resizeCanvas();
    drawCircles();
});

initializeCanvas();
animateMovingCircles();