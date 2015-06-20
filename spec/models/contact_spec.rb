require 'rails_helper'

RSpec.describe Contact, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "has a valid factory" do
  	expect(FactoryGirl.create(:contact)).to be_valid
  end

  it "is invalid without a firstname"  do 
  	expect(FactoryGirl.build(:contact, first_name: nil)).to be_valid 
  end
  it "is invalid without a lastname" do
  	FactoryGirl.build(:contact, lastname: nil).should_not be_valid
  end
  it "returns a contact's full name as a string" do

  end

  it "does not allow duplicate "
end
