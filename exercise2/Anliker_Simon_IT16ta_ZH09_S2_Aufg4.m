% calculate eps and save to variable eps

% if eps is 0 set to 1
if(1 + eps ~= 1)
    eps = 1;
end

% divide by 2 util we reach eps
while(eps/2 ~= 0)
    eps = eps/2;
end