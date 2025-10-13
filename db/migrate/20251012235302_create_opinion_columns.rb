class CreateOpinionColumns < ActiveRecord::Migration[7.2]
  def change
    create_table :opinion_columns do |t|
      t.string :title
      t.text :content
      t.string :author_name
      t.datetime :publish_date
      t.references :podcast_episode, null: false, foreign_key: true

      t.timestamps
    end
  end
end
