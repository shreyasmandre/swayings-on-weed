D_drag_vec_collection = [];

U0_vec_collection  = [];
H_grass_vec_collection = [];
Mut_vec_collection = [];
Re_vec_collection = [];
Ng_vec_collection = [];
H_vec_collection = [];

Uveg = 2.8;
Usurf = 6.64;
U_friction = 2.32;
H = 10.;
hb = 16.2; 
hp = 16.0;
load Vivoni_Fig_3_6a1_25.dat;
U_data = Vivoni_Fig_3_6a1_25(:,1);
z_data = Vivoni_Fig_3_6a1_25(:,2);

[D_drag_vec,h_grass,U0] = Grass_vivoni(H,Usurf,Uveg,hb,hp,Vivoni_Fig_3_6a1_25);
[U,Uy,Uyy,z] = grass_base3(500,D_drag_vec(2),h_grass);
Num_den_non_dim = 0.76*(H/hp);
Reynold_num = D_drag_vec(2)/Num_den_non_dim;

D_drag_vec_collection(length(D_drag_vec_collection)+1) = D_drag_vec(2);
U0_vec_collection(length(U0_vec_collection)+1) = U0;
H_grass_vec_collection(length(H_grass_vec_collection)+1) = h_grass;
Ng_vec_collection(length(Ng_vec_collection)+1) = Num_den_non_dim;
Re_vec_collection(length(Re_vec_collection)+1) = Reynold_num;
H_vec_collection(length(H_vec_collection)+1) = H;


z1p = (z+1)*H/hp;
lw = .8;
ms = 1.5;


% fileID = fopen('Vivoni_Fig3_6a_125_numerical.dat','w');
% A = [U'*U0; (z+1)'*(H/hp)];
% fprintf(fileID,'%6s %12s\n','U','z/hp');
% fprintf(fileID,'%6.2f %12.8f\n',A);
% fclose(fileID);

figure(1)
plot(U*U0,(z+1)*(H/hp),'--b',U_data,z_data,'-bo','LineWidth',lw,'MarkerSize',ms); hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Uveg = 3.07;
Usurf = 9.03;
U_friction = 2.40;
H = 12.;
hb = 17;
hp = 16.0;
load Vivoni_Fig_3_6a1_50.dat;
U_data = Vivoni_Fig_3_6a1_50(:,1);
z_data = Vivoni_Fig_3_6a1_50(:,2);
[D_drag_vec,h_grass,U0] = Grass_vivoni(H,Usurf,Uveg,hb,hp,Vivoni_Fig_3_6a1_50);
D_drag_vec_collection(length(D_drag_vec_collection)+1) = D_drag_vec(2);
Num_den_non_dim = 0.76*(H/hp);
Reynold_num = D_drag_vec(2)/Num_den_non_dim;

U0_vec_collection(length(U0_vec_collection)+1) = U0;
H_grass_vec_collection(length(H_grass_vec_collection)+1) = h_grass;
Ng_vec_collection(length(Ng_vec_collection)+1) = Num_den_non_dim;
Re_vec_collection(length(Re_vec_collection)+1) = Reynold_num;
H_vec_collection(length(H_vec_collection)+1) = H;
 [U,Uy,Uyy,z] = grass_base3(500,D_drag_vec(2),h_grass);
 
 
%  fileID = fopen('Vivoni_Fig3_6a_150_numerical.dat','w');
%  A = [U'*U0; (z+1)'*(H/hp)];
%  fprintf(fileID,'%6s %12s\n','U','z/hp');
%  fprintf(fileID,'%6.2f %12.8f\n',A);
%  fclose(fileID);


plot(U*U0,(z+1)*(H/hp),'--r',U_data,z_data,'-ro','LineWidth',lw,'MarkerSize',ms); hold on



