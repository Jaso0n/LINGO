%
clc
clear
%% get data
% filename = 'cumcm2011B����2_ȫ��������ͨ��·��ƽ̨���õ����ݱ�.xls';
% sheet = 'ȫ�н�ͨ·�ڽڵ�����';
% xlrange = 'B2:E583';
% sample_data = xlsread(filename,sheet,xlrange);
% save('sampledata.mat','sample_data');

%  sheet = 'ȫ�н�ͨ·�ڵ�·��';
%  xlrange = 'A2:B929';
%  conn_data = xlsread(filename,sheet,xlrange);
%  save('connectdata.mat','conn_data');

%  sheet = 'ȫ�н�Ѳ��ƽ̨';
%  xlrange = 'A2:B81';
%  [police_data,station_name,~] = xlsread(filename,sheet,xlrange);
%  ps_data={station_name,police_data};
%  save('psdata.mat','ps_data');

%  sheet = '�������Ļ�������';
%  xlrange = 'B2:C7';
%  city_data = xlsread(filename,sheet,xlrange);
%  save('citydata.mat','city_data');
%% load data
 load sampledata.mat;
 load psdata.mat;
 load citydata.mat;
 load connectdata.mat;
 
 
