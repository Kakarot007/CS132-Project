classdef Order
    properties
        items;   % map struct
        items_count;
        price;
        ID;
    end
    methods
        function obj= Order(id)
            %init order class
            obj.items = containers.Map(0,struct);
            obj.items_count = 0;
            remove(obj.items, 0);
            obj.price = 0;
            % TODO: order ID
            obj.ID = id;
            
        end
        % add item which is goods in iter0
        function obj = add_item_and_update_price(obj, item)
            obj.items_count = obj.items_count + 1;
            obj.items(obj.items_count) = item;
            obj.price = obj.price + item.price;
        end
        function obj = remove_item_and_update_price(obj, item)
            for i = 1:obj.items_count
                if obj.items(i).isEqual(item)
                    remove(obj.items,i);
                    obj.items_count = obj.items_count - 1;
                    obj.price = obj.price - item.price;
                    return;
                end
            end
        end
        function result = get_price(obj)
            result = obj.price;
        end
    end
end