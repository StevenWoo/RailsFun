class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total_price
    if quantity == nil
      puts 'quant nil'
    end
    product.price * quantity
  end
  
end
