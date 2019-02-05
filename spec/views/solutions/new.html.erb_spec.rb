require 'rails_helper'

RSpec.describe "solutions/new", type: :view do
  before(:each) do
    assign(:solution, Solution.new(
      :problem => "MyText",
      :solution => "MyText",
      :offers => ""
    ))
  end

  it "renders new solution form" do
    render

    assert_select "form[action=?][method=?]", solutions_path, "post" do

      assert_select "textarea[name=?]", "solution[problem]"

      assert_select "textarea[name=?]", "solution[solution]"

      assert_select "input[name=?]", "solution[offers]"
    end
  end
end
