function [D_drag_vec,h_grass,U0rhs] = Grass_Nepf(H,Usurf,Uveg,hb,hp,Vivoni_datastruct)


        D_drag_vec= [];
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       
%         D1_drag = (Usurf*5)^2/Uveg^2
%         D2_drag = Usurf^2/(5*Uveg)^2
        
        N = 400;
        h_grass = (-H+hb)/H;
        %load Vivoni_Fig_3_6a1_25.dat;
        U_data = Vivoni_datastruct(:,1);
        z_data = Vivoni_datastruct(:,2);
        
%         U_data = U_data(1:end-8);
%         z_data = z_data(1:end-8);
        U_dz_cent = sum( U_data(1:end-1).*abs(z_data(2:end)-z_data(1:end-1)) );
        U_dz_vec = [U_dz_cent-0.1*U_dz_cent,U_dz_cent,U_dz_cent+0.1*U_dz_cent];
        
        
         for n_udz=2:2
            U_dz = U_dz_vec(n_udz);
            %Flow_rate = U_dz*38;
            U0_upper = Usurf*50;
            U0_lower = Usurf-Usurf*(49/50.);
            
            
            
            for j = 1:30
                
                U0_mid = (U0_upper+U0_lower)/2.;
                U0rhs = (U0_mid+U0_upper)/2.;
                U0lhs = (U0_mid+U0_lower)/2.;
                Drhs_drag = (U0rhs)^2/Uveg^2;
                Dlhs_drag = (U0lhs)^2/Uveg^2;
                
                
                [Urhs,uy,uyy,z1] = grass_base3(N,Drhs_drag,h_grass);
                [Ulhs,uy,uyy,z2] = grass_base3(N,Dlhs_drag,h_grass);
                z1p = (z1+1)*(H);
                z2p = (z2+1)*(H);
                
                z1p = z1p(z1p<=z_data(end));
                z2p = z2p(z2p<=z_data(end));
                Urhs = Urhs(z1p<=z_data(end));
                Ulhs = Ulhs(z2p<=z_data(end));
                
                Urhs_dz = sum( Urhs(1:end-1).*(z1p(2:end)-z1p(1:end-1)) )*U0rhs;
                Ulhs_dz = sum( Ulhs(1:end-1).*(z2p(2:end)-z2p(1:end-1)) )*U0lhs;
               % [U0rhs U0lhs]
               % [U_dz Urhs_dz Ulhs_dz]
                
                
                if(abs(Urhs_dz-U_dz)<abs(Ulhs_dz-U_dz))
                    %c1_lower = c1_mid;
                    U0_lower = U0_mid;
                    %c1_upper = c1_upper;
                else
                    %c1_lower = c1_lower;
                    %c1_upper = c1_mid;
                    U0_upper = U0_mid;
                end
                
            end
            
            D_drag_vec(n_udz) = Drhs_drag;
          end



end