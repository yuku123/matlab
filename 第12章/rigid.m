function dy = rigid(t,y)
dy = zeros(3,1);    % ппоРа©
dy(1) = y(2) * y(3);
dy(2) = -y(1) * y(3);
dy(3) = -0.51 * y(1) * y(2);
