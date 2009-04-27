fun count_one f x = if (f x = true) then 1 else 0;
fun count_three f g h x = ( count_one f x ) + (count_one g x) + (count_one h x);




fun bigger_than_5(x) = x>5;
fun divby7(x) = (x mod 7 = 0);
fun same2(x) = if x >= 0 then ((x mod 10) = (x div 10 mod 10)) else same2(~x);
