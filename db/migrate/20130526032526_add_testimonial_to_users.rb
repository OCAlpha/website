class AddTestimonialToUsers < ActiveRecord::Migration
  def change
    add_column :users, :testimonial, :text
  end
end
