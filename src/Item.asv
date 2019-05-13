classdef Item < Goods
    properties (SetAccess=immutable)
        ID = 0;
        date = 0;
        barcode = "";
        
    end
%     enumeration
%         Inventory, Shelf, Sold, Abandoned
%     end
    methods
        function obj= Item(good, ID, date, barcode)
            obj = obj@Goods(obj);
            obj.ID = ID;
            obj.date = date;
            obj.barcode = barcode;
        end
    end
end