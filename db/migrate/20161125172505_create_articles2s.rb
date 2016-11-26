class CreateArticles2s < ActiveRecord::Migration
  def change
    create_table :articles2s do |t|

      t.timestamps null: false
    end
  end
end
