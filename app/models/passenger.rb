class Passenger < ApplicationRecord
  include Base

  def full_name
  	"#{self.first_name} #{self.last_name}"
  end
end
