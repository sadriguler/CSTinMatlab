function [electcond, density, thecmap] = tissueprops(filename)
thedata = importdata(filename);
thecmap = thedata.data(:,10:12)/255;
electcond = thedata.data(:,4);
density = thedata.data(:,5);

% add air
thecmap = [0 0 0;thecmap];
electcond = [0; electcond];
density = [0; density];
end