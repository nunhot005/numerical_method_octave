function ans = NoonMethod2(input);
nf = 5;
es = 0.5*10^(2-nf);

n = 6;

ea = 100;

x = 0;
while(x^2<input)
x++;
endwhile
x = x-1;

r_interval = 0.1;

while(ea>=es)
previous = x;
r = 0;
    while((2*x+r)*r <= input-(x^2))
    r = r + r_interval;
  endwhile
  r = r-r_interval;
  r_interval = r_interval*0.1;
  x = x+r;
  ea = ((x-previous)/x)*100;
  printf("x = %f, ea = %f, es = %f\n", x, ea, es);
endwhile

printf("The result is: %f\n",x);
ans = x;
endfunction
