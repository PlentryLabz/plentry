class Link < ActiveRecord::Base
  attr_accessible :url, :user_id

  belongs_to :user

  validates :url, presence: true,
                  url: true
  validates :user, presence: true
end
