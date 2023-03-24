%% CARICAMENTO FILE CSV DI TRAINING COME MATRICI
pdpm1=readmatrix("Data_Challenge_PHM2022_training_data\data_pdmp1.csv","Delimiter",',');
pin1=readmatrix("Data_Challenge_PHM2022_training_data\data_pin1.csv","Delimiter",',');
po1=readmatrix("Data_Challenge_PHM2022_training_data\data_po1.csv","Delimiter",',');

%%
pdpm2=readmatrix("Data_Challenge_PHM2022_training_data\data_pdmp2.csv","Delimiter",',');
pin2=readmatrix("Data_Challenge_PHM2022_training_data\data_pin2.csv","Delimiter",',');
po2=readmatrix("Data_Challenge_PHM2022_training_data\data_po2.csv","Delimiter",',');

%%
pdpm4=readmatrix("Data_Challenge_PHM2022_training_data\data_pdmp4.csv","Delimiter",',');
pin4=readmatrix("Data_Challenge_PHM2022_training_data\data_pin4.csv","Delimiter",',');
po4=readmatrix("Data_Challenge_PHM2022_training_data\data_po4.csv","Delimiter",',');

%%
pdpm5=readmatrix("Data_Challenge_PHM2022_training_data\data_pdmp5.csv","Delimiter",',');
pin5=readmatrix("Data_Challenge_PHM2022_training_data\data_pin5.csv","Delimiter",',');
po5=readmatrix("Data_Challenge_PHM2022_training_data\data_po5.csv","Delimiter",',');

%%
pdpm6=readmatrix("Data_Challenge_PHM2022_training_data\data_pdmp6.csv","Delimiter",',');
pin6=readmatrix("Data_Challenge_PHM2022_training_data\data_pin6.csv","Delimiter",',');
po6=readmatrix("Data_Challenge_PHM2022_training_data\data_po6.csv","Delimiter",',');

%%

%% ELIMINAZIONE COLONNE DOVE SONO PRESENTI ELEMENTI NAN

pdpm1=rmmissing(pdpm1,2);
pin1=rmmissing(pin1,2);
po1=rmmissing(po1,2);

%%

pdpm2=rmmissing(pdpm2,2);
pin2=rmmissing(pin2,2);
po2=rmmissing(po2,2);

%%

pdpm4=rmmissing(pdpm4,2);
pin4=rmmissing(pin4,2);
po4=rmmissing(po4,2);

%%

pdpm5=rmmissing(pdpm5,2);
pin5=rmmissing(pin5,2);
po5=rmmissing(po5,2);

%%

pdpm6=rmmissing(pdpm6,2);
pin6=rmmissing(pin6,2);
po6=rmmissing(po6,2);

%% CREAZIONE VETTORE DEI FAULT CODE

faul_code_1 = pdpm1(:,1);
faul_code_2 = pdpm2(:,1);
faul_code_4 = pdpm4(:,1);
faul_code_5 = pdpm5(:,1);
faul_code_6 = pdpm6(:,1);

%% ELIMINAZIONE DELLA COLONNA DEI FAULT CODE DALLE VARIE MATRICI

pdpm1(:,1) = [];
pin1(:,1) = [];
po1(:,1) = [];

%%

pdpm2(:,1) = [];
pin2(:,1) = [];
po2(:,1) = [];

%%

pdpm4(:,1) = [];
pin4(:,1) = [];
po4(:,1) = [];

%%

pdpm5(:,1) = [];
pin5(:,1) = [];
po5(:,1) = [];

%%

pdpm6(:,1) = [];
pin6(:,1) = [];
po6(:,1) = [];

%% TRASPOSIZIONE DELLE MATRICI

pdpm1_T = transpose(pdpm1);
pin1_T = transpose(pin1);
po1_T = transpose(po1);

%%

pdpm2_T = transpose(pdpm2);
pin2_T = transpose(pin2);
po2_T = transpose(po2);

%%

