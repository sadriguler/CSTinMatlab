function [Rr,Rl,Xe,Xi] = SCLA(a,b,freq)

lambda = (3e8)./freq;
omega = 2*pi*freq;
cond = 5.96e7;
mu0 = 4*pi*(1e-7);

C = 2*pi*a;

Rr = 20*(pi^2).*((C./lambda).^4);
Rl = a/b*sqrt(omega*mu0/(2*cond));
Xe = omega*mu0*a*(log(8*a/b)-2);
Xi = a/b*sqrt(omega*mu0/cond/2);

end