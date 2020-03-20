def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  # Consult README for inputs and outputs
  i = 0

  while i < collection.size do
    item_hash = collection[i]

    if (item_hash[:item] === name)
      return item_hash
    end
    i += 1
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  updated_cart = []
    i = 0

      while i < cart.size do
        item = cart[i][:item]
        item_hash = find_item_by_name_in_collection(item, updated_cart)

          if item_hash
          cart[i][:count] += 1
          else
            cart[i][:count] = 1
            updated_cart << cart[i]
          end
    i +=1
      end

  updated_cart
end


def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
i = 0
updated_cart = []

  while i < coupons.size do
    coupon = coupons[i]
    name = cart[i][:item]
    items_w_coupons = find_item_by_name_in_collection(coupon[:item], coupons)

      if items_w_coupons[:name] == cart[i][:name]
        updated_cart << {:item => "#{cart[i][:item]} W/COUPON",
                :price => items_w_coupons[:price]/items_w_coupons[:num],
                :clearance => cart[i][:clearance],
                :count => items_w_coupons[:count]}

      updated_cart<< cart[i][:count] = (cart[i][:count] % items_w_coupons[:count])
      end
    i += 1
  end

updated_cart
end


def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
