class Event < ActiveRecord::Base
  has_many :program_items, dependent: :destroy
  has_many :films, through: :program_items
end
