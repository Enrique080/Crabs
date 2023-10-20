function [xCrab,yCrab,thetaCrab] = moveCrab(cmd,x,y,theta,height,width,size)

dStep = 20;
dTheta = pi/6;

%move left
if(cmd == "j")
xCrab = x + dStep*sin(theta);
yCrab = y - dStep*cos(theta);
thetaCrab = theta;

%move right
elseif(cmd == "l")
xCrab = x - dStep*sin(theta);
yCrab = y + dStep*cos(theta);
thetaCrab = theta;

%move back
elseif(cmd == "k")
xCrab = x - dStep*cos(theta);
yCrab = y - dStep*sin(theta);
thetaCrab = theta;

% rotate right
elseif(cmd == "i")
xCrab = x;
yCrab = y ;
thetaCrab = theta + dTheta;

% rotate left
elseif(cmd == "i")
xCrab = x;
yCrab = y ;
thetaCrab = theta - dTheta;

else
xCrab = x;
yCrab = y ;
thetaCrab = theta;

endif

endfunction
