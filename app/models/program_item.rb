class ProgramItem < ActiveRecord::Base
  belongs_to :event
  belongs_to :film
end
