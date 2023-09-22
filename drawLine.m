
function lineHandle = drawLine ( pointA, pointB, color)
  % This function two points pointA,pointB and draw a line between them
  % with color color
  %extract the x coordinates from the points
  x=[pointA(1) ; pointB(1)];
  y=[pointA(2) ; pointB(2)];

  lineHandle = plot(x,y,color);
set(lineHandle,"LineWidth",3);

endfunction
