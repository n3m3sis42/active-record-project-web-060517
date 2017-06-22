class AddReturnedAndDueDateToBookUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :book_users, :returned, :boolean, :default => false
    add_column :book_users, :due_date, :datetime
  end
end
