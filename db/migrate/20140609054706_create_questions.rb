class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string "statement", limit: 1024, null: false
      t.string "answer", null: false
    end
  end
end
