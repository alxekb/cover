require 'rails_helper'

RSpec.describe "reviews/edit", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :brand => "MyString",
      :author => "MyString",
      :review => "MyText"
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "input[name=?]", "review[brand]"

      assert_select "input[name=?]", "review[author]"

      assert_select "textarea[name=?]", "review[review]"
    end
  end
end
