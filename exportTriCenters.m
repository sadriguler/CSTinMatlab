function exportTriCenters(filename)
[v, f, n, name] = stlReadAscii(filename);
numberoftris = size(f,1);
tricenters = zeros(numberoftris,3);
for ind = 1:numberoftris
    v1 = f(ind,1);
    v2 = f(ind,2);
    v3 = f(ind,3);
    p1 = v(v1,:);
    p2 = v(v2,:);
    p3 = v(v3,:);
    tricenters(ind,:) = (p1+p2+p3)/3;
end
save('tricenters.txt', 'tricenters', '-ascii');
end