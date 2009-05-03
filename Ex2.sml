(* 039811880 040472326 *)

(* 1.1 *)
fun count_one f =
	fn x:int =>
		if (f(x) = true) then 1
		else 0;


(* 1.2 *)
fun count_three f g h =
	fn x:int =>
		( count_one f x ) + (count_one g x) + (count_one h x);

(* 2.1 *)
fun   curry f  x y  = f(x,y);

(* 2.2 *)
fun uncurry f (x,y) = f x y ;

(* 3.1 *)
fun sumf f x =
	if x=0 then f(0)
	else f(x) + sumf f (x-1);

(* 3.2 *)
fun sumsumf n x =
	if n=0 then sumf(fn i => i) x
	else sumf (sumsumf (n-1)) x;

(* 3.3 *)
(* auxiliary function comp *)
fun comp g i x =
	if (i=1) then g(x)
	else g(comp g (i-1) x);
	
fun supersum f g x =
	if (x=0) then f(0)
	else comp g x f x + supersum f g (x-1);

(* 3.4 *)
fun superfinalf n = 
	if (n=1) then sumsumf 0 1
	else sumsumf (n-1) n + superfinalf (n-1);
