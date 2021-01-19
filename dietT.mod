set F;
set N;

param c{F};
param a{F};
param d{N};
param n{F,N};

var x{F}>=0;

minimize Cost: sum{i in F} c[i]*x[i];

subject to Demand{j in N}: sum{i in F} n[i,j]*x[i] >= d[j];
subject to Availability{i in F}: x[i] <= a[i];