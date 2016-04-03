class Student < ActiveRecord::Base
  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true
  validates :email, presence: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :home_phone,:cell_phone, :work_phone, numericality: true
end
