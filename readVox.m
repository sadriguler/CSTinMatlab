function [nx, ny, nz, dx, dy, dz, offset, filename] = readVox(filename)
filename = strcat(filename,'.vox');
fileID = fopen(filename);
while (1)
    theline = fgets(fileID);
    if (length(theline)>=6)
        if (strcmp(theline(1:4),'//ty'))
            theline = fgets(fileID);
            break;
        end
    end
end
thear = strsplit(theline);
nx = str2double(thear{2});
ny = str2double(thear{3});
nz = str2double(thear{4});
dx = str2double(thear{5});
dy = str2double(thear{6});
dz = str2double(thear{7});
offset = str2double(thear{8});
filename = thear{9};
end