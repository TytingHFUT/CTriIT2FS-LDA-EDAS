function omega_s1 = SA_of_criteria(omega_s,index,omega_s_index)

omega_s1 = omega_s;
omega_s1(index) = omega_s_index;
n = size(omega_s,1);
a = 1:n;
a (index) =[];
kk = sum(omega_s(a));
for i = 1:n
    if i ~=index
        omega_s1(i) = (1-omega_s_index)*(omega_s(i)/ kk  );
    else
        omega_s1(i) = omega_s_index;
    end
end

end