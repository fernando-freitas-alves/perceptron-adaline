clc
clear
close all

load dataset1.txt

X=dataset1;

X1=X(find(X(:,3)==1),:);
X2=X(find(X(:,3)==2),:);
X3=X(find(X(:,3)==3),:);

hold on
plot(X1(:,1),X1(:,2),'+');
plot(X2(:,1),X2(:,2),'r+');
plot(X3(:,1),X3(:,2),'g+');

axis([-10 10 -10 10])
xlabel('x1');
ylabel('x2');
legend('classe 1', 'classe 2','clase3')
title('Dataset1')
grid on





