# frozen_string_literal: true

class Catalogue::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end

  def new
    @supplier = Supplier.new
    @gst_rates = TaxRate.all
  end

  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      redirect_to catalogue_suppliers_path
      # redirect_to @recipe # redirects to recipes/:id
    else
      render :new # just renders the view - does not redirect
    end
  end

  private

  def supplier_params
    params.require(:supplier).permit(:name, :email, :phone, :tax_rate_id, :address_id)
  end
end
