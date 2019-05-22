clear all;
data = dlmread('test.txt');                           %чтение из файла
x = data(3:end,1);
y = data(3:end,2);
z = data(3:end,3);
maxDistance = data(1:1,1);
cloud = [x y z];
ptCloud = pointCloud(cloud);                          %формирование облака точек
ploat = pcfitplane(ptCloud,maxDistance);
a = ploat.Parameters(1,1);                            %извлечение параметров модели(плоскости)
b = ploat.Parameters(1,2);
c = ploat.Parameters(1,3);
d = ploat.Parameters(1,4);
fileID = fopen('ans.txt','w+'); %открытие файла
%fprintf('%f %f %f %f\n', a, b, c, d);
fprintf(fileID,'%f %f %f %f\n', a, b, c, d);          %запись в файл
fclose(fileID);                                       %закрытие файла