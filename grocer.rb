def consolidate_cart(cart)
  new_cart = {} 
  cart.each do |items_array| 
    items_array.each do |item, attribute_hash| 
      new_cart[item] ||= attribute_hash 
      new_cart[item][:count] ? new_cart[item][:count] += 1 :   
      new_cart[item][:count] = 1 
  end 
end 
new_cart 
end

def apply_coupons(cart, coupons)
    coupon.each do |item|
    name_of_item = item[:item]
    if cart.has_key?(name_of_item) == true && cart[name_of_item][:count] >= item[:num]
      cart[name_of_item][:count] = cart[name_of_item][:count] - item[:num]
       new_item = name_of_item + (" W/COUPON")
       puts cart.has_key?(new_item)
       if cart.has_key?(new_item) == false
         cart[new_item] = {:price => item[:cost], :clearance => cart[name_of_item][:clearance], :count => 1}
       else 
         cart[new_item][:count] += 1
       end
     end
   end
   cart
 end
end

def apply_clearance(cart)
  #your code here
end

def checkout(cart, coupons)
  #your code here
end