var s = function( sketch ) {

  var x = 100; 
  var y = 100;

  let w = 0;

  sketch.setup = function() {
    w = sketch.windowWidth*0.6;
    sketch.createCanvas(w, sketch.windowHeight);
  };

  sketch.windowResized = function() {
    w = sketch.windowWidth*0.6;
    sketch.resizeCanvas(w, sketch.windowHeight);
  }

  sketch.draw = function() {
    sketch.background(0);
    sketch.fill(255);
    sketch.rect(sketch.windowWidth/10,y,50,50);
  };
};

var myp5 = new p5(s, document.getElementById('p5sketch'));