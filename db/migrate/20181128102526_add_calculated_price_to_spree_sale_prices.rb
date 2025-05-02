class AddCalculatedPriceToSpreeSalePrices < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_sale_prices, :calculated_price, :decimal, precision: 10, scale: 2
  end
end
