# Faster Rails Tests
### An example app

This example app demonstrates some techniques to dramatically increase
the speed of your Rails test, whilst writing highly cohesive code.  This
example only covers unit tests designed to be run as part of a red/green/refactor cycle, and expects that there would be a separate
integration suite which would be run before committing code.

Please checkout the
[slides]('https://github.com/seenmyfate/faster_rails_tests_presentation')
from my [Magrails conference presentation]('http://www.magrails.com') or
my [blog post]('http://tom-clements.com') for more specific details.

### master branch
Start in the master branch - initially our logic to calculate the discount is in the Basket model. Try running the following and note the time it takes to run the tests:

    bundle
    rake db:test:prepare
    time bundle exec rake spec
    time bundle exec rspec spec
    time rspec spec

### extract_business_logic_into_modules
Checkout extract_business_logic_into_modules, this is the first refactor - the business logic has been moved into lib/discount_caclulator.rb, which is included into the Basket - see the difference in test times:

    time bundle exec rake spec
    time bundle exec rspec spec
    time rspec spec

note that as `sum` is an Active Support core extension, and we're not including Rails, the method has been changed to use `inject(:+)` _1.9.2 specific_

### extract_domain_objects_into_classes branch
Checkout extract_domain_objects_into_classes, the logic has been
extracted into a class:

    time bundle exec rake spec
    time bundle exec rspec spec
    time rspec spec


### including_specific_parts_of_rails branch

This example demonstrates inclusion of specific parts of rails, in this case we
revert to `sum` and include Active Suppoort's Enumerable core
extensions in the test:

    time rspec spec_no_rails


### testing_helpers_without_rails branch

This example demonstrates a way to test Rails helpers without including
Rails

## loads_of_tests branch

This example contains 1002 specs to demonstrate how this approach could
work on a larger scale - on my mac this will run in under a second

## Further reading

This example taken from real life code, refactoring inspired by Corey Haines' talk at Golden Gate Ruby Conf

* coreyhaines - confreaks.net/videos/641-gogaruco2011-fast-rails-tests
* garybernhardt - destroyallsoftware.com
* martinfowler - objectmentor.com/resources/articles/srp.pdf

