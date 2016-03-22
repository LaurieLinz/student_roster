class Student < ActiveRecord::Base
  validates :first_name, presence: true
end
