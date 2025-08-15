% Technical University of Munich (TUM)
% TUM School of Engineering and Design
% Institute for Machine Tools and Industrial Management (iwb)
% Markus Woerle, M.Sc.

% Specifying the function to analyze the susceptibility to hydrogen embrittlement, decarburization, and high-temperature corrosion
function susceptibility = requirements(mechanism)
    
    % Determining the susceptibility to hydrogen embrittlement and decarburization
    if mechanism == 1
        requirement_1 = input('Is the component made from an austenitic steel alloy with stable carbides (y/n)?: ','s');
        if requirement_1 == 'y'
            susceptibility = 'n';
            return;
        elseif requirement_1 == 'n'
            requirement_2 = input('Is the component plated or coated with a low-diffusivity material (y/n)?: ','s');
            if requirement_2 == 'y'
                susceptibility = 'n';
                return;
            elseif requirement_2 == 'n'
                susceptibility = 'y';
                return;
            end
        end
    end

    % Determining the susceptibility to high-temperature corrosion
    if mechanism == 2
        requirement_3 = input('Is the component made from a steel alloy with stable oxide formers (y/n)?: ','s');
        if requirement_3 == 'y'
            susceptibility = 'n';
            return;
        elseif requirement_3 == 'n'
            susceptibility = 'y';
            return;
        end
    end
    
end