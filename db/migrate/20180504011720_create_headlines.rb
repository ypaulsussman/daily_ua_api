class CreateHeadlines < ActiveRecord::Migration[5.2]
  def change
    create_table :headlines do |t|
      t.string :text_ua
      t.string :text_en_google
      t.string :text_en_user

      t.timestamps
    end
  end
end
