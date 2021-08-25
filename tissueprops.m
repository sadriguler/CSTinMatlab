function [electcond, density, thecmap] = tissueprops(filename)
thedata = importdata(filename);
thecmap = thedata.data(:,10:12)/255;
electcond = thedata.data(:,4);
density = thedata.data(:,5);
end