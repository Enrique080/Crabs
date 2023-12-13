
function shoot(cmd, xPosition_shooter, yPosition_shooter, theta)

    % Simulation parameters
    total_time = 5;  % total simulation time
    dt = 0.10;       % time step
    dStep = 0.05;
   

    % Shooting object parameters
    initial_position_shooter = [xPosition_shooter, yPosition_shooter];
    %captPt13=[ 3*captSize; -2*captSize; 1] || captPt14=[ -captSize; -2*captSize; 1]; 
    initial_velocity_shooter = [0, 1];   % initial velocity


    % Time vector
    t = 0:dt:total_time;

    % Initialize figure
    figure;

    while true
        % Wait for a key press
        waitforbuttonpress;

        % Get the pressed key
        cmd = get(gcf, 'CurrentCharacter');

        % Check if the pressed key is 'r'
        if cmd == 'r'
            for i = 1:length(t)
                
                %position_shooter = initial_position_shooter + initial_velocity_shooter * t(i);
                xPosition_shooter = xPosition_shooter + dStep*cos(theta) ;
                yPosition_shooter = yPosition_shooter + dStep*sin(theta) ;

                % Plot the objects
                plot(xPosition_shooter, yPosition_shooter, '^', 'MarkerSize', 10, 'MarkerFaceColor', 'k');
                hold on;
                xlabel('X-axis');
                ylabel('Y-axis');
                title('Object Shooting Another Object');
                axis equal;
                xlim([-1, 6]);
                ylim([-1, 6]);
                hold off;

                % Pause to create animation effect
                pause(0.1);
            endfor
        elseif cmd == 'q'
            disp('Simulation aborted. Key pressed is ''q''.');
            break;  % Exit the while loop
        else
            disp('Unknown key pressed. Press ''r'' ');
        endif
    endwhile

endfunction


