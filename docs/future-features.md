# Future Features

## Wait List

Add:

```ruby
# app/models/wait_list.rb

class WaitList < ApplicationRecord
  # Active Record associations
end
```

### Purpose

A student can add themselves to a book's wait list if the book they want is checked out of the library. When the book is returned, the next student on the wait list gets notified and is allowed to borrow the book. They will have a time constraint to respond to the notification (i.e. check out the book) before the next student on the wait list is notified.
