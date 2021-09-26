r=3;
N=3;
xTrue=power(3, 1/3);
x1 = (1/r)*(2*(r-1) + N/(2^(r-1)));
x2 = (1/r)*(x1*(r-1) + N/x1^(r-1));
x3 = (1/r)*(x2*(r-1) + N/x2^(r-1));

relativeError = abs(x3 - xTrue)/abs(xTrue)