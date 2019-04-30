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
[M,~]=size(conn_data);


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
adjam = adjam + adjam';
adjam(find(adjam == 0)) = inf;
[m,n] = size(adjam);
for i = 1:m
    for j = 1:n
        if i == j
            adjam(i,j) = 0;
        end
    end
end

a = adjam;
path = zeros(n);
for k = 1:n
    for i = 1:n
        for j = 1:n
            if a(i,j)>a(i,k)+a(k,j)
                a(i,j) = a(i,k)+a(k,j);
                path(i,j) = k;
            end
        end
    end
end

