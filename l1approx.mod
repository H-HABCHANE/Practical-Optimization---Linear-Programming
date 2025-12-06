param n;
param m;
param x {1..m}; 
param y {1..m};

var r {0..n};
var res {k in 1..m} = sum {i in 0..n} r[i]*x[k]^i - y[k];
var u {1..m} >= 0;
var v {1..m} >= 0;

minimize error: sum {k in 1..m} (u[k] + v[k]);
s.t. equal {k in 1..m}: res[k] = u[k] - v[k];

data cheb.dat;
option solver snopt;
solve;

printf {k in 0..n} " r[%2.0f] = %12.6f\n", k, r[k];
