class Post < ApplicationRecord
  belongs_to :forum

  validates :title, presence: true
  validates :content, presence: true
  validates :forum_id, presence: true
  validates :img_url, format: { with: URI::regexp(%w[http https]), message: 'must be a valid URL' }

end