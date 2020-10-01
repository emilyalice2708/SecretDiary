require 'padlock'

describe Padlock do
  it "is initially locked" do
    padlock = Padlock.new
    expect(padlock.locked?).to eq(true)
  end

end
