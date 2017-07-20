class Travel < ApplicationRecord
  include Base
  belongs_to :vehicle
  belongs_to :passenger
end
