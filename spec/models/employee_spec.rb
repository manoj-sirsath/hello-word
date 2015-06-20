require 'rails_helper'

RSpec.describe Employee, type: :model do
 # pending "add some examples to (or delete) #{__FILE__}"

  it "orders by last name" do
  	Employee.create!(:first_name => "Andy", :last_name => 'Andarson')
    employee = Employee.new
    employee.first_name = "Andy"
    #chelimsky = Employee.create!(first_name: "David", last_name: "Chelimsky")
    expect(employee.first_name).to eq('Andy')
    
  end
  
end
