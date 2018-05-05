%Divide the results in groups, depending on the type
textdata1 = textdata(:,2:end);

%NODES
indexVoltageNodes=ismember(textdata1(2,:),'u, Betrag in p.u.')';
valuesVoltageNodes=data(:,indexVoltageNodes);

%LOAD/GEN
indexP_LoadGen=ismember(textdata1(2,:),'Wirkleistung in MW')'; 
valuesP_LoadGen=data(:,indexP_LoadGen);

%TRAFO
indexP_OS_Trafo=ismember(textdata1(2,:),'Wirkleistung/OS-Seite in MW')'; 
valuesP_OS_Trafo=data(:,indexP_OS_Trafo);

indexP_US_Trafo=ismember(textdata1(2,:),'Wirkleistung/US-Seite in MW')'; 
valuesP_US_Trafo=data(:,indexP_US_Trafo);

indexLoadingTrafo=ismember(textdata1(2,:),'Auslastung in %')'; 
valuesLoadingTrafo=data(:,indexLoadingTrafo);

indexTapTrafo=ismember(textdata1(2,:),'Stufenschalter 1, akt. Position')'; 
valuesTapTrafo=data(:,indexTapTrafo);

	
	
	








