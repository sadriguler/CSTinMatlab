function meshExportSTL(themws,filename)

themws.invoke('SelectTreeItem','Mesh');
export = invoke(themws,'STL');
export.invoke('Reset');
export.invoke('FileName',filename);
export.invoke('Component','default');
export.invoke('ExportFromActiveCoordinateSystem','True');
export.invoke('Write');

end