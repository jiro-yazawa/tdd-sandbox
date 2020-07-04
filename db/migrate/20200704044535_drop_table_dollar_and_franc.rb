class DropTableDollarAndFranc < ActiveRecord::Migration[6.0]
  def change
    drop_table :dollars
    drop_table :francs
  end
end
