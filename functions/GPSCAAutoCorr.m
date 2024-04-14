function [ Rtao ] = GPSCAAutoCorr( tao)
%% define observation matrix E14 from Blanco-Delgado
%�μ� Blanco-Delgado ���ĸ�¼
%Tc =0.001/1023;


% it is right
% Tc = 1;
% tao = abs(tao);
% if tao<=Tc
%     Rtao = 1- tao/Tc;
% else
%     Rtao = 0;
% end

% it is also right
Rtao = Rcorr(tao);




