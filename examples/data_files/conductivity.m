function k = conductivity(eu)
%CONDUCTIVITY evaluate the temeprature dependent 
%conductivity of the material

k = zeros(size(eu));

for i=1:size(eu,1)
    for j=1:size(eu,2)
        if eu(i,j) > 800
            k(i,j) =  34.0 * (eu(i,j)/800);
        else
            k(i,j) =  26.7 * ((800-eu(i,j))/800);
        end
    end
end

end

