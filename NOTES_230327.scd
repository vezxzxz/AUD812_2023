super collider tutorial: https://www.youtube.com/results?search_query=super+collider+week+1

code1

(
var num;
num = 7;
num = num - 56;
num = num * 2;
)

(
~num = ~num - 59;
~num = ~num * 2;
~num = ~num * ~num;
)

~num

(
~func = {
	
	arg num;
	num = num + ~num;
};
)

~num = ~func.value(1);

(
~sfunc = { | freq = 440 |
	(freq: freq).play
}
)

~sfunc.value(500);

(
{
	10 do: {
		~sfunc.value(1000 rrand: 1500);
		1.wait;
	};
}.fork;
)
