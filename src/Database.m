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
%                 remove(obj.db_goods(""), 0);
                remove(obj.db_goods, 0);
                
                
                obj.db_orders_count = 0;
                obj.db_orders = containers.Map(0,struct);
                remove(obj.db_orders, 0);
                
                % init solid goods in the data base
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("���", "��ԡ¶", 13, 'img\��ױϴ��\��ԡ¶\dove.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("ǿ��", "��ԡ¶", 20, 'img\��ױϴ��\��ԡ¶\johnson.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("�����", "��ԡ¶", 15, 'img\��ױϴ��\��ԡ¶\sfj.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("����˿", "ϴ��¶", 18, 'img\��ױϴ��\ϴ��¶\hfs.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("Ʈ��", "ϴ��¶", 15, 'img\��ױϴ��\ϴ��¶\rejoice.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("����", "��Ƭ", 3, 'img\ʳƷ\��Ƭ\ls.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("�ɱȿ�", "��Ƭ", 3, 'img\ʳƷ\��Ƭ\kbk.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("������", "����", 6, 'img\ʳƷ\����\ala.jpg');
                
                obj.db_goods_count = obj.db_goods_count + 1;
                obj.db_goods(obj.db_goods_count) = Goods("�óԵ�", "����", 5, 'img\ʳƷ\����\hcd.jpg');
                
                save 'data/cashier_db.mat' obj
            end
            
            %save 'data/cashier_db.mat' obj
        end
        function writeData(obj)
            save 'data/cashier_db.mat' obj;
        end
        function goods = findGoods(obj,name)
            for i = 1:obj.db_goods_count
                if obj.db_goods(i).brand == name
                    goods = obj.db_goods(i);
                    return;
                end
            end
            goods = Goods("", "", 0, "");
            return;
                
        end
        function addGoods(obj,brand, type, price, src)
            obj.db_goods_count = obj.db_goods_count + 1;
            obj.db_goods(obj.db_goods_count) = Goods(brand, type, price, src);
        end
        function removeGoods(obj,brand, type, price, src)
            % TODO
            obj.db_goods_count = obj.db_goods_count + 1;
            obj.db_goods(obj.db_goods_count) = Goods(brand, type, price, src);
        end
        function result = getGoods(obj, count)
            if count <= obj.db_goods_count
                result = obj.db_goods(count);
                return;
            else
                result = Goods("", "", 0, "");
            end
        end
        function result = getGoodsNum(obj)
            result = obj.db_goods_count;
            return;
        end
        function writeOrder(obj, order)
            obj.db_orders_count = obj.db_orders_count + 1;
            obj.db_orders(obj.db_orders_count) = order;
            return;
        end
    end
end