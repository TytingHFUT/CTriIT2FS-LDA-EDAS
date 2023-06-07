function [En] = e_num_scale(m_c,LDA2C)
%   e_num_scale用以计算期望数值尺度
%   m_c是一个CTriIT2F-LDA
%   LDA2C是隶属度
%   m_c = c_ass(7,:); 测试代码被注释

E_m = zeros(1,6);
for i = 1:7
    E_m = E_m+LDA2C(i,:)*m_c(i);
end
En = 0.5*((E_m(1)+E_m(2)+E_m(4)+E_m(5)+3.8*E_m(3))/3.8);
end