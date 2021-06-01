%kourosh Ahmadzadeh Ataei%
%6/1/2021%
%9512762583%
function DCTsAllFrames = DCTFrames(path)
dct = @(block_struct) dct2(block_struct.data);

vid=VideoReader(path);
n = vid.NumFrames;
DCTsAllFrames=zeros(540,960,n);

for i = 1:1:n
  frames = read(vid,i);
  I = im2gray(frames);
  J = blockproc(I ,[8 8] ,dct);
  %J = dct2(I ,[540 540]);
  DCTsAllFrames(:,:, i) = J;
end 
end
