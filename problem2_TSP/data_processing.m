%
clc
clear
%% get data
% filename = 'cumcm2011B附件2_全市六区交通网路和平台设置的数据表.xls';
% sheet = '全市交通路口节点数据';
% xlrange = 'B2:E583';
% sample_data = xlsread(filename,sheet,xlrange);
% save('sampledata.mat','sample_data');

%  sheet = '全市交通路口的路线';
%  xlrange = 'A2:B929';
%  conn_data = xlsread(filename,sheet,xlrange);
%  save('connectdata.mat','conn_data');

%  sheet = '全市交巡警平台';
%  xlrange = 'A2:B81';
%  [police_data,station_name,~] = xlsread(filename,sheet,xlrange);
%  ps_data={station_name,police_data};
%  save('psdata.mat','ps_data');

%  sheet = '六城区的基本数据';
%  xlrange = 'B2:C7';
%  city_data = xlsread(filename,sheet,xlrange);
%  save('citydata.mat','city_data');
%% load data
 load sampledata.mat;
 load psdata.mat;
 load citydata.mat;
 load connectdata.mat;
 
 
