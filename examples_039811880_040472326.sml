(* example functions for 1.1, 1.2: *)
fun bigger_than_5(x) = x>5;
fun divby7(x) = (x mod 7 = 0);
fun same2(x) =
	(* checks if has same 2 last digits in decimal base *)
	if x >= 0 then ((x mod 10) = (x div 10 mod 10)) else same2(~x);

count_one bigger_than_5 6; (* expecting 1 *)
count_three bigger_than_5 divby7 same2 77; (* expecting 3 *)
count_three bigger_than_5 divby7 same2 76; (* expecting 1 *)
count_three bigger_than_5 divby7 same2 55; (* expecting 2 *)



(* example function for 2.1, 2.2 *)

fun floor_equal(x,y) = floor(x) = y;

val curried = curry floor_equal;

curried 5.5 5; (* expecting true *)

val uncurried = uncurry curried;

uncurried(34.23, 35); (* expecting false *)


(* example function for sumf *)

fun fib(x) = if (x=0) then 0 else if (x=1) then 1 else fib(x-1) + fib(x-2);

sumf fib 20; (* expecting 17710 *)

