require 'helpers'
require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

module Pages
  class ShoppingCartPage < SitePrism::Page
    include Helpers

    element :xs_size  'span.checkmark', text: 'XS'
    element :small_size  'span.checkmark', text: 'S'
    element :medium_size  'span.checkmark', text: 'M'
    element :large_size  'span.checkmark', text: 'L'
    element :ml_size  'span.checkmark', text: 'ML'
    element :xl_size  'span.checkmark', text: 'XL'
    element :xxl_size  'span.checkmark', text: 'XXL'
    element :add_item_button 'div.shelf-item__buy-btn'
    element :shoping_cart 'span.bag bag--float-cart-closed'
    element :subtotal '#sub-price__val'
    element :checkout_button 'div.buy-btn'


# we can add method for every size as per needs 

	 def select_xs_size
	  xs_size.click
	 end 
	  

	 def add_item_to_cart
	  add_item_button.click
	 end 

	 def open_shopping_cart
	   shopping_cart.click
	 end 

	 def click_checkout_button
	  checkout_button.click
	 end

    end 
  end 
end 
