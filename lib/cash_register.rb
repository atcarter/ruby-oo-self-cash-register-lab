
class CashRegister

    attr_accessor :discount, :total, :last

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @last = price * quantity
        i = 0
        while i < quantity
            @items << title
            i += 1
        end

        self.total += self.last
    end

    def apply_discount
        if discount != 0
            self.total *= 1 - self.discount.to_f / 100
            self.total
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end        
    end

    def items
        @items
    end

    def void_last_transaction
        self.total -= self.last
        self.items.pop
        self.total.to_f
    end
    


   




    




end
