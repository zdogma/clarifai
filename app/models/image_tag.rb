# frozen_string_literal: true
class ImageTag < ApplicationRecord
  belongs_to :image
  belongs_to :tag
end
