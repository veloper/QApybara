# QApybara

Script or test any website using Capybara and RSpec.

## Install & Setup

1. Fork and download the project.
2. Run `bundle install`.
3. Create a `config/env.yml` file.
    * Use `config/env.example.yml` as a reference.
    * The default environment is `development`.

4. Remove or modify the `spec/features/authentication_spec.rb` file.

## Usage

* Create specs in `spec/features` that test that site's behavior.
* Use `rake console` to play, plan, and debug.

## Commands

* `rake` - Run all specs.
* `rake console` - Open an interactive RSpec/Capybara console.

Prefix any command with `ENV=` to use a different environment. (e.g., `ENV=staging rake console`)
## Author

[Daniel Doezema](http://dan.doezema.com)

## License

Qapybara is released under the [New BSD license](http://dan.doezema.com/licenses/new-bsd/).
