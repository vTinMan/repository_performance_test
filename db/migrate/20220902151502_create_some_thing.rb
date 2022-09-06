class CreateSomeThing < ActiveRecord::Migration[7.0]
  def change
    create_table :some_things do |t|
      t.string :name
      t.string :display_name
      t.string :short_description
      t.boolean :is_hidden, default: false
      t.integer :kind_cd, default: 0
      t.integer :category_id
      t.decimal :price, precision: 8, scale: 2
      t.text :description
      t.text :comment
      t.jsonb :details, default: {}
    end
  end
end
