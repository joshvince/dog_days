require 'rails_helper'

RSpec.describe "days/show", type: :view do
  before(:each) do
    assign(:day, Day.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
