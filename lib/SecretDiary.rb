require_relative 'padlock'

class SecretDiary
  def initialize
    @padlock = Padlock.new
    @entries = []
  end

  def locked?
    @padlock.locked?
  end

  def unlock
    @padlock.unlock
  end

  def lock
    @padlock.lock
  end

  def add_entry(entry)
    return "Error, diary locked." if @padlock.locked?
    @entries << entry
    return "Entry added."
  end

  def get_entries
    return "Error, diary locked." if @padlock.locked?
    return @entries
  end

end
