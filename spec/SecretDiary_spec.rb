require 'SecretDiary'

describe SecretDiary do

  it "is initially locked" do
    diary = SecretDiary.new
    expect((diary.locked?)).to eq(true)
  end

end
