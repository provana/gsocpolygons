function [lat, lon] = polyjoin(latcells, loncells)

if~(nargin == 2)
  error("Incorrect number of inputs")
end
if(~iscell(latcells) | ~iscell(loncells))
  error("Both latcells and loncells must be of cell type")
end
if(isempty(latcells) | isempty(loncells))
    error("inputted cells must not be empty")
end
lat = latcells{:};
lon = loncells{:};

for i =2:length(latcells)
  lat=[lat; NaN; latcells{i}];
  lon=[lon;NaN; latcells{i}];
  end
  