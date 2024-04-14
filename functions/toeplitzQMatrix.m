function [ Q ] = toeplitzQMatrix( deltas, tapSpace   )
%% define toeplitz matrix E12
% delta in taps
Q=zeros(length(deltas));

for i=1:length(deltas)
    for j=1:length(deltas)
        Q(i,j)=GPSCAAutoCorr(abs(deltas(j)-deltas(i))*tapSpace);
    end
end

