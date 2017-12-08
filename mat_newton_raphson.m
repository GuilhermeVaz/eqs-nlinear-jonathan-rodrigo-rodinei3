function xn1=mat_newton_raphson(F,J,xn,N,e1,e2,e3)
 % Metodo de Newton Raphson
 %
 % xn1=mat_newton_raphson(F,J,xn,N,e1,e2,e3)
 p=xn;
  for i=1:N
      h=J(xn)\(-F(xn));
      
      xn1=xn+h;
    
      
      if norm(F(xn1))<=e1      
           break 
      end
       
      if norm(xn1-p)<=e2     
             
           break
      end
      if abs((xn1-p)/xn1)<=e3         
           
           break
      end
      
      xn=xn1;
      p=xn;
  end
 