class AddContributorIdToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :contributor_id, :integer
  end
end
