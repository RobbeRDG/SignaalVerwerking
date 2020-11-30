function [nulpunten,stable_nulpunten] = nulp_Butterworth(ord_round)
%NULP_BUTTERWORTH Calculate the zero points of the polynome 
%   -Input(s): 
%       ord_round: Butterworth order
%   -Output(s):
%       nulpunten: All zero points of polynome
%       stable_nulpunten: Only stable zero points of polynome


%Find the zero points
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Calculate all zero points
zero_points = zeros(1,(ord_round*2));
for k = 1:(ord_round*2)
    zero_points(k) = complex(cos(((1+2*k-ord_round)*pi)/(2*ord_round)), sin(((1+2*k-ord_round)*pi)/(2*ord_round)));
end

%Calculate the stable zero points
stable_zero_points = [];
for i = 1:length(zero_points)
    %Only the zero points in the left half plane are stable (== real value<0)
    if real(zero_points(i)) < 0
        stable_zero_points(end+1) = zero_points(i);
    end
end



%Plot the zero points
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Create a circle function
angles = linspace(0, 2*pi, 720);
x = cos(angles); 
y = sin(angles);

%Plot the circle
plot(x,y)
hold on

%find the x and y values of the zero points
x_points = real(zero_points);
y_points = imag(zero_points);

%Plot the zero points
plot(x_points, y_points, 'ro', 'LineWidth', 2, 'MarkerSize', 16);

%find the x and y values of the stable zero points
stable_x_points = real(stable_zero_points);
stable_y_points = imag(stable_zero_points);

%Plot the stable zero points
plot(stable_x_points, stable_y_points, '+', 'LineWidth', 2, 'MarkerSize', 16, 'Color', 'black');

%Figure information
hold off
grid on
title('butterworth zero points')
xlabel('Real')
ylabel('Imaginary')
axis([-1.75 1.75 -1.75 1.75]);
axis square;
legend('unit circle','zero points','stable zero points')



      
%Return the outputs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nulpunten = zero_points;
stable_nulpunten = stable_zero_points;
end

