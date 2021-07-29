class Specialty < ActiveRecord::Base
  has_many :specialty_specialists
  has_many :specialists, through: :specialty_specialists
end
