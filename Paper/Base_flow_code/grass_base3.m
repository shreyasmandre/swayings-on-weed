function [unew,uy,uyy,z] = grass_base3(N,D,h_grass)


N = N-1;
z = linspace(-1,1, N+1)';

dz = z(2)-z(1);

uguess = 0.001*z;
error = 100000;
 
%while(abs(error)>1.0e-12)
for ii=1:100
    
       e = ones(N+1,1);
       A = spdiags([e -2*e e], -1:1, N+1, N+1);
       A(1,2)=2.;
       Mat = A - spdiags(dz^2*D*abs(uguess).*(z<(h_grass+dz/2.)), 0, N+1,N+1);
       Mat(N+1,N) = 2; 
       rhs = 0*z-dz^2;
       rhs(1) = 0; %rhs(N+1) = 1;
        
        unew = Mat\rhs;
        %plot(z,uguess,z,unew);
        uguess = uguess*0.5 + 0.5*unew;
        error = sqrt(sum((uguess-unew).^2))/length(uguess);
end
%Mat(N+1,N+1)
 uy = zeros(length(unew),1); 
 uyy = zeros(length(unew),1);
 
  for i = 2:length(unew)-1
     uy(i)  = (unew(i+1)-unew(i-1))/(2*dz);
     %uyy(i) = (unew(i+1)-2.*unew(i)+unew(i-1))/(dz^2);
  end
 
%  uy(2:end-1) = (unew(3:end)-unew(1:end-2))/(2*dz);
%  uyy(2:end-1) = (unew(3:end)-2.*unew(2:end-1)+unew(1:end-2))/(dz^2);
  uy  = interp1(z(2:end-2),uy(2:end-2),z,'pchip','extrap');
%  uyy = interp1(z(2:end-2),uyy(2:end-2),z,'cubic','extrap');
 
 uyy = D*unew.*unew.*(z<(h_grass+dz/2.))-1.;
end