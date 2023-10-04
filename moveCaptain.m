
function [xCapt,yCapt,thetaCapt] = moveCaptain (cmd,x,y,theta)

dTheta = pi/8;

if( cmd == "w")
%move forward
endif

if(cmd == "a")
%rotate left
endif
thetaCapt = theta - dTheta;
if(cmd == "d")
%rotate right
thetaCapt = theta + dTheta;
endif
endfunction
