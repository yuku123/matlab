function I = NewtonCotes(f,a,b,type)
%type = 1 科茨公式
%type = 2 牛顿－科茨六点公式
%type = 3 牛顿－科茨七点公式

I=0;
switch type
    case 1,
        I=((b-a)/90)*(7*subs(sym(f),findsym(sym(f)),a)+...
            32*subs(sym(f),findsym(sym(f)),(3*a+b)/4)+...
            12*subs(sym(f),findsym(sym(f)),(a+b)/2)+...
            32*subs(sym(f),findsym(sym(f)),(a+3*b)/4)+7*subs(sym(f),findsym(sym(f)),b)); 
       
    case 2,
        I=((b-a)/288)*(19*subs(sym(f),findsym(sym(f)),a)+...
            75*subs(sym(f),findsym(sym(f)),(4*a+b)/5)+...
            50*subs(sym(f),findsym(sym(f)),(3*a+2*b)/5)+...
            50*subs(sym(f),findsym(sym(f)),(2*a+3*b)/5)+...
            75*subs(sym(f),findsym(sym(f)),(a+4*b)/5)+19*subs(sym(f),findsym(sym(f)),b));  
        
    case 3,
        I=((b-a)/840)*(41*subs(sym(f),findsym(sym(f)),a)+...
            216*subs(sym(f),findsym(sym(f)),(5*a+b)/6)+...
            27*subs(sym(f),findsym(sym(f)),(2*a+b)/3)+...
            272*subs(sym(f),findsym(sym(f)),(a+b)/2)+...
            27*subs(sym(f),findsym(sym(f)),(a+2*b)/3)+...
            216*subs(sym(f),findsym(sym(f)),(a+5*b)/6)+41*subs(sym(f),findsym(sym(f)),b));
end