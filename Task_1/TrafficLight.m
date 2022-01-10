figure;
%Grid
x=[0 0 10 10 0];
y=[0 10 10 0 0];
plot(x,y)
hold on;
% BlackRec
x=[4 4 6 6 4];
y=[3 9 9 3 3];
plot(x,y)
fill(x,y,'k');
hold on;
% GreyRec
x=[4.5 4.5 5.5 5.5 4.5];
y=[3 0 0 3 3];
plot(x,y)
Grey=[0.5 0.5 0.5];
fill(x,y,Grey)
hold on;
% Red
r=0.8;
th=0:0.1:360;
x1=r*cosd(th)+5;
y1=r*sind(th)+8;
plot(x1,y1)
DimmedRed=[0.5 0 0];
fill(x1,y1,DimmedRed);
hold on;
% Yellow
r=0.8;
th=0:0.1:360;
x2=r*cosd(th)+5;
y2=r*sind(th)+6;
plot(x2,y2)
DimmedYellow=[0.5 0.5 0];
fill(x2,y2,DimmedYellow);
hold on;
% Green
r=0.8;
theta1=0:0.1:360;
x3=r*cosd(th)+5;
y3=r*sind(th)+4;
plot(x3,y3)
DimmedGreen=[0 0.5 0];
fill(x3,y3,DimmedGreen);
hold on;

%while loop
while true
    fill(x1,y1,'r');
    pause(3);
    fill(x1,y1,DimmedRed);
    
    fill(x2,y2,'y');
    pause(3);
    fill(x2,y2,DimmedYellow);
    
    fill(x3,y3,'g');
    pause(3);
    fill(x3,y3,DimmedGreen); 
end