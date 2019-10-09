function [CellofInitialCentroidofSomas,VectorofInitialRadiusofSomas]=InitializationofSomaDistribution(BasicSettings,SituationSomas)
Width=BasicSettings.Width;
Length=BasicSettings.Length;
Hight=BasicSettings.Hight;

NumofInitialSomas=SituationSomas.NumofInitialSomas;
MinRadius=SituationSomas.MinRadius;
MaxRadius=SituationSomas.MaxRadius;

%% Generation of the Whole Space
Limitation=[Width,Length,Hight];

%% Generation of the Somas
CellofInitialCentroidofSomas=cell(NumofInitialSomas,1);
VectorofInitialRadiusofSomas=zeros(NumofInitialSomas,1);
for ID=1:NumofInitialSomas
InitialCentroidofSomas=[randi([25 Limitation(1,1)-25],1,1),randi([25 Limitation(1,2)-25],1,1),randi([25 Limitation(1,3)-25],1,1)];
CellofInitialCentroidofSomas{ID,1}=InitialCentroidofSomas;
%VectorofInitialRadiusofSomas(ID,1)=randi([MinRadius,MaxRadius],1,1);
VectorofInitialRadiusofSomas(ID,1)=MinRadius + (MaxRadius-MinRadius).*rand(1,1);
end