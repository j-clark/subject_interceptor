# SubjectInterceptor

SubjectInterceptor allows you to prepend text to the subject of all emails sent through ActionMailer

## Installation

Add this line to your application's Gemfile:

    gem 'subject_interceptor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install subject_interceptor

## Usage

```ruby
  # config/environments/staging.rb
  Mail.register_interceptor SubjectInterceptor.new('[STAGING]')
```

## Authors

* Joshua Clark - [@j-clark](https://github.com/j-clark)
* Alex Kwiatkowski - [@rupurt](https://github.com/rupurt)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
