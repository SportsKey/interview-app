class User < ApplicationRecord
  before_save :set_full_name

  def set_full_name
    self.full_name = [first_name, last_name].join(" ")
  end
end
