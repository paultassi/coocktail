class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validate_uniqueness_of :cocktail_id, scope: :ingredient_id
end
