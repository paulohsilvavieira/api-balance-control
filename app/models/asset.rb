class Asset < ApplicationRecord
  validates :name, presence: true
  validates :code, presence: true
  validates :type, presence: true
end
