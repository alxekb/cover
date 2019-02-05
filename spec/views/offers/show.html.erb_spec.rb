require 'rails_helper'

RSpec.describe "offers/show", type: :view do
  before(:each) do
    @offer = assign(:offer, Offer.create!(
      :name => "Name",
      :idea => "MyText",
      :purpose => "MyText",
      :description => "MyText",
      :blogger => nil,
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
  end
end
