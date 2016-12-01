class Event < ActiveRecord::Base
  has_many :program_items
  has_many :films, through: :program_items
end
