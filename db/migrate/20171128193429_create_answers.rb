class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.column :body, :text
      t.column :question_id, :integer

      t.timestamps
    end
  end
end
