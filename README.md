# Advent of Code

Advent of Code solutions.

## Getting started

### Requirements

* [Bundler] 2.0+
* [Ruby] 3.0+

Clone the repository and change into the `aoc` directory, and install the
dependencies specified in the [Gemfile]. The solutions do not require any
third-party dependencies to run, the only dependencies specified are used for
development and testing purposes.

```
git clone git@github.com:unfunco/aoc.git
cd aoc && bundle install
```

```bash
# It's important to only have a comma between the year and the day arguments.
# Spaces can cause the command to break.
bundle exec rake test[2022,1]
```

```bash
bundle exec rubocop
```

```bash
# Shorthand: -a
bundle exec rubocop --autocorrect
```

## License

© 2022 [Daniel Morris]\
Made available under the terms of the [Apache License 2.0](LICENSE.md).

[bundler]: https://bundler.io
[daniel morris]: https://unfun.co
[gemfile]: Gemfile
[ruby]: https://www.ruby-lang.org
