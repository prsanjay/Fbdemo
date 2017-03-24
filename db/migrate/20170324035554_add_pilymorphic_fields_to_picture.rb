class AddPilymorphicFieldsToPicture < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :name, :string
    add_column :pictures, :attachable_id, :integer
    add_column :pictures, :attachable_type, :string
  end
end