pdpm4_T = transpose(pdpm4);
pin4_T = transpose(pin4);
po4_T = transpose(po4);

%%

pdpm5_T = transpose(pdpm5);
pin5_T = transpose(pin5);
po5_T = transpose(po5);

%%

pdpm6_T = transpose(pdpm6);
pin6_T = transpose(pin6);
po6_T = transpose(po6);

%% CREAZIONE DI UNA TABLE INSERENDO IN OGNI ELEMENTO UNA COLONNA DELLA RELATIVA MATRICE

DATA = table();

for i = 1:7311
    DATA.Pdmp(i) = {array2timetable(pdpm1_T(:,i),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA.Pin(i) = {array2timetable(pin1_T(:,i),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA.Po(i) = {array2timetable(po1_T(:,i),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA.FaultCode(i) = {faul_code_1(i,1)};
end


for j = 1:7867
    DATA.Pdmp(i+j) = {array2timetable(pdpm2_T(:,j),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA.Pin(i+j) = {array2timetable(pin2_T(:,j),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA.Po(i+j) = {array2timetable(po2_T(:,j),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA.FaultCode(i+j) = {faul_code_2(j,1)};
end
%%

for k = 1:7597
    DATA.Pdmp(i+j+k) = {array2timetable(pdpm4_T(:,k),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA.Pin(i+j+k) = {array2timetable(pin4_T(:,k),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA.Po(i+j+k) = {array2timetable(po4_T(:,k),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA.FaultCode(i+j+k) = {faul_code_4(k,1)};

end

%%

for t= 1:7977
    DATA.Pdmp(i+k+j+t) = {array2timetable(pdpm5_T(:,t),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA.Pin(i+k+j+t) = {array2timetable(pin5_T(:,t),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA.Po(i+k+j+t) = {array2timetable(po5_T(:,t),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA.FaultCode(i+j+k+t) = {faul_code_5(t,1)};
end



for r = 1:3293
    DATA.Pdmp(i+k+j+t+r) = {array2timetable(pdpm6_T(:,r),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA.Pin(i+k+j+t+r) = {array2timetable(pin6_T(:,r),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA.Po(i+k+j+t+r) = {array2timetable(po6_T(:,r),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA.FaultCode(i+j+k+t+r) = {faul_code_6(r,1)};
end
%%
DATA.FaultCode = cell2mat(DATA.FaultCode);

%% CARICAMENTO E MANIPOLAZIONE FILE CSV DI TESTING PER CREAZIONE DELLA TEST TABLE

pdpm3=readmatrix("Data_Challenge_PHM2022_testing_data\data_pdmp3.csv","Delimiter",',');
pin3=readmatrix("Data_Challenge_PHM2022_testing_data\data_pin3.csv","Delimiter",',');
po3=readmatrix("Data_Challenge_PHM2022_testing_data\data_po3.csv","Delimiter",',');

pdpm3=rmmissing(pdpm3,2);
pin3=rmmissing(pin3,2);
po3=rmmissing(po3,2);

pdpm3(:,1) = [];
pin3(:,1) = [];
po3(:,1) = [];

pdpm3_T = transpose(pdpm3);
pin3_T = transpose(pin3);
po3_T = transpose(po3);

%%
DATA3 = table();

for i = 1:3184
    DATA3.Pdmp(i) = {array2timetable(pdpm3_T(:,i),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA3.Pin(i) = {array2timetable(pin3_T(:,i),"VariableNames",{'Data'},'SampleRate',50000)};
    DATA3.Po(i) = {array2timetable(po3_T(:,i),"VariableNames",{'Data'},'SampleRate',50000)};
end

%% TEST DEL MODELLO SUL DATASET REALE DI TESTING 

yfit = TrainedModel.predictFcn(FeatureTable1);

%% CREAZIONE ISTOGRAMMA PER LA VALUTAZIONE DELLA DISTRIBUZIONE DEI RISULTATI

histogram(yfit,'EdgeColor', 'k')
title('Distribuzione Predicted Class')
xlabel('Class Label')


