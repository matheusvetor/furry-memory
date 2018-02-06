class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages, id: :uuid do |t|
      t.string :url, null: false, default: ''
      t.jsonb :content

      t.timestamps
    end
  end
end
