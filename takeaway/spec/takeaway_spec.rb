require './lib/takeaway_challenge.rb'

describe Restaurant do

  let(:new_order) { Restaurant.new }
  let(:dish) { "lasagne" }
  let(:quantity) { 2 }

  it 'shows the menu' do
    expect(new_order.see_menu).to eq(new_order.menu)
  end

  it 'selects the order' do
    expect(new_order.select_order(dish, quantity)).to be_a(Array)
  end
  it 'creates the final bill' do
    expect(new_order.bill).to be_a(String)
  end

end
