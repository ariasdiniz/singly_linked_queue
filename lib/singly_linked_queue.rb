# frozen_string_literal: true

require_relative "singly_linked_queue/version"
require_relative 'item'

module SinglyLinkedQueue
  ##
  # Class that represents the linked queue.
  class LinkedQueue
    attr_accessor :first, :last

    def initialize
      @first = @last = nil
    end

    ##
    # Adds a new item at the end of the queue.
    # @return nil
    def put(item = nil)
      if @first.nil?
        @first = @last = Item.new(item)
      else
        new_item = Item.new(item)
        new_item.next = @last
        @last.before = new_item
        @last = new_item
      end
    end

    ##
    # Remove the last element of the list and returns its value.
    # @return (Object, nil)
    def pop
      unless @first.nil?
        last_item = Marshal.load(Marshal.dump(@first))
        @first = @first.before
        return last_item.value
      end
      nil
    end

    ##
    # Returns the value of the first element of the queue without removing it
    # @return Object
    def self.first
      @first.value
    end

    ##
    # Returns the value of the last element of the queue without removing it
    # @return Object
    def self.last
      @last.value
    end
  end
end
