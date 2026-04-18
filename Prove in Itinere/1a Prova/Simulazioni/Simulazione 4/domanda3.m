clear;

u = [9, -11, 5];
v = [-151, -174, -111];
w = [-6, -5, 16];

% A) u e v sono perpendicolari
u_dot_v = dot(u, v);
if u_dot_v == 0
    disp('Vera A: u e v sono perpendicolari (prodotto scalare nullo)')
end

% B) Il seno dell'angolo compreso tra u e v è zero
sin_theta = norm(cross(u, v)) / (norm(u) * norm(v));
if sin_theta == 0
    disp('Vera B: il seno dell''angolo tra u e v è zero')
end

% C) u e v sono paralleli
if norm(cross(u, v)) == 0
    disp('Vera C: u e v sono paralleli (prodotto vettoriale nullo)')
end

% D) w è perpendicolare ad entrambi i vettori u e v
w_dot_u = dot(w, u);
w_dot_v = dot(w, v);
if w_dot_u == 0 && w_dot_v == 0
    disp('Vera D: w è perpendicolare sia a u che a v')
end