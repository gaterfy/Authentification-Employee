# app/models/department.rb
class Department < ActiveRecord::Base
  validates :dept_name, uniqueness: true, presence: true,
                    length: { minimum: 3}
end
