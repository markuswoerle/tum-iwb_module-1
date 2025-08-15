% Technical University of Munich (TUM)
% TUM School of Engineering and Design
% Institute for Machine Tools and Industrial Management (iwb)
% Markus Woerle, M.Sc.

% Specifying the function to analyze the susceptibility for hydrogen-induced material damage
function [hydrogen_embrittlement_susceptibility,decarburization_susceptibility,high_temperature_corrosion_susceptibility] = susceptibility()
    
    % Calling the function to get the user input on contact with hydrogen and water vapor
    contact_hydrogen = input('Is the component in contact with hydrogen (y/n)?: ','s');
    contact_water_vapor = input('Is the component in contact with water vapor (y/n)?: ','s');
    
    % Specifying the susceptibility results for no contact with hydrogen
    if contact_hydrogen == 'n'
        hydrogen_embrittlement_susceptibility = 'n';
        decarburization_susceptibility = 'n';
    end
    
    % Specifying the susceptibility results for no contact with water vapor
    if contact_water_vapor == 'n'
        high_temperature_corrosion_susceptibility = 'n';    
    end
    
    % Specifying the susceptibility results for no contact with hydrogen or water vapor
    if contact_hydrogen == 'n' && contact_water_vapor == 'n'
        return;
    end
    
    % Calling the function to get the user input on the operating temperature
    operating_temperature = input('Is the component operated at temperatures above 200 °C (y/n)?: ','s');
    
    % Determining the susceptibility to hydrogen embrittlement and decarburization
    if contact_hydrogen == 'y' && operating_temperature == 'n'
        hydrogen_embrittlement_susceptibility = requirements(1);
        decarburization_susceptibility = 'n';
    elseif contact_hydrogen == 'y' && operating_temperature == 'y'
        decarburization_susceptibility = requirements(1);
        hydrogen_embrittlement_susceptibility = 'n';
    end
    
    % Determining the susceptibility to high-temperature corrosion
    if contact_water_vapor == 'y' && operating_temperature == 'y'
        high_temperature_corrosion_susceptibility = requirements(2);
    elseif contact_water_vapor == 'y' && operating_temperature == 'n'
        high_temperature_corrosion_susceptibility = 'n';
    end
    
end