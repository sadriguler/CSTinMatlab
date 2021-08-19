function thecoef = normCoefAcc(inputpow,Sparams)
numberofports = length(inputpow);
absSsquare = abs(Sparams).^2;
transmission = ones(1,numberofports) - sum(absSsquare);
transmittedpower = sum(transmission.*(inputpow.^2));
thecoef = sqrt(transmittedpower/2);
end