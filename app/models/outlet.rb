class Outlet < ActiveRecord::Base
  has_and_belongs_to_many :cuisines
  belongs_to :user
end