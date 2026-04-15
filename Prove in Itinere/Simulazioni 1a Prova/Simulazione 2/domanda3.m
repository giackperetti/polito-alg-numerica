clear;

u = [1057,1218,91];
v = [-151,-174,-13];
w = [-6,-5,16];

% B) w perperndicolare sia a v che a u
w_dot_v = dot(w,v);
w_dot_u = dot(w,u);


if w_dot_v == w_dot_u && w_dot_v == 0
    disp('vero, w perperndicolare sia a v che a u')
end

% C) u e v paralleli
u_cross_v = cross(u,v);

if u_cross_v == 0
    disp('vero, u e v paralleli')
end
