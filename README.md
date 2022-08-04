# SinglyLinkedQueue

A simple linked queue data structure implementation.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add singly_linked_queue

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install singly_linked_queue

## Usage

```ruby
require 'singly_linked_queue'

queue = SinglyLinkedQueue::LinkedQueue.new

queue.push("Item 1")
queue.push("Item 2")

puts queue.pop # >> Item 1
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ariasdiniz/singly_linked_queue. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/ariasdiniz/singly_linked_queue/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SinglyLinkedQueue project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/ariasdiniz/singly_linked_queue/blob/main/CODE_OF_CONDUCT.md).
