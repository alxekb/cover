require 'rails_helper'

RSpec.describe "offers/edit", type: :view do
  before(:each) do
    @offer = assign(:offer, Offer.create!(
      :name => "MyString",
      :idea => "MyText",
      :purpose => "MyText",
      :description => "MyText",
      :blogger => nil,
      :price => "9.99"
    ))
  end

  it "renders the edit offer form" do
    render

    assert_select "form[action=?][method=?]", offer_path(@offer), "post" do

      assert_select "input[name=?]", "offer[name]"

      assert_select "textarea[name=?]", "offer[idea]"

      assert_select "textarea[name=?]", "offer[purpose]"

      assert_select "textarea[name=?]", "offer[description]"

      assert_select "input[name=?]", "offer[blogger_id]"

      assert_select "input[name=?]", "offer[price]"
    end
  end
end
