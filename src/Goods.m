classdef Goods
    properties (SetAccess=immutable)
        brand = "";
        type = "";
        affiliate = ""
        price = 0;
        img_src = '';
        remain_num = 0;
    end
    methods
        function obj= Goods(brand, type, affiliate, price, src)
            obj.type = type;
            obj.brand = brand;
            obj.affiliate = affiliate;
            obj.price = price;
            obj.img_src = src;
        end
        function result = isEqual(obj, goods)
            if obj.type == goods.type && obj.brand==goods.brand
                result = true;
                return;
            else
                result = false;
            end
        end
        % opt on brand
        function result = getBrand(obj)
            result = obj.brand;
            return;
        end
        function obj = setBrand(obj, brand)
            obj.brand = brand;
            return;
        end
        % opt on type
        function result = getType(obj)
            result = obj.type;
            return;
        end
        function obj = setType(obj, type)
            obj.type = type;
            return;
        end
        
        % opt on price
        function result = getPrice(obj)
            result = obj.price;
            return;
        end
        function obj = setPrice(obj, price)
            obj.price = price;
            return;
        end
        % opt on remain number
        function result = getNumber(obj)
            result = obj.remain_num;
            return;
        end
        function obj = setNumber(obj, num)
            obj.remain_num = num;
            return;
        end
        
    end
end









        