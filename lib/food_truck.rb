class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if inventory[item].nil?
      inventory[item] = 0
    else
      inventory[item]
    end
  end

  def stock(item, count)
    if inventory[item].nil?
      inventory[item] = count
    else
      inventory[item] += count
    end

    def potential_revenue
      pot_rev = []
      inventory.each do |item|
        pot_rev.push(item[0].price * item[-1])
      # require "pry"; binding.pry
    end
    pot_rev.sum
    end
  end

end
