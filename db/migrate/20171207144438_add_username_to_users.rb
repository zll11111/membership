class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
    add_column :users, :name, :string
    add_column :users, :birth_date, :datetime
    add_column :users, :sex, :integer
    add_column :users, :origin_place, :string
    add_column :users, :nationality, :string
    add_column :users, :id_card, :string
    add_column :users, :politcal_status, :string
    add_column :users, :college, :string
    add_column :users, :rank, :string
    add_column :users, :edu_background, :string
    add_column :users, :position, :string
    add_column :users, :degree, :string
    add_column :users, :work_place, :string
    add_column :users, :community, :string
    add_column :users, :tel, :string
    add_column :users, :address, :string
    add_column :users, :status, :integer
  end
end
