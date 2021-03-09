%% Author: Sadri Guler
% Date: 9 March 2021
% Ref: Pozar, D. M., Microwave Engineering, 2012, Table 4.2

function S = ZtoS(Z,Z0)
deltaZ = (Z.Z11+Z0).*(Z.Z22+Z0) - Z.Z12.*Z.Z21;

S.freq = Z.freq;
S.S11 = ((Z.Z11-Z0).*(Z.Z22+Z0)-Z.Z12.*Z.Z21)./deltaZ;
S.S12 = 2.*Z.Z12*Z0./deltaZ;
S.S21 = 2.*Z.Z21*Z0./deltaZ;
S.S22 = ((Z.Z11+Z0).*(Z.Z22-Z0)-Z.Z12.*Z.Z21)./deltaZ;
end