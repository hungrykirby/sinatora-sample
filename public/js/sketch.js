var bug;

function setup() {
    createCanvas(windowWidth, windowHeight);
    bug = new Jitter();
}

function draw() {
  background(200);
  bug.move();
  bug.display();
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}

// Jitter class
function Jitter() {
  this.x = random(width);
  this.y = random(height);
  this.diameter = random(10, 30);
  this.speed = 1;

  this.move = function() {
    this.x += random(-this.speed, this.speed);
    this.y += random(-this.speed, this.speed);
  };

  this.display = function() {
    ellipse(this.x, this.y, this.diameter, this.diameter);
  }
};
