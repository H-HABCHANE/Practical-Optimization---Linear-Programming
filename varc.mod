var n;
var m;
var x{1..n};
var y{1..m};

var p{1..m};
var res {k in 1..m}=sum {i in 0..n} P[i]*[k]^i - y[k];



var eps;
minimize error:eps;

s.t. upb {k in 1..m}: res[k]<= eps;
s.t. lob {k in 1..m}: res[k]>= -eps;

data cheb.data;
option solver snopt;
solve;

printf {k in 0..n} "  p[%2.0f] = %12.6f\n", k, p[k];
