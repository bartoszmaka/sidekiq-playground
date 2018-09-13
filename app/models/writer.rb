class Writer < ApplicationRecord
  has_many :articles, foreign_key: 'writer_id'
  belongs_to :project
end
