require 'rails_helper'

RSpec.describe "offers/index", type: :view do
  before(:each) do
    assign(:offers, [
      Offer.create!(
        :name => "Name",
        :idea => "MyText",
        :purpose => "MyText",
        :description => "MyText",
        :blogger => nil,
        :price => "9.99"
      ),
      Offer.create!(
        :name => "Name",
        :idea => "MyText",
        :purpose => "MyText",
        :description => "MyText",
        :blogger => nil,
        :price => "9.99"
      )
    ])
  end

  it "renders a list of offers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
