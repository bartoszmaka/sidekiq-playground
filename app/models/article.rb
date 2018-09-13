class Article < ApplicationRecord
  validates :title,
            format: { with: /\A[a-zA-Z]+\z/ },
            length: { minimum: 8, maximum: 450 }

  validates :description,
            format: { with: /\A[a-zA-Z]+\z/ },
            length: { maximum: 300 },
            allow_nil: true

  validates :accepted_terms, acceptance: true

  belongs_to :author, class_name: 'Writer', foreign_key: 'writer_id'
  belongs_to :project
end
