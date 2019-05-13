classdef Cashier
    properties
        db
        order  % which will be write back to database.order
        order_count;
    end
    methods
        function obj= Cashier()
            obj.db = Database();
            obj.order_count = 0;
            
        end
        function obj = create_order(obj)
            obj.order_count = obj.order_count + 1;
            obj.order = Order(obj.order_count);
        end
        function obj = addItem(obj, item)
            % call the function in Order
            obj.order.add_item_and_update_price(item);
            return;
        end
        function obj = removeItem(obj, item)
            % call the function in Order
            obj.order.remove_item_and_update_price(item);
            return;
        end
        function obj = writeOrderBackToDatabase(obj)
            obj.db.writeOrder(obj.order);
            % TODO: save data 
            return;
        end
    end
end