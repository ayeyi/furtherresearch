% Plotting Exponential vs. Logistic

% first graph - exponential
%2002-2030
a=18.39/100; %growth rate
No=30; % inital condition in 2002
f=@(t,y)a*No*exp(a*t);
yo=No;
[t,y]=ode45(f,[-1 30],yo);
start_year = 2002;
x_shifted = t + (start_year - min(t));

%2002-2023
g=@(t,y3)a*No*exp(a*t);
yo=No;
[t,y3]=ode45(f,[-1 20],yo);
start_year = 2002;
x_shifted3 = t + (start_year - min(t));

%Real Values
t2=[2002 2010 2012 2014 2021 2023];
y2 =[30 464 570 631 1253 1418];

%plotting everything together
figure;
plot( t2, y2, x_shifted3,y3,"k-.", "LineWidth", 2);
xlabel("Years")
ylabel("Student Population")
legend("Actual Values", "Exponential")
title("AU:Comparison of Exponential Model and Actual Values")
xlim([2002 2023])
grid on;

%plotting Exponential Model
figure;
plot(x_shifted, y, "r-.", "LineWidth", 2)
title("Exponential Model")
xlabel("Years")
ylabel("Student Population")
xlim([2002 2030])
grid on;
