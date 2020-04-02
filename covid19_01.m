% load data from excel 
[ndata, text, alldata] = xlsread('COVID.xlsx', 'COVID-19-geographic-disbtributi');

%% 

dd  = ndata(:,2);
mm  = ndata(:,3);
yy  = ndata(:,4);
time = datenum(yy, mm, dd);

%%

deaths = ndata(:,6);

%%
geoId = [text{:,8}];
ti = strcmp(text(:,8),'US');
ii = find(ti);

figure(1)
plot(time(ii),deaths(ii),'+-')

%%