Uveg = 2.6;
Usurf = 9.21;
U_friction = 2.63;
H = 14.;
hb= 18.;
hp =16.;
load Vivoni_Fig_3_6a1_75.dat;
U_data = Vivoni_Fig_3_6a1_75(:,1);
z_data = Vivoni_Fig_3_6a1_75(:,2);
[D_drag_vec,h_grass,U0] = Grass_vivoni(H,Usurf,Uveg,hb,hp,Vivoni_Fig_3_6a1_75);
Num_den_non_dim = 0.76*(H/hp);
Reynold_num = D_drag_vec(2)/Num_den_non_dim;

D_drag_vec_collection(length(D_drag_vec_collection)+1) = D_drag_vec(2);
U0_vec_collection(length(U0_vec_collection)+1) = U0;
H_grass_vec_collection(length(H_grass_vec_collection)+1) = h_grass;
Ng_vec_collection(length(Ng_vec_collection)+1) = Num_den_non_dim;
Re_vec_collection(length(Re_vec_collection)+1) = Reynold_num;
H_vec_collection(length(H_vec_collection)+1) = H;

[U,Uy,Uyy,z] = grass_base3(500,D_drag_vec(2),h_grass);
% 
%  fileID = fopen('Vivoni_Fig3_6a_175_numerical.dat','w');
%  A = [U'*U0; (z+1)'*(H/hp)];
%  fprintf(fileID,'%6s %12s\n','U','z/hp');
%  fprintf(fileID,'%6.2f %12.8f\n',A);
%  fclose(fileID);
% 
plot(U*U0,(z+1)*(H/hp),'--g',U_data,z_data,'-go','LineWidth',lw,'MarkerSize',ms);



% Uveg = 2.;
% Usurf = 13.35;
% U_friction = 2.97;
% H = 22.;
% hb= 16.;
% hp =16.;
% load Vivoni_Fig_3_6a2_75.dat;
% U_data = Vivoni_Fig_3_6a2_75(:,1);
% z_data = Vivoni_Fig_3_6a2_75(:,2);
% [D_drag_vec,h_grass,U0] = Grass_vivoni(H,Usurf,Uveg,hb,hp,Vivoni_Fig_3_6a2_75);
% Num_den_non_dim = 0.76*(H/hp);
% Reynold_num = D_drag_vec(2)/Num_den_non_dim;
% 
% D_drag_vec_collection(length(D_drag_vec_collection)+1) = D_drag_vec(2);
% U0_vec_collection(length(U0_vec_collection)+1) = U0;
% H_grass_vec_collection(length(H_grass_vec_collection)+1) = h_grass;
% Ng_vec_collection(length(Ng_vec_collection)+1) = Num_den_non_dim;
% Re_vec_collection(length(Re_vec_collection)+1) = Reynold_num;
% H_vec_collection(length(H_vec_collection)+1) = H;
% 
%  [U,Uy,Uyy,z] = grass_base3(500,D_drag_vec(2),h_grass);
% % 
% %  fileID = fopen('Vivoni_Fig3_6a_275_numerical.dat','w');
% %  A = [U'*U0; (z+1)'*(H/hp)];
% %  fprintf(fileID,'%6s %12s\n','U','z/hp');
% %  fprintf(fileID,'%6.2f %12.8f\n',A);
% %  fclose(fileID);
% % 
% plot(U*U0,(z+1)*(H/hp),'--g',U_data,z_data,'-go','LineWidth',lw,'MarkerSize',ms);



% set(gca,'FontSize',6);
xlabel('$\bar{U}$','Interpreter','latex','FontSize',6,'FontWeight','demi');
ylabel('y/$h_{grass}$','Interpreter','latex','FontSize',6,'FontWeight','demi');
h_leg = legend('H/hp=1.25',['D_{drag}=',num2str(D_drag_vec_collection(1))],'H/hp=1.50',...
    ['D_{drag}=',num2str(D_drag_vec_collection(2))],'H/hp=1.75',...
    ['D_{drag}=',num2str(D_drag_vec_collection(3))]);
