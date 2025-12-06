param n;
param m;
param x {1..m}; 
param y {1..m};

var q {0..n};
var res {k in 1..m} = sum {i in 0..n} q[i]*x[k]^i - y[k];

minimize error: sum {k in 1..m} res[k]^2;

data cheb.dat;
option solver snopt;
solve;

printf {k in 0..n} "  q[%2.0f] = %12.6f\n", k, q[k];



