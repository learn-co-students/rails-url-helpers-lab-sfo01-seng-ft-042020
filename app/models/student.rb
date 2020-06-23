class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active?
    self.active ? self.active : !self.active
  end

  # def activate_student_path
  #   if !self.active
  #     self.active = "Inactive"
  #   else
  #     self.active = "Active"
  #     byebug
  #   end

  # end
 

end