require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
	

	def setup
		@attr = { :userid => "test", :email => "test@test.com", :password => "test", :name=> "John Doe" }
	end

  test "user id can not be null" do
		#debugger
		@attr = @attr.merge({:userid => ""})
		no_userid_user = User.new(@attr)
    assert !no_userid_user.save, "Can not save a user without userid"
  end
  
	test "email can not be null" do
		@attr = @attr.merge({:email => ""})
		no_email_user = User.new(@attr)
    assert !no_email_user.save, "Can not save a user without email"
  end
	
	test "should accept valid email addresses" do
		addresses = %w[user.joe@foo.org user@foo.com abc.cde@foo.com first@foo.bar.org]
		ctr = 0
		#debugger
		addresses.each do | address |
			@attr = @attr.merge({:email => address })
			@attr = @attr.merge({:userid => @attr[:userid] + "#{ctr}"})
			valid_email_user = User.new(@attr)
    	assert valid_email_user.save, "Accepts valid email addresses"
			ctr += 1
		end
  end
  
	test "should reject invalid email addresses" do
		addresses = %w[user@foo,com user_at_foo.org example.user@foo. first@last]
		addresses.each do | address |
			@attr = @attr.merge({:email => address })
			invalid_email_user = User.new(@attr)
    	assert !invalid_email_user.save, "Can not save a user invalid email"
		end
  end

	test "should have unique userid" do
		a_user = User.create(@attr)
		@attr = @attr.merge({ :userid => "test", :email => "test1@test.com", :password => "test1", :name=> "John Doe 1" })
		b_user = User.new(@attr)
		assert !b_user.save, "Can not create two users with same userid"
	end


end
