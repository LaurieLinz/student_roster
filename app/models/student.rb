class Student < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :home_phone,:cell_phone, :work_phone, numericality: true
end
