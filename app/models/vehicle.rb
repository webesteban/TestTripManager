class Vehicle < ApplicationRecord
	include Base

  before_create :set_category
  validate :rules_plates
  validates :plate, presence: true, uniqueness: true
  


  def rules_plates

    if !self.plate.start_with?('ABC', 'DFG')
      errors.add(:plate, 'should start with ABC or DFG')
    end     
  end

  def set_category
    self.category = self.plate.start_with?('ABC') ? 1 : 2    
  end

  
end