set(h_leg,'FontSize',4.);
set(h_leg,'Location','SouthEast')
set(gcf,'PaperUnits','centimeters');
x_width=8.4; y_width=5.5;
set(gcf, 'PaperPosition', [0 0 x_width y_width]); %
%saveas(gcf,'/home/ravi/Research/Git_Related/swayings-on-weed/Paper/images/Vivoni_Fig3_6_zero_shear_match_best_freq.eps','eps2c')



figure(2)
Uveg = 2.62;
Usurf = 9.21;
U_friction = 2.63;
H = 14.;
hb = 18.;
hp = 16.0;
load Vivoni_3_7a6_31.dat;
U_data = Vivoni_3_7a6_31(:,1);
z_data = Vivoni_3_7a6_31(:,2);

[D_drag_vec,h_grass,U0] = Grass_vivoni(H,Usurf,Uveg,hb,hp,Vivoni_3_7a6_31);
Num_den_non_dim = 0.76*(H/hp);
Reynold_num = D_drag_vec(2)/Num_den_non_dim;

D_drag_vec_collection(length(D_drag_vec_collection)+1) = D_drag_vec(2);
U0_vec_collection(length(U0_vec_collection)+1) = U0;
H_grass_vec_collection(length(H_grass_vec_collection)+1) = h_grass;
Ng_vec_collection(length(Ng_vec_collection)+1) = Num_den_non_dim;
Re_vec_collection(length(Re_vec_collection)+1) = Reynold_num;
H_vec_collection(length(H_vec_collection)+1) = H;
 [U,~,~,z] = grass_base3(500,D_drag_vec(2),h_grass);
% 

%   fileID = fopen('Vivoni_Fig3_7a6_31_numerical.dat','w');
%   A = [U'*U0; (z+1)'*(H/hp)];
%   fprintf(fileID,'%6s %12s\n','U','z/hp');
%   fprintf(fileID,'%6.2f %12.8f\n',A);
%   fclose(fileID);

plot(U*U0,(z+1)*(H/hp),'--r',U_data,z_data,'-ro','LineWidth',lw,'MarkerSize',ms); hold on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Uveg = 4.51;
Usurf = 15.78;
U_friction = 3.69;
H = 14.;
hb = 16.4;
hp = 16.0;
load Vivoni_3_7a10_72.dat;
U_data = Vivoni_3_7a10_72(:,1);
z_data = Vivoni_3_7a10_72(:,2);
[D_drag_vec,h_grass,U0] = Grass_vivoni(H,Usurf,Uveg,hb,hp,Vivoni_3_7a10_72);
Num_den_non_dim = 0.76*(H/hp);
Reynold_num = D_drag_vec(2)/Num_den_non_dim;

D_drag_vec_collection(length(D_drag_vec_collection)+1) = D_drag_vec(2);
U0_vec_collection(length(U0_vec_collection)+1) = U0;
H_grass_vec_collection(length(H_grass_vec_collection)+1) = h_grass;
Ng_vec_collection(length(Ng_vec_collection)+1) = Num_den_non_dim;
Re_vec_collection(length(Re_vec_collection)+1) = Reynold_num;
H_vec_collection(length(H_vec_collection)+1) = H;
[U,~,~,z] = grass_base3(500,D_drag_vec(2),h_grass);
% 
%   fileID = fopen('Vivoni_Fig3_7a10_72_numerical.dat','w');
%   A = [U'*U0; (z+1)'*(H/hp)];
%   fprintf(fileID,'%6s %12s\n','U','z/hp');
%   fprintf(fileID,'%6.2f %12.8f\n',A);
%   fclose(fileID);
% 
 plot(U*U0,(z+1)*(H/hp),'--g',U_data,z_data,'-go','LineWidth',lw,'MarkerSize',ms); hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5



Uveg = 5.65;
Usurf = 21.99;
U_friction = 4.76;
H =14.;
hb = 15.;
hp = 16.0;
load Vivoni_3_7a15_14.dat;
U_data = Vivoni_3_7a15_14(:,1);
z_data = Vivoni_3_7a15_14(:,2);
[D_drag_vec,h_grass,U0] = Grass_vivoni(H,Usurf,Uveg,hb,hp,Vivoni_3_7a15_14);
Num_den_non_dim = 0.76*(H/hp);
Reynold_num = D_drag_vec(2)/Num_den_non_dim;

