

function theta = getAngle (xPoint, yPoint, xCrab, yCrab)

  xDanger = xPoint - xCrab
  yDanger = yPoint - yCrab
  
 if (xDanger  == 0 || yDanger == 0 ) % on axis
   
   if (xDanger == 0 && yDanger == 0)
     theta = 0;
    elseif(xDanger !=0 && yDanger == 0) % on the x-axis
      if (xDanger > 0 )
        theta = 0;
      else
        theta = pi;
      endif
      
     else % on y axis
      
        if(yDanger > 0) 
          theta =pi/2
        else
          theta = 3*pi/2;
          endif
      endif
  else % not on axis
      
    alpha = atan( abs(yDanger/ xDanger));
      
    if(xDanger > 0 && yDanger > 0) % quadrant 1
        theta = alpha;
    elseif(xDanger > 0 && yDanger >0) %quadrabt 2
        theta = pi - alpha;
    elseif (xDanger > 0 && yDanger > 0) % quadrabnt 3
        theta = pi + alpha; 
        
        
   endif
 endif
endfunction
