Uveg = 1.0;
Usurf = 9.4;

H = 46.7/2;
hb = 13.8; 
hp = hb;

data = load('Figure_2.png.dat');
U_data = data(:,1);
z_data = data(:,2);

[D_drag_vec,h_grass,U0] = Grass_Nepf(H,Usurf,Uveg,hb,hp,data);
[U,Uy,Uyy,z] = grass_base3(500,D_drag_vec(2),h_grass);
Num_den_non_dim = 0.76*(H/hp);
Reynold_num = D_drag_vec(2)/Num_den_non_dim;

% D_drag_vec_collection(length(D_drag_vec_collection)+1) = D_drag_vec(2);
% U0_vec_collection(length(U0_vec_collection)+1) = U0;
% H_grass_vec_collection(length(H_grass_vec_collection)+1) = h_grass;
% Ng_vec_collection(length(Ng_vec_collection)+1) = Num_den_non_dim;
% Re_vec_collection(length(Re_vec_collection)+1) = Reynold_num;
% H_vec_collection(length(H_vec_collection)+1) = H;


z1p = (z+1)*H/hp;
lw = .8;
ms = 1.5;