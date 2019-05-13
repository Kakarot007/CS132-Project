classdef Goods
    properties (SetAccess=immutable)
        type = "";
        brand = "";
        price = 0;
    end
    methods
        function obj= Goods(brand, type, price)
            obj.type = type;
            obj.brand = brand;
            obj.price = price;
        end
        function result = isEqual(obj, goods)
            if obj.type == goods.type && obj.brand==goods.brand
                result = true;
            end
        end
    end
end









        