class RemoveIndexOnAnswerId < ActiveRecord::Migration[5.1]
  def change
    remove_index :responses, :answer_id
  end
end
