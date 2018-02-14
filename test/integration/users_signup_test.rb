require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
test "valid signup information" do  
	get signup_path
	assert_difference 'user.count', 1 do
	post_via_redirect user_path, user: {name: y,
	                                    email: y@gmail.com,
	                                    password:1,
	                                    password_confirmation: 1
	                                }	

	
end
assert_template 'users/show'
end





	end