% Bei Winkel a= pi/4 erreicht W für gegebenes v_0 sein Maximum

% g: Erdbeschleunigung
g = 9.81;
% W: Wurfweite eines Körpers
W = @(v_0, a) (v_0.^2 .* sin(2.*a)) ./ g;

% v_0: Anfangsgeschwindigkeit [0, 100]
% a: Winkel gegen die Horizontal abgeworfen wird
[v_0, a] = meshgrid(0:0.1:100, 0:0.1:pi/2);

% Resultate
w_0 = W(v_0, a);

% Zeichne Figuren
draw_meshc(v_0, a, w_0);
draw_contour(v_0, a, w_0);
draw_surface(v_0, a, w_0);


function [] = draw_meshc(v,a,w)
% Zeichne 3D mit Höhenlinien
% v: Anfangsgeschwindigkeit 
% a: Abwurfwinkel
% w: Resultate W
figure('Name','meshc');
meshc(v, a, w);
xlabel('v_0');
ylabel('a');
zlabel('W');
end

function [] = draw_contour(v,a,w)
% Zeichne 2D mit nur den Höhenlinien
% v: Anfangsgeschwindigkeit 
% a: Abwurfwinkel
% w: Resultate W
figure('Name','contour'); 
contour(v, a, w);
xlabel('v_0');
ylabel('a');  
end

function [] = draw_surface(v,a,w)
% Zeichne 2D mit fliessenden farblichen Übergängen
% v: Anfangsgeschwindigkeit 
% a: Abwurfwinkel
% w: Resultate W
figure('Name','surface');
surface(v, a, w);
xlabel('v_0');
ylabel('a');
colorbar();    
end
