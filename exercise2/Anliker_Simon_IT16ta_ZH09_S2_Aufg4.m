% calculate eps and save to variable eps

% divide by 2 util we reach eps
eps = 1;
while 1 + eps ~= 1
    eps = eps/2;
end
eps = eps * 2;