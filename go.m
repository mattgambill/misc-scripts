clear,clc
x = int2str(csvread('books.csv'))

for i=1:length(x)
sys_cmd=strcat("firefox https://www.amazon.com/gp/search/ref=sr_adv_b/?field-isbn=",x(i,:))
system(sys_cmd)
end
