class PlantTag < ApplicationRecord
  belongs_to :plant
  belongs_to :tag

  # To make sure there are no duplicates being selected
  validates :tag, uniqueness: {scope: :plant, message: "already added"}
end
