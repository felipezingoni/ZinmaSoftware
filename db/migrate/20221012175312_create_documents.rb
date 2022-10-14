class CreateDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :documents do |t|
      t.string :name_document
      t.string :created_by
      t.date :date

      t.timestamps
    end
  end
end
