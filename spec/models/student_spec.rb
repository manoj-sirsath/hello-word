require 'rails_helper'

RSpec.describe Student, type: :model do
#let(:student) { Student.create!(:first_name =>"manoj", :last_name => "sirsath")  }
  #pending "add some examples to (or delete) #{__FILE__}"
  it "first Name should be equal " do
      student = Student.create!(:first_name =>"manoj", :last_name => "sirsath")  
      expect(student.first_name).to eq('manoj')
  end

   it "mark should not be empty" do 
   	   student = Student.new
   	   student.first_name = Faker::Name.name  
   	   student.last_name = "m"
   	   student.mark = 50
	   expect(student.mark).to eq(50)
   end

   it "email must be present" do
   	
   end

end
