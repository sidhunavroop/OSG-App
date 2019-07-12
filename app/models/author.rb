class Author < ApplicationRecord
  before_create :set_full_name
  has_many :blogs

  def set_full_name
    self.full_name = [first_name, last_name].join(' ')
  end
end
