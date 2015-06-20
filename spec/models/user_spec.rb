require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  it "email must be present" do
     user = User.new
     user.email = ""#Faker::Internet.email
     expect(user.email).to be_empty

  end

  it "email must equal to " do
  	 user = User.new
  	 #user.email = "sirsathmanoj5@gmail.com"
  	 user.email = Faker::Internet.email
  	 email = user.email
  	 expect(user.email).to eq(email)
  end

  it "described class example" do
    expect(described_class).to equal(User)
  end

  it "password must be present" do
  	 user = User.new
  	 user.password = ""
  	 expect(user.password).to eq("")

  end

   # it "is empty when first created" do
   #  expect(described_class.new).to be_empty
   # end
  
end
