clc,clear,close all
load aio_label.mat;
load cityio_label.mat;

load sampledata.mat;
load psdata.mat;
load citydata.mat;
load connectdata.mat;

circle_dis = 3;
anum = length(find(sample_data(:,3) == 1));
blocka = find(sample_data(:,3) == 1);

adjam =  zeros(92,92);
[M,N]=size(conn_data);


for i = 1:M
    label_src = conn_data(i,1);
    label_des = conn_data(i,2);
    x_src =sample_data(label_src,1);
    y_src =sample_data(label_src,2);
    
    x_des =sample_data(label_des,1);
    y_des =sample_data(label_des,2);
    
    if (label_src <= anum) && (label_des <= anum)
        adjam(label_src,label_des) = sqrt((x_src-x_des)^2 + (y_src-y_des)^2);
    end
end

adjam = adjam.*100;
adjam(find(adjam == 0)) = inf;