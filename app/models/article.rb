class Article < ApplicationRecord
  validates :title,
            length: { minimum: 8, maximum: 450 }

  validates :description,
            length: { maximum: 300 },
            allow_nil: true

  validates :accepted_terms, acceptance: true

  belongs_to :author, class_name: 'Writer', foreign_key: 'writer_id'
end
