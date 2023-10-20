
function jellyGraphics = drawJelly2 (x,y,theta,size)


%get jelly fish
jelly = getJelly2(size);

%rotate

R = getRotation(theta);
jellyRotated = R * jelly;

%translate

T = getTranslate(x,y);
jelly = 

%extract the points
pt1 = jelly(:,1);
pt2 = jelly(:,2);
pt3 = jelly(:,3);
pt4 = jelly(:,4);
pt5 = jelly(:,5);
pt6 = jelly(:,6);
pt7 = jelly(:,7);
pt8 = jelly(:,8);
pt9 = jelly(:,9);
pt10 = jelly(:,10);
pt11 = jelly(:,11);
pt12 = jelly(:,12);

%connect the points

%right side
jellyGraphics(1) = drawLine(pt1,pt2,"m");
jellyGraphics(2) = drawLine(pt2,pt3,"m");
jellyGraphics(3) = drawLine(pt3,pt4,"m");
%middle
jellyGraphics(4) = drawLine(pt5,pt6, "m");
jellyGraphics(5) = drawLine(pt6,pt7, "m");
jellyGraphics(6) = drawLine(pt7,pt8,"m");
%right side
jellyGraphics(7) = drawLine(pt9,pt10,"m");
jellyGraphics(8)= drawLine(pt10,pt11,"m");
jellyGraphics(9) = drawLine(pt11,pt12,"m");
%top/bot
jellyGraphics(10) = drawLine(pt12,pt4,"m");
jellyGraphics1 = drawLine(pt1,pt2,"m");
jellyGraphics1 = drawLine(pt1,pt2,"m");

endfunction
