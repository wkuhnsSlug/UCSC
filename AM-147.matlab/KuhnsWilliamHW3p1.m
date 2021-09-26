format short
trueValue = exp(-5);
sum = 0;
for i = 0:9
    sum = sum + ((-5)^i)/factorial(i);
end
sum2 = 0;
for i = 0:9
    sum2 = sum2 + ((5)^i)/factorial(i);
end
sum2 = 1/sum2;
relativeError = abs(sum2-sum)/abs(sum)
