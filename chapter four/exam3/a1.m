function retval = test()

load('ex3data1.mat');
sprintf(int2str(size(X)))
#displayData(X(1:50,:));
displayData(X(1,:));
sprintf(type(X))
pause;

endfunction