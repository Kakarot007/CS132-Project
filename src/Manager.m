classdef Manager
    properties
        % use db to add goods
        db;
    end
    methods
        function obj= Manager()
            obj.db = Database();
        end
        function obj = registerGoods(obj,brand, type, affiliate, price, src)
            obj.db.addGoods(brand, type, affiliate, price, src);
            % TODO: change Customer UI
            
            
        end
        function registerItem(obj,brand, type, affiliate, price)
            % TODO: todo in iter2
            
        end
        function getSummary(obj)
            % TODO: todo in iter2
            
        end
        
    end
end