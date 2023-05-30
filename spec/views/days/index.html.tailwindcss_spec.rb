require 'rails_helper'

RSpec.describe "days/index", type: :view do
  before(:each) do
    assign(:days, [
      Day.create!(),
      Day.create!()
    ])
  end

  it "renders a list of days" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
