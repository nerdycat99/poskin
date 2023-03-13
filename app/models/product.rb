# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :supplier
  has_and_belongs_to_many :category_tags

  # Product.category_tags  #=> [<CategoryTag @name="Sports">, ...]
  # CategoryTag.products   #=> [<Product @name="UserA">, ...]
  # Product.category_tags.empty?

  scope :published, lambda {
    where(publish: true)
  }
end
