function ex1406()
A = 1e-3;
it0 = inline('0','x','y');
bxyt = inline('x^2*sin(y)-y^2*sin(x)','x','y','t'); 
D = [0 5 0 5]; T = 1000; Mx = 50; My = 50; N = 50;
[u,x,y,t] = TDE(A,D,T,it0,bxyt,Mx,My,N);
mesh(x,y,u)
xlabel('x')
ylabel('y')
zlabel('U')
