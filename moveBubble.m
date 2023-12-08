
function [xBubble,yBubble] = moveBubble (xBubble, yBubble, xMouth, yMouth, maxBubbleSize);
 
 %moveBubble
yBubble = yMouth - yBubble;
xBubble = yMouth - xBubble;

endfunction
