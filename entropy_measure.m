function [Phi_m_c] = entropy_measure(m_c,LDA2C)
%  entropy_measure 计算m_c的熵测度
%   m_c是一个CTriIT2F-LDA
%   LDA2C是隶属度
%   m_c = c_ass(7,:); 测试代码被注释
AA = e_num_scale(m_c,LDA2C);
BB = 2.882-(-2.882);
CC = (AA-(-2.882))/BB;
DD = log(CC);
EE = (-AA+2.882)/BB;
FF=log(EE);
Phi_m_c=-CC*DD-EE*FF;
end