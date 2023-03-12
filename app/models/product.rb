# frozen_string_literal: true

class Product < ApplicationRecord
  has_and_belongs_to_many :category_tags

  # Product.category_tags  #=> [<CategoryTag @name="Sports">, ...]
  # CategoryTag.products   #=> [<Product @name="UserA">, ...]
  # Product.category_tags.empty?
end
