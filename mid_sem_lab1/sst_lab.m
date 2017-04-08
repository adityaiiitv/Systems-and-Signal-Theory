clear all;
close all;
M=rand(10,5)

v1=M(:,1)
u1=M(:,1)
b1=u1/norm(u1)

v2=M(:,2)
u2=v2-dot(v2,b1).*b1
b2=u2/norm(u2)

v3=M(:,3)
u3=v3-dot(v3,b1).*b1-dot(v3,b2).*b2
b3=u3/norm(u3)

v4=M(:,4)
u4=v4-dot(v4,b1).*b1-dot(v4,b2).*b2-dot(v4,b3).*b3
b4=u4/norm(u4)

v5=M(:,5)
u5=v5-dot(v5,b1).*b1-dot(v5,b2).*b2-dot(v5,b3).*b3-dot(v5,b4).*b4
b5=u5/norm(u5)
