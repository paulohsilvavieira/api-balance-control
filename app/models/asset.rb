class Asset < ApplicationRecord
  validates :name, presence: true
  validates :code, presence: true
  validates :category, presence: true
end
