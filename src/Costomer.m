classdef Customer
    properties
        money = 0;
        items = []
    end
    methods
        function obj= Customer(money)
            obj.money = money;
        end
        
    end
end