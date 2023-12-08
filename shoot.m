
function shoot(cmd,captSize)

    % Simulation parameters
    total_time = 5;  % total simulation time
    dt = 0.75;       % time step

    % Shooting object parameters
    initial_position_shooter = captPt13=[ 3*captSize; -2*captSize; 1] || captPt14=[ -captSize; -2*captSize; 1]; 
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
                % Update positions based on motion equations
                position_shooter = initial_position_shooter + initial_velocity_shooter * t(i);

                % Plot the objects
                plot(position_shooter(1), position_shooter(2), '^', 'MarkerSize', 10, 'MarkerFaceColor', 'k');
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
            end
        %elseif cmd == 'q'
            %disp('Simulation aborted. Key pressed is ''q''.');
            %break;  % Exit the while loop
        else
            disp('Unknown key pressed. Press ''r'' ');
        end
    end

end

endfunction
