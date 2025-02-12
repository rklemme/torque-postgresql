# Torque PostgreSQL

[![Build Status](https://travis-ci.org/crashtech/torque-postgresql.svg?branch=master)](https://travis-ci.org/crashtech/torque-postgresql)
[![Code Climate](https://codeclimate.com/github/crashtech/torque-postgresql/badges/gpa.svg)](https://codeclimate.com/github/crashtech/torque-postgresql)
[![Gem Version](https://badge.fury.io/rb/torque-postgresql.svg)](https://badge.fury.io/rb/torque-postgresql)
<!--([![Test Coverage](https://codeclimate.com/github/crashtech/torque-postgresql/badges/coverage.svg)](https://codeclimate.com/github/crashtech/torque-postgresql/coverage))-->
<!--([![Dependency Status](https://gemnasium.com/badges/github.com/crashtech/torque-postgresql.svg)](https://gemnasium.com/github.com/crashtech/torque-postgresql))-->

* [Wiki](https://github.com/crashtech/torque-postgresql/wiki)
* [Bugs](https://github.com/crashtech/torque-postgresql/issues)
* [TODO](https://github.com/crashtech/torque-postgresql/wiki/TODO)

# Description
`torque-postgresql` is a plugin that enhances Ruby on Rails enabling easy access to existing PostgreSQL advanced resources, such as data types and queries statements. Its features are designed to be as similar as Rails architecture and they work as smooth as possible.

100% plug-and-play, with optional configurations, so that can be adapted to your project's design pattern.

# Installation

To install torque-postgresql you need to add the following to your Gemfile:
```ruby
gem 'torque-postgresql', '~> 1.0'
```

Also, run:

```
$ bundle
```

Or, for non-Gemfile related usage, simply:

```
gem intall torque-postgresql
```

# Usage
These are the currently available features:

* [Configuring](https://github.com/crashtech/torque-postgresql/wiki/Configuring)

## Core Extensions

* [Range](https://github.com/crashtech/torque-postgresql/wiki/Range)

## Data types

* [Enum](https://github.com/crashtech/torque-postgresql/wiki/Enum)
* [EnumSet](https://github.com/crashtech/torque-postgresql/wiki/EnumSet)
* [Interval](https://github.com/crashtech/torque-postgresql/wiki/Interval)
* [Date/Time Range](https://github.com/crashtech/torque-postgresql/wiki/Date-Time-Range)
* [Box](https://github.com/crashtech/torque-postgresql/wiki/Box)
* [Circle](https://github.com/crashtech/torque-postgresql/wiki/Circle)
* [Line](https://github.com/crashtech/torque-postgresql/wiki/Line)
* [Segment](https://github.com/crashtech/torque-postgresql/wiki/Segment)

## Querying

* [Arel](https://github.com/crashtech/torque-postgresql/wiki/Arel)
* [Has Many](https://github.com/crashtech/torque-postgresql/wiki/Has-Many)
* [Belongs to Many](https://github.com/crashtech/torque-postgresql/wiki/Belongs-to-Many)
* [Dynamic Attributes](https://github.com/crashtech/torque-postgresql/wiki/Dynamic-Attributes)
* [Distinct On](https://github.com/crashtech/torque-postgresql/wiki/Distinct-On)
* [Auxiliary Statements](https://github.com/crashtech/torque-postgresql/wiki/Auxiliary-Statements)
* [Inherited Tables](https://github.com/crashtech/torque-postgresql/wiki/Inherited-Tables)

# How to Contribute

To start, simply fork the project, create a `.env` file following this example:

```
DATABASE_URL="postgres://USER:PASSWORD@localhost/DATABASE"
```

Run local tests using:
```
$ bundle install
$ bundle exec rake spec
```
Finally, fix and send a pull request.

## License

Copyright © 2017- Carlos Silva. See [The MIT License](MIT-LICENSE) for further details.
