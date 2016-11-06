def pet_shop_name(pet_shop)
  pet_shop[:name]
end

def total_cash(cash)
  cash[:admin][:total_cash]
end

def add_or_remove_cash(petshop, change_cash)
  petshop[:admin][:total_cash] += change_cash
end

def pets_sold(pets_gone)
  pets_gone[:admin][:pets_sold]
end

def increase_pets_sold(pets, pets_sold)
    pets[:admin][:pets_sold] += pets_sold
end

def stock_count(stock_of_pets)
    stock_of_pets[:pets].length
end

def pets_by_breed(pet_shop, breed)
  array = []

  for pet in pet_shop[:pets]
    if (pet[:breed] == breed)
      array << pet 
    end
  end
  return array
end 

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if (pet[:name] == name)
      return pet
    end
  end
  return nil
end 

def remove_pet_by_name(pet_shop, name)
    for pet in pet_shop[:pets]
      if (pet[:name] == name)
          pet_shop[:pets].delete(pet)
      end
    end
end 

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end 

def customer_pet_count(argh)
  for x in @customers
    if (x == argh)
      return argh[:pets].count
    end
  end
end
  
def add_pet_to_customer(customer, new_pet)
   customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
    if customer[:cash] >= new_pet[:price]
      return true
    else 
      return false
    end
end

# def sell_pet_to_customer(pet_shop, pet_name, customer)
#     x = stock_count(pet_shop)
#     add_pet_to_customer(customer, pet_name)
#     remove_pet_by_name(pet_shop, pet_name)
#     customer_pet_count(customer)
#     y = stock_count(pet_shop)
#     z = x - y
#     increase_pets_sold(pet_shop, z)
# end