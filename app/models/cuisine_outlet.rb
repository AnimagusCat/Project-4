class CuisineOutlet < ActiveRecord::Base
  belongs_to :cuisine
  belongs_to :outlet
end