function crabs(level)

%set the number of jelly fish
numJelly = level;
numCrabs = 1;
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth] = drawMap( "BGImage.png" );
% Initialize captain location, heading and size

xCapt = 500;
yCapt = 1000;
thetaCapt = -pi/2;
sizeCapt = 50;
healthCapt = 100
crabsCaught = 0;

%initialize crab location, heading and size
xCrab =rand(1,numCrabs)*mapWidth;
yCrab = rand*mapHeight/4 + 3*mapHeight/4;
thetaCrab = ones(1,numCrabs)*(-pi/2);
sizeCrab = 50;

%initialize jellyfish
xJelly = rand(1,numJelly)*mapWidth;
yJelly = rand(1,numJelly)*mapHeight;
thetaJelly = ones(1,numJelly)*(-pi/2);
sizeJelly = 25;
jellySting = 2;


% Draw the captain and initialize graphics handles
%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
[captGraphics, xPoint, yPoint] = drawCapt(xCapt , yCapt , thetaCapt , sizeCapt);

%draw crabs
For c = 1: numCrabs
crabGraphics(:,c) = drawCrab(xCrab(c),yCrab(c),thetaCrab(c),sizeCrab);
endfor

%draw Jelly fish
for k=1:numJelly
jellyGraphics(:,k) = drawJelly(xJelly(k),yJelly(k),thetaJelly(k),sizeJelly);
endfor

% input and output arguments.
%*******************************************************

% print health status
  healthLoc = [100,100];
  crabsCaughtLoc = [100,175];
  healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ',num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
  crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ',num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');

while(1)

%remove old and plot new health and points status to screen
delete(healthStatus);
delete(crabsCaughtStatus);

healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ',num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2),
strcat('Crabs Caught = ', num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');

% draw the Jellyfish

for k=1:numJelly
  
% erase old jellyfish
    for i=1:length(jellyGraphics(:,k))
     delete(jellyGraphics(i,k));
endfor

  % move jellyfish
  [xJelly(k),yJelly(k),thetaJelly(k)] = moveJelly(level, xJelly(k), yJelly(k),thetaJelly(k), sizeJelly, mapHeight, mapWidth);

  % draw jellyfish
  jellyGraphics(:,k) = drawJelly(xJelly(k),yJelly(k),thetaJelly(k),sizeJelly);
  
 
 %jelly sting

for k=1:numJelly
   if ( getDist(xJelly(k),yJelly(k),xCapt,yCapt) < 3*sizeCapt )
  healthCapt = healthCapt - jellySting;
   endif
endfor

% read the keyboard
  cmd = kbhit(1);
  if (cmd == 'Q')
  break;
  endif

%initial command
%cmd = "null";

%while(cmd != "Q")

%cmd = kbhit();
 if((cmd == "w") || (cmd == "a") || (cmd == "d"))

%erase old captGraphics
 for(i=1: length(captGraphics))
 set( captGraphics(i), 'Visible', 'off');
 endfor

%move captain
  [xCapt, yCapt,thetaCapt] = moveCaptain(cmd, xCapt, yCapt, thetaCapt, mapWidth, mapHeight);

%draw new captain
  [captGraphics, xPoint, yPoint] = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);

  elseif (cmd == "i" || cmd == "j" || cmd == "k" || cmd == "l" || cmd ==",") % respond crab moved

%erase old crab
  for i=1:length(crabGraphics)
  set(crabGraphics(i),'Visible','off');
  endfor

%move crab
  [xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,sizeCrab, mapHeight, mapWidth);

%draw new captain and crab
  crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);

  endif

  if((cmd == "f") || (cmd == "g"))

%erase old captGraphics
   for(i=1: length(captGraphics))
   set( captGraphics(i), 'Visible', 'off');
   endfor

  [sizeCapt] = getHulk(cmd, sizeCapt);

  captGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);

endif

%crab is caught
  d= getDist(xPoint,yPoint,xCrab,yCrab)
if( getDist(xPoint,yPoint,xCrab,yCrab) < 2*sizeCapt ) 
  
%keep track of how many crabs are caught
  crabsCaught = crabsCaught +1;
  
%erase old crab
  for i=1:length(crabGraphics)
    delete(crabGraphics(i));
  endfor

%create a new crab. initialize new crab location, heading and size
  xCrab = rand*mapWidth;
  yCrab = rand*mapHeight;
  thetaCrab = -pi/2;
  sizeCrab = 50;
  
%draw new crab
crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);
endif

fflush(stdout);
pause(.01)
endwhile


 close all
 clear

endfunction


