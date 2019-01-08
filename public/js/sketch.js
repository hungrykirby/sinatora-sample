var s = function( sketch ) {

  var x = 100; 
  var y = 100;

  sketch.setup = function() {
    sketch.createCanvas(sketch.windowWidth, sketch.windowHeight);
  };

  sketch.windowResized = function() {
    sketch.resizeCanvas(sketch.windowWidth, sketch.windowHeight);
  }

  sketch.draw = function() {
    sketch.background(0);
    sketch.fill(255);
    sketch.rect(sketch.windowWidth/10,y,50,50);
  };
};

var myp5 = new p5(s, document.getElementById('p5sketch'));