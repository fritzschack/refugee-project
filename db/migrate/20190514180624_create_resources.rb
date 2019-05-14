class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :link
      t.string :text

      t.timestamps
    end
  end
end
