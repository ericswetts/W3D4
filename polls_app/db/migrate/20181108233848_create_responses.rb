class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer :answer_id
      t.integer :respondent_id
      t.timestamps
    end
    add_index :responses, :answer_id, unique: true
  end
end
