class CreateBookUsers < ActiveRecord::Migration[5.1]
  def change
      create_table :book_users do |t|
        t.belongs_to :book
        t.belongs_to :user
      end
  end
end
