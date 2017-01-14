# frozen_string_literal: true
class Image < ApplicationRecord
  has_many :image_tags
  has_many :tags, through: :image_tags

  validates :url, presence: true, format: /\A#{URI.regexp(%w(http https))}\z/
end
