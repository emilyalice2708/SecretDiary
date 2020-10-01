require 'padlock'

describe Padlock do
  it "is initially locked" do
    padlock = Padlock.new
    expect(padlock.locked?).to eq(true)
  end

  it "can be unlocked" do
    padlock = Padlock.new
    padlock.unlock
    expect(padlock.locked?).to eq(false)
  end

  it "can be locked again" do
    padlock = Padlock.new
    padlock.unlock
    padlock.lock
    expect(padlock.locked?).to eq(true)
  end

end
