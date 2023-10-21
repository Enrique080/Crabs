function [xCrab,yCrab,thetaCrabs] = moveCrab(cmd,x,y,theta,height,width,size)

dStep = 20;
dTheta = pi/6;

%move left
if(cmd == "j")
xCrab = x + dStep*sin(theta);
yCrab = y - dStep*cos(theta);
<<<<<<< HEAD
thetaCrabs = theta;
=======
thetaCrab = theta;
>>>>>>> 6346e748cb3e5965e9e9a72ce561336aed47ca8c

%move right
elseif(cmd == "l")
xCrab = x - dStep*sin(theta);
yCrab = y + dStep*cos(theta);
<<<<<<< HEAD
thetaCrabs = theta;
=======
thetaCrab = theta;
>>>>>>> 6346e748cb3e5965e9e9a72ce561336aed47ca8c

%move back
elseif(cmd == "k")
xCrab = x - dStep*cos(theta);
yCrab = y - dStep*sin(theta);
<<<<<<< HEAD
thetaCrabs = theta;
=======
thetaCrab = theta;
>>>>>>> 6346e748cb3e5965e9e9a72ce561336aed47ca8c

% rotate right
elseif(cmd == "i")
xCrab = x;
yCrab = y ;
<<<<<<< HEAD
thetaCrabs = theta + dTheta;
=======
thetaCrab = theta + dTheta;
>>>>>>> 6346e748cb3e5965e9e9a72ce561336aed47ca8c

% rotate left
elseif(cmd == ",")
xCrab = x;
yCrab = y ;
<<<<<<< HEAD
thetaCrabs = theta - dTheta;
=======
thetaCrab = theta - dTheta;
>>>>>>> 6346e748cb3e5965e9e9a72ce561336aed47ca8c

else
xCrab = x;
yCrab = y ;
<<<<<<< HEAD
thetaCrabs = theta;
=======
thetaCrab = theta;
>>>>>>> 6346e748cb3e5965e9e9a72ce561336aed47ca8c

endif

endfunction
