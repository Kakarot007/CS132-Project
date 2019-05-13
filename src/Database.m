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
            if exist('data/cashier_db.mat','file')
                load 'data/cashier_db.mat' obj
            else
                % init
                obj.db_goods_count = 0;
                obj.db_goods = containers.Map(0,struct);
                remove(obj.db_goods, 0);
                obj.db_orders_count = 0;
                obj.db_orders = containers.Map(0,struct);
                remove(obj.db_orders, 0);
                
                % init solid goods in the data base
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("���", "��ԡ¶", 13);
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("ǿ��", "��ԡ¶", 20);
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("����˿", "ϴ��¶", 18);
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("Ʈ��", "ϴ��¶", 15);
                
            end
            
            %save 'data/cashier_db.mat' obj
        end
        function writeData(obj)
            save 'data/cashier_db.mat' obj;
        end
        function addGoods(obj,brand, type, price)
            obj.db_goods_count = obj.db_goods_count + 1;
            obj.db_goods(obj.db_goods_count) = Goods(brand, type, price);
        end
        function removeGoods(obj,brand, type, price)
            % TODO
            obj.db_goods_count = obj.db_goods_count + 1;
            obj.db_goods(obj.db_goods_count) = Goods(brand, type, price);
        end
        function get_infoGoods(obj)
            % TODO
            
        end
        function writeOrder(obj, order)
            obj.orders_count = obj.orders_count + 1;
            obj.orders(obj.orders_count) = order;
            return;
        end
    end
end