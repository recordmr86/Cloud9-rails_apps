class CreateArticles3s < ActiveRecord::Migration
  def change
    create_table :articles3s do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
