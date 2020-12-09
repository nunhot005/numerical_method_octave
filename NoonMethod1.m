function ans = NoonMethod1(input);

nf = 5;
es = 0.5*10^(2-nf);

n = 6;

previous = 0;
x = 0;
ea = 100;

while(ea>=es)
  for d = 0:n 
    previous = x;
    for i = 0:9
        x = previous + i/(10^d);
        if(x*x > input)
        break
      endif
    endfor
  x = x - 1/10^d;
  ea = ((x-previous)/x)*100;
  printf("x = %f, ea = %f, es = %f\n", x, ea, es);
  endfor
endwhile

printf("The result is: %f\n",x);
ans = x;
endfunction
