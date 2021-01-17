require 'rails_helper'

feature 'shopping cart flow' do 

	# we can include helpers as needed 

	let(:shopping_cart_page) { Pages::ShoppingCartPage.new}

	before do 
		#this may not work since we dont add this method to rails helper
		resize_window_detault
		shopping_cart_page.load
	end 
   
   #this is for xs size scenario only 
	scenario 'add XS product to the cart' do 
	  visit 'https://react-shopping-cart-67954.firebaseapp.com/'
      shopping_cart_page.select_xs_size
      expect(shopping_cart_page).to have_content 'Cat Tee Black T-Shirt'
      expect(shopping_cart_page).not_to have_content 'Dark Thug Blue-Navy T-Shirt'
      shopping_cart_page.add_item_to_cart
      shopping_cart_page.open_shopping_cart
      expect(shopping_cart_page_subtotal).to eql '$10.90'
      shopping_cart_page.click_checkout_button
    end 
end 
