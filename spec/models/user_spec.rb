require 'spec_helper'

describe User do
  it "should create a new instance given valid attributes" do
    @valid_attributes = {
        :email => 'me@me.com',
        :salt => Time.now.to_i.to_s
    }
    User.create!(@valid_attributes)
  end

  it "should authenticate a correct password" do
    @valid_attributes = {
        :email => 'me@me.com',
        :salt => Time.now.to_i.to_s
    }
    my_user = User.create!(@valid_attributes)
    plaintext = '1MyPassword.'
    my_user.encrypt(plaintext)
    my_user.save
    my_user.authenticate(plaintext).should be_true
  end

  it "should authenticate two different objects with different passwords" do
    user1 = User.create(:email => 'user1@mydomain.com', :salt => Time.now.to_i.to_s)
    user2 = User.create(:email => 'user2@mydomain.com', :salt => Time.now.to_i.to_s)
    user1_plaintext = '1MyPassword.'
    user1.encrypt(user1_plaintext)
    user1.save
    user1.authenticate(user1_plaintext).should be_true

    user2_plaintext = '2MyPassword.'
    user2.encrypt(user2_plaintext)
    user2.save
    user2.authenticate(user2_plaintext).should be_true
  end

  it "should fail authentication on a wrong password" do
    @valid_attributes = {
        :email => 'me@me.com',
        :salt => Time.now.to_i.to_s
    }
    my_user = User.create!(@valid_attributes)
    my_user.encrypt('1MyPassword.')
    my_user.save
    my_user.authenticate('2yPassword.').should be_false
  end

  it "should disallow multiple users with the same email addresses" do
    my_salt = Time.now.to_i.to_s
    plaintext = '1MyPassword.'
    @valid_attributes = {
        :email => 'me@me.com',
        :password_digest => User.encrypt(plaintext, my_salt),
        :salt => my_salt
    }
    user1 = User.create!(@valid_attributes)
    user1.save
    User.create(@valid_attributes).should_not be_valid
  end
end
