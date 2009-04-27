fun count_one f x = if (f x = true) then 1 else 0;
fun count_three f g h x = ( count_one f x ) + (count_one g x) + (count_one h x);




fun bigger_than_5(x) = x>5;
fun divby7(x) = (x mod 7 = 0);
fun same2(x) = if x >= 0 then ((x mod 10) = (x div 10 mod 10)) else same2(~x);

fun   curry f  x y  = f(x,y);
fun uncurry f (x,y) = f x y ;

fun floor_equal(x,y) = floor(x) = y;


fun sumf f x = if x=0 then f(0) else f(x) + sumf f (x-1);

fun fib(x) = if (x=0) then 0 else if (x=1) then 1 else fib(x-1) + fib(x-2);


fun sumsumf n x =  if n=0 then sumf(fn i => i) x else sumf (sumsumf (n-1)) x;

fun comp g i x = if (i=1) then g(x) else g(comp g (i-1) x);
fun supersum f g x = if (x=0) then f(0) else comp g x f x + supersum f g (x-1);
