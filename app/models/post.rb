class Post < ApplicationRecord
  belongs_to :user

  validates :title,
  presence: true

  validates :category,
	presence: true

  # has_reputation :votes, source: :user, aggregated_by: :sum

end
