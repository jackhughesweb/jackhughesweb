class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.date :publish_date
      t.boolean :published
      t.string :slug

      t.timestamps
    end
  end
end
