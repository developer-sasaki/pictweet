class Tweet < ApplicationRecord
   # imageも空で投稿できないように追記
  validates :text, :image, presence: true
  belongs_to :user
  has_many :comments





end