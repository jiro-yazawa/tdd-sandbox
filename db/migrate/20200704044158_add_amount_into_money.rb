class AddAmountIntoMoney < ActiveRecord::Migration[6.0]
  def change
    add_column :money, :amount, :integer
  end
end
