require 'SecretDiary'

describe SecretDiary do

  it "is initially locked" do
    diary = SecretDiary.new
    expect((diary.locked?)).to eq(true)
  end

  it "will return error message when locked if add_entry is called" do
    diary = SecretDiary.new
    expect(diary.add_entry("hello world")).to eq("Error, diary locked.")
  end

  it "will return error message when locked if get_entries is called" do
    diary = SecretDiary.new
    expect(diary.get_entries).to eq("Error, diary locked.")
  end

  it "will allow add_entry when unlocked without error message" do
      diary = SecretDiary.new
      diary.unlock
      expect(diary.add_entry("hello world")).to eq("Entry added.")
  end

  it "will return entries using get_entries while unlocked" do
    diary = SecretDiary.new
    diary.unlock
    diary.add_entry("hello world")
    expect(diary.get_entries).to eq(["hello world"])
  end


end
