classdef Database
    properties
        db_goods;
        db_goods_count;
        db_items;
        db_orders;
        db_orders_count;
        db_staff;
    end
    methods
        function obj= Database()
            if ~exist('data','dir')
                mkdir('data')
            end
            if exist('data\cashier_db.mat','file')
                load 'data\cashier_db.mat' obj;
            else
                % init
                obj.db_goods_count = 0;
                obj.db_goods = containers.Map(0,struct);
%                 remove(obj.db_goods(""), 0);
                remove(obj.db_goods, 0);
                
                
                obj.db_orders_count = 0;
                obj.db_orders = containers.Map(0,struct);
                remove(obj.db_orders, 0);
                
                % init solid goods in the data base
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("多芬", "沐浴露", '美妆洗护',13, 10, 'img\美妆洗护\沐浴露\dove.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("强生", "沐浴露",'美妆洗护', 20, 10, 'img\美妆洗护\沐浴露\johnson.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("舒肤佳", "沐浴露", '美妆洗护', 15, 10, 'img\美妆洗护\沐浴露\sfj.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("海飞丝", "洗发露", '美妆洗护', 18, 10, 'img\美妆洗护\洗发露\hfs.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("飘柔", "洗发露", '美妆洗护', 15, 10, 'img\美妆洗护\洗发露\rejoice.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("乐事", "薯片", '食品', 3, 10, 'img\食品\薯片\ls.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("可比克", "薯片", '食品', 3, 10, 'img\食品\薯片\kbk.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("奥利奥", "饼干",'食品', 6, 10, 'img\食品\饼干\ala.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("好吃点", "饼干",'食品', 5, 10, 'img\食品\饼干\hcd.jpg');
                
                save 'data\cashier_db.mat' obj
            end
            
            save 'data\cashier_db.mat' obj
        end
        function obj = loadData(obj)
            load '..\data\cashier_db.mat' obj;
        end
        function writeData(obj)
            save 'data\cashier_db.mat' obj;
        end
        function goods = findGoods(obj,name)
            for i = 1:obj.db_goods_count
                if strcmp(obj.db_goods(i).brand, name)
                    goods = obj.db_goods(i);
                    return;
                end
            end
            goods = Goods("", "", 0, "");
            return;    
        end
        function setNumber(obj, goods, num)
            for i = 1:obj.db_goods_count
                if obj.db_goods(i).isEqual(goods)
                    setNumber(obj.db_goods(i), num);
                    
                    return;
                end
            end
        end
        function obj = addGoods(obj,brand, type, affiliate, price,remain_num, src)
            obj.db_goods_count = obj.db_goods_count + 1;
            obj.db_goods(obj.db_goods_count) = Goods(brand, type, affiliate, price, remain_num, src);
            obj.writeData();
        end
        function obj = removeGoods(obj,brand, type, affiliate, price, src)
            % TODO
            obj.db_goods_count = obj.db_goods_count + 1;
            obj.db_goods(obj.db_goods_count) = Goods(brand, type, affiliate, price, remain_num, src);
        end
        function result = getGoods(obj, count)
            if count <= obj.db_goods_count
                result = obj.db_goods(count);
                return;
            else
                result = Goods("", "", "", 0, 0, "");
            end
        end
        function result = getGoodsNum(obj)
            result = obj.db_goods_count;
            return;
        end
        function obj = writeOrder(obj, order)
            obj.db_orders_count = obj.db_orders_count + 1;
            obj.db_orders(obj.db_orders_count) = order;
            return;
        end
    end
end