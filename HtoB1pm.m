function [B1p, B1m] = HtoB1pm(hfield)
mu0 =  4*pi*(1e-7);
Bfield = conj(hfield)*mu0;
B1p = (Bfield(:,1) + 1i*Bfield(:,2))/2;
B1m = conj(Bfield(:,1) - 1i*Bfield(:,2))/2;
end