require 'rails_helper'

RSpec.describe "days/edit", type: :view do
  let(:day) {
    Day.create!()
  }

  before(:each) do
    assign(:day, day)
  end

  it "renders the edit day form" do
    render

    assert_select "form[action=?][method=?]", day_path(day), "post" do
    end
  end
end
