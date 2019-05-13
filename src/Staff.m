classdef Staff
    properties
        ID;
        Name;
    end
    methods
        function obj= Staff(type, brand, price)
            obj.type = type;
            obj.brand = brand;
            obj.price = price;
        end
    end
end