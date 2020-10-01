class SecretDiary
  def initialize
    @locked = true
    @entries = []
  end

  def locked?
    @locked
  end
end