D_drag_vec_collection(length(D_drag_vec_collection)+1) = D_drag_vec(2);
U0_vec_collection(length(U0_vec_collection)+1) = U0;
H_grass_vec_collection(length(H_grass_vec_collection)+1) = h_grass;
Ng_vec_collection(length(Ng_vec_collection)+1) = Num_den_non_dim;
Re_vec_collection(length(Re_vec_collection)+1) = Reynold_num;
H_vec_collection(length(H_vec_collection)+1) = H;
 [U,Uy,Uyy,z] = grass_base3(500,D_drag_vec(2),h_grass);

%   fileID = fopen('Vivoni_Fig3_7a15_14_numerical.dat','w');
%   A = [U'*U0; (z+1)'*(H/hp)];
%   fprintf(fileID,'%6s %12s\n','U','z/hp');
%   fprintf(fileID,'%6.2f %12.8f\n',A);
%   fclose(fileID);

 plot(U*U0,(z+1)*(H/hp),'--b',U_data,z_data,'-bo','LineWidth',lw,'MarkerSize',ms); hold on
 clear Reynold_num;
 
 


set(gca,'FontSize',6);
xlabel('$\bar{U}$','Interpreter','latex','FontSize',6,'FontWeight','demi');
ylabel('y/$h_{grass}$','Interpreter','latex','FontSize',6,'FontWeight','demi');
h_leg = legend('Q=6.31',['D_{drag}=',num2str(D_drag_vec_collection(4))],'Q=10.72',...
    ['D_{drag}=',num2str(D_drag_vec_collection(5))],'Q=5.14',...
    ['D_{drag}=',num2str(D_drag_vec_collection(6))]);

set(h_leg,'FontSize',4.);
set(h_leg,'Location','SouthEast')
set(gcf,'PaperUnits','centimeters');
x_width=8.4; y_width=5.5;
set(gcf, 'PaperPosition', [0 0 x_width y_width]); %
%saveas(gcf,'/home/ravi/Research/Git_Related/swayings-on-weed/Paper/images/Vivoni_Fig3_7_zero_shear_match_best_freq.eps','eps2c')

% 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%% Ikedea %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% H = 14.8/2;
% Q_act = 29.8;
% slope = 0.00447;
% load Ikeda_Fig1.dat;
% hp = 4.0;
% U_data = Ikeda_Fig1(:,1);
% z_data = Ikeda_Fig1(:,2);
% z_data = [z_data
%     14.8];
% U_data = [U_data,
%     U_data(end)];
% [D_drag,U0,h_grass,~] = Grass_Ikeda(H,Q_act,slope,hp);
% [U,Uy,Uyy,z] = grass_base3(500,D_drag,h_grass);
% Cn_d_Ng_H = 1.0*0.24e-3*(1.0e4/0.5)*H*1.0e-2
% Reynold_num = D_drag/Cn_d_Ng_H;
 
