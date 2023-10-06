function crabs ()



% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth] = drawMap( "BGImage.png" );
% Initialize captain location, heading and size

xCapt = 500;
yCapt = 1000;

thetaCapt = -pi/2;
sizeCapt = 50;

% Draw the captain and initialize graphics handles
%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
captGraphics = drawCapt(xCapt , yCapt , thetaCapt , sizeCapt);
% input and output arguments.
%*******************************************************

%initial command
cmd = "null";

while(cmd != "Q")

cmd = kbhit();

 if((cmd == "w") || (cmd == "a") || (cmd == "d"))
 
 %erase old captGraphics
 for(i=1: length(captGraphics))
 set( captGraphics(i), 'Visible', 'off');
endfor

 %move captain
[xCapt, yCapt,thetaCapt] = moveCaptain(cmd, xCapt, yCapt, thetaCapt, mapWidth, mapHeight);

%draw new captain
captGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);

 endif 

endwhile

close all

endfunction


