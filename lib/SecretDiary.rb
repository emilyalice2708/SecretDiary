class SecretDiary
  def initialize
    @locked = true
    @entries = []
  end

  def locked?
    @locked
  end

  def add_entry(entry)
    return "Error, diary locked." if @locked
  end

  def get_entries
    return "Error, diary locked." if @locked
  end

end
