require 'rails_helper'

RSpec.describe Vehicle, type: :model do

	before {
    @valid_attrs = { plate: "ABC123", color: "blacl", year: 2016 }
    @invalid_attrs = { plate: "ZXY123", color: "blacl", year: 2016 }
  }

  context "model validations" do

    it "is valid with all the attributes" do
      vehicle = Vehicle.new @valid_attrs
      vehicle.valid?.should eq(true)
    end

    it "is invalid with plate" do
      vehicle = Vehicle.new @invalid_attrs
      vehicle.valid?.should eq(false)
      vehicle.errors[:plate].size.should > 0
    end

    it "is valid plate for category 1" do
      vehicle = Vehicle.create @valid_attrs
      vehicle.valid?.should eq(true)
      vehicle.category.should eq(1)
    end

    it "is valid plate for category 2" do

      @valid_attrs[:plate] = "DFG123"
      vehicle = Vehicle.create @valid_attrs
      vehicle.valid?.should eq(true)
      vehicle.category.should eq(2)
    end 

    
  end
end
