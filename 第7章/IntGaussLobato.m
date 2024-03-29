function I = IntGaussLobato(f,a,b,n,AK,XK)
if(n<7 && nargin == 4)
    AK = 0;
    XK = 0;
else      
    XK1=((b-a)/2)*XK+((a+b)/2);
    I=((b-a)/2)*((2/n/(n-1))*(subs(sym(f),findsym(sym(f)),a)+...
        subs(sym(f),findsym(sym(f)),b))+sum(AK.*subs(sym(f),findsym(sym(f)),XK1)));
end

ta = (b-a)/2;
tb = (a+b)/2;
switch n
    case 3,
        I=ta*((1/3)*(subs(sym(f),findsym(sym(f)),a)+...
        subs(sym(f),findsym(sym(f)),b))+1.333333*subs(sym(f),findsym(sym(f)),tb));
        
    case 4,
        I=ta*((1/6)*(subs(sym(f),findsym(sym(f)),a)+...
            subs(sym(f),findsym(sym(f)),b))+0.833333*...
            (subs(sym(f),findsym(sym(f)),ta*0.447214+tb)+...
            subs(sym(f),findsym(sym(f)),-ta*0.447214+tb)));
        
    case 5,
         I=ta*((1/10)*(subs(sym(f),findsym(sym(f)),a)+...
             subs(sym(f),findsym(sym(f)),b))+0.544444*...
            (subs(sym(f),findsym(sym(f)),ta*0.654654+tb)+...
            subs(sym(f),findsym(sym(f)),-ta*0.654654+tb))+...
            0.711111*subs(sym(f),findsym(sym(f)),tb));
           
    case 6,
         I=ta*((1/15)*(subs(sym(f),findsym(sym(f)),a)+...
             subs(sym(f),findsym(sym(f)),b))+0.554858*...
            (subs(sym(f),findsym(sym(f)),ta*0.285232+tb)+...
            subs(sym(f),findsym(sym(f)),-ta*0.285232+tb))+...
            0.378475*(subs(sym(f),findsym(sym(f)),ta*0.765055+tb)+...
            subs(sym(f),findsym(sym(f)),-ta*0.765055+tb)));     
end