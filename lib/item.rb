##
# This class represents the items inside the queue.
# Attributes:
#   value: (Object)
class Item
  attr_accessor :value, :next, :before

  def initialize(value = nil)
    @value = value
    @next = nil
    @before = nil
  end

  ##
  # Returns the value held by this item as string
  # @return String
  def to_s
    @value.to_s
  end
end
