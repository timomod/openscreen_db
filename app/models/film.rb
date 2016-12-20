class Film < ActiveRecord::Base
  has_many :program_items, dependent: :destroy
  has_many :events, through: :program_items
end
