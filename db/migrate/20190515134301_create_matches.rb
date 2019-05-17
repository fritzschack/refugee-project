class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches, :force => true do |t|
      t.integer :user_a_id, :null => false
      t.integer :user_b_id, :null => false

      t.timestamps
    end
  end
end
