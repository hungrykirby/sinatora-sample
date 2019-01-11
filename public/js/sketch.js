var s = function( sketch ) {

  var x = []; 
  var y = [];
  var d = [];

  let w = 0;
  let h = sketch.windowHeight - 50;

  let pX = []; //あるタイミングで描画する点
  let pY = [];
  const pLength = 10;

  sketch.setup = function() {
    w = sketch.windowWidth*0.6;
    sketch.createCanvas(w, h);
    for(var i = 0; i < 100; i++){
      x.push(sketch.random(0, w));
      y.push(sketch.random(0, sketch.windowHeight));
      d.push(sketch.random(15, 25));
    }
    for(var i = 0; i < pLength; i++){
      const _index = Math.floor(sketch.random(0, x.length));
      pX.push(x[_index]);
      pY.push(y[_index]);
    }
  };

  sketch.windowResized = function() {
    w = sketch.windowWidth*0.6;
    sketch.resizeCanvas(w, h);
  }

  sketch.draw = function() {
    sketch.background(0);
    sketch.noFill();
    sketch.stroke(200);
    sketch.strokeWeight(1);

    for(var i = 0; i < x.length; i++){
      drawPis(x[i], y[i], d[i]);
    }

    for(var i = 0; i < pLength - 1; i++){
      sketch.line(pX[i], pY[i], pX[i+1], pY[i+1]);
    }
    if(sketch.frameCount % 20 === 0){
      let count = 0;
      while(true){
        const _index = Math.floor(sketch.random(0, x.length));
        let newX = x[_index];
        let newY = y[_index];
        count++;
        if(count > 30 || sketch.dist(pX[pLength - 1], pY[pLength - 1], newX, newY) < 100){
          pX.shift();
          pY.shift();
          pX.push(newX);
          pY.push(newY);
          break;
        }
      }
    }
//    for(var i = 0; i < x.length; i++){
//      for(var j = 0; j < x.length; j++){
//        if(i === sketch.frameCount % 100){
//          sketch.line(x[i], y[i], x[j], y[j])
//        };
//      }
//    }
  };
  
  const drawPis = function(x, y, d){
    const fc = sketch.frameCount;

    const r = 60;

    sketch.arc(x, y, d, d, radians(0+fc), radians(0+r+fc) );
    sketch.arc(x, y, d, d, radians(90+fc), radians(90+r+fc) );
    sketch.arc(x, y, d, d, radians(180+fc), radians(180+r+fc) );
    sketch.arc(x, y, d, d, radians(270+fc), radians(270+r+fc) );
  }

  const radians = function(i){
    return sketch.radians(i);
  }

};

var myp5 = new p5(s, document.getElementById('p5sketch'));