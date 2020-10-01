require 'SecretDiary'

describe SecretDiary do

  it "is initially locked" do
    diary = SecretDiary.new
    expect((diary.locked?)).to eq(true)
  end

  it "will return error when locked if add_entry is called" do
    diary = SecretDiary.new
    expect(diary.add_entry("hello world")).to eq("Error, diary locked.")
  end

end
