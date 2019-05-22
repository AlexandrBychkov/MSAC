clear all;
data = dlmread('test.txt');                           %������ �� �����
x = data(3:end,1);
y = data(3:end,2);
z = data(3:end,3);
maxDistance = data(1:1,1);
cloud = [x y z];
ptCloud = pointCloud(cloud);                          %������������ ������ �����
ploat = pcfitplane(ptCloud,maxDistance);
a = ploat.Parameters(1,1);                            %���������� ���������� ������(���������)
b = ploat.Parameters(1,2);
c = ploat.Parameters(1,3);
d = ploat.Parameters(1,4);
fileID = fopen('ans.txt','w+'); %�������� �����
%fprintf('%f %f %f %f\n', a, b, c, d);
fprintf(fileID,'%f %f %f %f\n', a, b, c, d);          %������ � ����
fclose(fileID);                                       %�������� �����