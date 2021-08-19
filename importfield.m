function thefield = importfield(filename)
thedata = importdata(filename);
thedata  = thedata.data;
thefield = [thedata(:,4) + 1i*thedata(:,5),thedata(:,6) + 1i*thedata(:,7),thedata(:,8) + 1i*thedata(:,9)];
end