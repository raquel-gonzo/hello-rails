class CreateArticles < ActiveRecord::Migration[6.0]
  def change # method name
    create_table :articles do |t|
      t.string :title # one string column
      t.text :text # one text column

      t.timestamps
    end
  end
end
