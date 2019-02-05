require 'rails_helper'

RSpec.describe "reviews/index", type: :view do
  before(:each) do
    assign(:reviews, [
      Review.create!(
        :brand => "Brand",
        :author => "Author",
        :review => "MyText"
      ),
      Review.create!(
        :brand => "Brand",
        :author => "Author",
        :review => "MyText"
      )
    ])
  end

  it "renders a list of reviews" do
    render
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
