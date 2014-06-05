class CreateSearchResults < ActiveRecord::Migration
  def change
    create_table :search_results do |t|
      t.belongs_to :user_search, index: true
      t.belongs_to :vegetable, index: true

      t.timestamps
    end
  end
end
