function [t_env,env]=envelope(a,d,s,sd,r,fs)
tattack=0:1/fs:a;
t_env=tattack;
env=t_env/a;
tdecay=(a+1/fs):1/fs:a+d;
t_env=[t_env,tdecay];
env=[env,((s-1)*(tdecay-a)/d)+1];
tsustain=(a+d+1/fs):1/fs:a+d+sd;
t_env=[t_env,tsustain];
env=[env,s*ones(1,length(tsustain))];
trelease=(a+d+sd+1/fs):1/fs:a+d+sd+r;
t_env=[t_env,trelease];
env=[env,s-(s*(trelease-(a+d+sd))/r)];
end
