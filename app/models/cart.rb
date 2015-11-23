class Cart < ActiveRecord::Base
  has_many :line_items

  def sub_total
    line_items.to_a.sum{|item| item.total_price}
  end
end
