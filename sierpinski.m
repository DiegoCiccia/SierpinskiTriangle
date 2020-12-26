%% 2D and 3D Sierpinski Triangle representation
%Direct and sequential building of the fractal
%% Author: Diego Ciccia


%% 2D Sierpinski Triangle   
%This fractal is obtained starting with three points arranged as
%triangle vertices: a random point is generated and the middle point
%between it and one of the three vertices is computed.A new point is 
%found then by evaluating the middle point between this last point 
%and one of the three vertices selected randomly. This procedure lasts
%for N iterations, at the end of which the Sierpinski figure emerges.

%It is possible to watch the building of the triangle: just uncomment the
%commented sections.

N=1E6;%n° of iterations
a=zeros(N,2);%vector of the coordinates of the points
a(1,:)=[0,0];%vertices
a(2,:)=[1,0];
a(3,:)=[0.5,1];
s=rand(1,2);%first random point
sz=1;

%uncomment for sequential building
% scatter(a(1:3,1),a(1:3,2),sz, 'filled')
% drawnow
% hold on

for i=4:N
    point=randsample(3,1);
    as=a(point,:);
    x=(as(1,1)+s(1,1))/2;%middle point coordinates
    y=(as(1,2)+s(1,2))/2;
    s=[x y];
    a(i,:)=s;
    
%   uncomment for sequential building    
%   scatter(s(1,1),s(1,2),sz, 'filled')
%   drawnow
%   hold on

end

%comment this last line for sequential building
scatter(a(:,1),a(:,2),sz, 'filled')

%% 3D Sierpinski Triangle (Pyramid)
%The following code builds a 3D version of the Sierpinski triangle which 
%acquires the shape of a pyramid while maintaining its properties as a fractal.

%We keep in this case also the sequential building, even if it is
%recommended to build directly the Pyramid since more iterations are
%necessary to determine acceptably its shape.

N=1E6;%n° of iterations
a=zeros(N,3);
a(1,:)=[0.5,0.5,1];%vertices of the pyramid
a(2,:)=[1,0,0];
a(3,:)=[0,0,0];
a(4,:)=[0,1,0];
a(5,:)=[1,1,0];
s=rand(1,3);%first random point
sz=1;

%uncomment for sequential building
% scatter3(a(1:5,1),a(1:5,2), a(1:5,3),sz)
% drawnow
% hold on

for i=6:N
    point=randsample(5,1);
    as=a(point,:);
    x=(as(1,1)+s(1,1))/2;%middle point coordinates
    y=(as(1,2)+s(1,2))/2;
    z=(as(1,3)+s(1,3))/2;
    s=[x y z];
    a(i,:)=s;
    
%   uncomment for sequential building    
%   scatter3(s(1,1),s(1,2), s(1,3),sz, 'filled')
%   drawnow
%   hold on

end

%Comment these last lines for sequential building
scatter3(a(:,1),a(:,2),a(:,3), sz, '.')

