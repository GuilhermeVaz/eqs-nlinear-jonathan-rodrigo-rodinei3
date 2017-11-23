function xn1=mat_newton_raphson(F,J,xn,N,e1,e2,e3)
% Metodo de Newton Raphson
%
% xn1=mat_newton_raphson(F,J,xn,N,e1,e2,e3)

for i=1:N
    h=J(xn)\(-F(xn));
    
    xn1=xn+h;
    
    xn=xn1


end
end