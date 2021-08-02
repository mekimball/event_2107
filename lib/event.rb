class Event
    attr_reader :name,
                :food_trucks,
                :food_truck_names

  def initialize(name)
    @name = name
    @food_trucks = []
    @food_truck_names = []
  end

  def add_food_truck(food_truck)
    food_trucks.push(food_truck)
  end

  def food_truck_names
    @food_truck_names = food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item)
    trucks_with_inventory = []
    food_trucks.map do |truck|
      if truck.inventory.include?(item)
        trucks_with_inventory.push(truck)
      end
    end
    trucks_with_inventory
  end

  def total_inventory
    totes = {}
    food_trucks.each do |truck, item|
      truck.check_stock(item)
      require "pry"; binding.pry

    #   truck.inventory.each do |item, count|
    #     if totes[item].nil?
    #       totes[item] = {quantity: count}
    #     else
    #       totes[item] = count
    #     end
    #   end
    end
    totes
  end

  def sorted_item_list
    list = []
    food_trucks.each do |truck|
      truck.inventory.each do |item|
        list.push(item.first.name)
    # require "pry"; binding.pry
      end
    end
    list.uniq.sort
  end

  # def overstocked_items
  #   over = []
  #   require "pry"; binding.pry
  # end
end
