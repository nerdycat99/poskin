# frozen_string_literal: true

class Supplier < ApplicationRecord
  has_many :products, dependent: :destroy

  validates :name, :phone, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
