function ans = NoonMethod3(input);
nf = 5;
es = 0.5*10^(2-nf);

ea = 100;

i = 0;
while(i^2<input)
i++;
endwhile
i = i-1;

 if(i==0)
    i = 0.1; %prevent division by 0 error from x = (m/i^2)-1;
   endif
   x = (input/i^2)-1;
   while (x>=1)
     i = i+0.1;
     x = (input/i^2)-1;
   endwhile
   
%Taylor series expansion
n = 1;
ts = 1;
TrueV = 1;

while(ea >= es)
  previous = TrueV;
  ts = ts+(bincoeff(0.5,n)*(x^n));
  TrueV = i*ts;
  ea = abs(((TrueV-previous)/TrueV)*100);
  n++;
endwhile

printf("The result is: %f\n",TrueV);
ans = TrueV;
endfunction
