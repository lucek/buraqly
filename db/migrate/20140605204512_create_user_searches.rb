class CreateUserSearches < ActiveRecord::Migration
  def change
    create_table :user_searches do |t|
      t.date :date
      t.string :search_term
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
