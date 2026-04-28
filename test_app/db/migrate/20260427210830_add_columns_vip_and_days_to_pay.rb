class AddColumnsVipAndDaysToPay < ActiveRecord::Migration[8.1]
  def change
    add_column :customers, :vip, :boolean
    add_column :customers, :days_to_pay, :integer
  end
end
