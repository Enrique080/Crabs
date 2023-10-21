function [xJelly,yJelly,thetaJelly] = moveJelly(level, x, y, theta, size, height, width)


dStep = 20 + level;

%moveJelly
thetaJelly = theta;
yJelly = y + dStep;
xJelly = x;

% return a y-position increased by step, but return the same x and theta values
if (yJelly > height-10*size)
  yJelly = size;
  xJelly = rand * width;

endif

endfunction
