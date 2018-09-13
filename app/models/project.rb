class Project < ApplicationRecord
  validates_with ProjectValidator

  has_many :writers
  has_many :articles, through: :writers
end

