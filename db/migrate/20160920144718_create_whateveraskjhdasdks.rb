class CreateWhateveraskjhdasdks < ActiveRecord::Migration[5.0]
  def change
    create_table :whateveraskjhdasdks do |t|
      t.string :caption

      t.timestamps
    end
  end
end
