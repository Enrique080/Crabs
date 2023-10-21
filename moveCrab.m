function [xCrab,yCrab,thetaCrabs] = moveCrab(cmd,x,y,theta,height,width,size)

dStep = 20;
dTheta = pi/6;

%move left
if(cmd == "j")
xCrab = x + dStep*sin(theta);
yCrab = y - dStep*cos(theta);
thetaCrabs = theta;

%move right
elseif(cmd == "l")
xCrab = x - dStep*sin(theta);
yCrab = y + dStep*cos(theta);
thetaCrabs = theta;

%move back
elseif(cmd == "k")
xCrab = x - dStep*cos(theta);
yCrab = y - dStep*sin(theta);
thetaCrabs = theta;

% rotate right
elseif(cmd == "i")
xCrab = x;
yCrab = y ;
thetaCrabs = theta + dTheta;

% rotate left
elseif(cmd == ",")
xCrab = x;
yCrab = y ;
thetaCrabs = theta - dTheta;

else
xCrab = x;
yCrab = y ;
thetaCrabs = theta;

endif

endfunction