% D_drag_vec_collection(length(D_drag_vec_collection)+1) = D_drag;
% U0_vec_collection(length(U0_vec_collection)+1) = U0;
% H_grass_vec_collection(length(H_grass_vec_collection)+1) = h_grass;
% Ng_vec_collection(length(Ng_vec_collection)+1) = Cn_d_Ng_H;
% Re_vec_collection(length(Re_vec_collection)+1) = Reynold_num;
% H_vec_collection(length(H_vec_collection)+1) = H;
% figure(3)
% plot(U*U0,(z+1)*H,'--b',U_data,z_data,'-bo','LineWidth',lw,'MarkerSize',ms); hold on;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% 
% H = 19.0/2;
% Q_act = 37.5;
% slope = 0.00492;
% load Ikeda_Fig1.dat;
% hp = 4.0;
% [D_drag,U0,h_grass,~] = Grass_Ikeda(H,Q_act,slope,hp);
% [U,Uy,Uyy,z] = grass_base3(500,D_drag,h_grass);
% Cn_d_Ng_H = 1.0*0.24e-3*(1.0e4/0.5)*H*1.0e-2;
% Reynold_num = D_drag/Cn_d_Ng_H;
%  
% D_drag_vec_collection(length(D_drag_vec_collection)+1) = D_drag;
% U0_vec_collection(length(U0_vec_collection)+1) = U0;
% H_grass_vec_collection(length(H_grass_vec_collection)+1) = h_grass;
% Ng_vec_collection(length(Ng_vec_collection)+1) = Cn_d_Ng_H;
% Re_vec_collection(length(Re_vec_collection)+1) = Reynold_num;
% H_vec_collection(length(H_vec_collection)+1) = H;
% plot(U*U0,(z+1)*H,'--r','LineWidth',lw); hold on;
% 
% 
% 
% % 
% H = 16.5/2;
% Q_act = 40.0;
% slope = 0.00641;
%load Ikeda_Fig1.dat;
% hp = 4.2;
% [D_drag,U0,h_grass,~] = Grass_Ikeda(H,Q_act,slope,hp);
% [U,Uy,Uyy,z] = grass_base3(500,D_drag,h_grass);
% Cn_d_Ng_H = 1.0*0.24e-3*(1.0e4/0.5)*H*1.0e-2;
% Reynold_num = D_drag/Cn_d_Ng_H;
%  
% D_drag_vec_collection(length(D_drag_vec_collection)+1) = D_drag;
% U0_vec_collection(length(U0_vec_collection)+1) = U0;
% H_grass_vec_collection(length(H_grass_vec_collection)+1) = h_grass;
% Ng_vec_collection(length(Ng_vec_collection)+1) = Cn_d_Ng_H;
% Re_vec_collection(length(Re_vec_collection)+1) = Reynold_num;
% H_vec_collection(length(H_vec_collection)+1) = H;
% plot(U*U0,(z+1)*H,'--g','LineWidth',lw); hold on;
% 
% 
% H = 17.1/2;
% Q_act = 24.6;
% slope = 0.00278;
% %load Ikeda_Fig1.dat;
% hp = 4.2;
% [D_drag,U0,h_grass,~] = Grass_Ikeda(H,Q_act,slope,hp);
% [U,Uy,Uyy,z] = grass_base3(500,D_drag,h_grass);
% Cn_d_Ng_H = 1.0*0.24e-3*(1.0e4/0.5)*H*1.0e-2;
% Reynold_num = D_drag/Cn_d_Ng_H;
%  
% D_drag_vec_collection(length(D_drag_vec_collection)+1) = D_drag;
% U0_vec_collection(length(U0_vec_collection)+1) = U0;
% H_grass_vec_collection(length(H_grass_vec_collection)+1) = h_grass;
% Ng_vec_collection(length(Ng_vec_collection)+1) = Cn_d_Ng_H;
% Re_vec_collection(length(Re_vec_collection)+1) = Reynold_num;
% H_vec_collection(length(H_vec_collection)+1) = H;
% plot(U*U0,(z+1)*H,'--m','LineWidth',lw); hold on;



% set(gca,'FontSize',6);
% xlabel('$\bar{U}$','Interpreter','latex','FontSize',6,'FontWeight','demi');
% ylabel('$y$','Interpreter','latex','FontSize',6,'FontWeight','demi');
% h_leg = legend('Q=29.8',['D_{drag}=',num2str(D_drag)],'Q=37.5','Q=40.0','Q=24.6');
% set(h_leg,'FontSize',4.);
% set(h_leg,'Location','SouthEast')
% set(gcf,'PaperUnits','centimeters');
% x_width=8.4; y_width=5.5;
% set(gcf, 'PaperPosition', [0 0 x_width y_width]); %
% saveas(gcf,'/home/ravi/Research/Git_Related/swayings-on-weed/Paper/images/Ikeda_Fig1_match_zero_shear_freq.eps','eps2c')