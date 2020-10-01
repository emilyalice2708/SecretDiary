class SecretDiary
  def initialize
    @locked = true
    @entries = []
  end

  def locked?
    @locked
  end

  def unlock
    @locked = false
  end

  def add_entry(entry)
    return "Error, diary locked." if @locked
    @entries << entry
    return "Entry added."
  end

  def get_entries
    return "Error, diary locked." if @locked
    return @entries
  end

end
