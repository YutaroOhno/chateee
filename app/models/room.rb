class Room < ActiveRecord::Base
  belongs_to :group
  has_many :users
end
