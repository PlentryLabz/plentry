class Link < ActiveRecord::Base
  attr_accessible :url

  belongs_to :user

  validates :url, presence: true,
                  url: true
  validates :user, presence: true
end
