class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.column :heading, :string
      t.column :post, :string

      t.timestamps
    end
  end
end
