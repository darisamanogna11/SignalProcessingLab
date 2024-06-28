function yn=my_synthesizer(A,F_notes,P,adsr,td_notes,fs)
yn=[];

for ii=1:length(F_notes)
    a=adsr(1).*td_notes(ii);
    d=adsr(2).*td_notes(ii);
    s=adsr(3).*td_notes(ii);
    sd=adsr(4).*td_notes(ii);
    r=adsr(5).*td_notes(ii);
    % [t,env]=envelope(a,d,s,sd,r);
    [t, env] = envelope(a,d,s,sd,r, fs);
    xt=harmonics(A,F_notes(ii),P,td_notes(ii),fs);
    xte=xt(1:length(t)).*env;
    yn=[yn,xte];
end
end
