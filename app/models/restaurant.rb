class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # Un restaurant doit avoir un nom, une adresse et une catégorie.
  CATEGORY = %w(chinese italian japanese french belgian).freeze
  validates :category, inclusion: { in: CATEGORY }
  validates :name, :address, presence: true
end
