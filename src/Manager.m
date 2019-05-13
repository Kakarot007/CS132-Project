classdef Manager
    properties
        db;
    end
    methods
        function obj= Manager()
            obj.db = Database();
        end
        function registerGoods(obj,brand, type, price)
            obj.db.addGoods(brand, type, price)
            % TODO: change Customer UI
            
        end
        function registerItem(obj,brand, type, price)
            % TODO: todo in iter2
            
        end
        function getSummary(obj)
            % TODO: todo in iter2
            
        end
        
    end
end