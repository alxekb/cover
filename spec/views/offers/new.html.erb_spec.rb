require 'rails_helper'

RSpec.describe "offers/new", type: :view do
  before(:each) do
    assign(:offer, Offer.new(
      :name => "MyString",
      :idea => "MyText",
      :purpose => "MyText",
      :description => "MyText",
      :blogger => nil,
      :price => "9.99"
    ))
  end

  it "renders new offer form" do
    render

    assert_select "form[action=?][method=?]", offers_path, "post" do

      assert_select "input[name=?]", "offer[name]"

      assert_select "textarea[name=?]", "offer[idea]"

      assert_select "textarea[name=?]", "offer[purpose]"

      assert_select "textarea[name=?]", "offer[description]"

      assert_select "input[name=?]", "offer[blogger_id]"

      assert_select "input[name=?]", "offer[price]"
    end
  end
end
