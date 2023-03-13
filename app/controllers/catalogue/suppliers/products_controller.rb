# frozen_string_literal: true

class Catalogue::Suppliers::ProductsController < ApplicationController
  def index
    Rails.logger.debug '************'
    Rails.logger.debug params.inspect
  end
end
