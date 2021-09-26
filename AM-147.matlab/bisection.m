function root = bisection(a,b,f,tol,maxN)
flag = true;
n =0;
%not sure if these parameter checks are needs
fOfAstart = 0;
fOfBstart = 0;

for i = 0:(size(f,2)-1)
    fOfAstart = fOfAstart +(a^i * f(end - i));
    fOfBstart = fOfBstart +(b^i * f(end - i));
end
if sign(fOfAstart) == sign(fOfBstart) || a>=b
    flag = false;
end
while flag
    c = (a+b)/2;
    %find f(c) where f is a a single row of polynominal constants
    %EX: f(x) = x^3 - x + 2, then f = [1 0 -1 2]
    fOfC = 0;
    fOfA = 0;
    for i = 0:(size(f,2)-1)
        fOfC = fOfC +(c^i * f(end - i));
        fOfA = fOfA +(a^i * f(end - i));
    end
    if fOfC ==0 || (b-a)/2 < tol
        flag = false;
        root = c;
    end
    n=n+1;
    if n>maxN
        flag = false;
    end
    if sign(fOfA) == sign(fOfC)
        a=c;
    else
        b=c;
    end
end
end