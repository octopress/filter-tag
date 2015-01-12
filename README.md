# Octopress Filter Tag

A Liquid block tag which can conditionally filter its content.

[![Build Status](https://travis-ci.org/octopress/filter-tag.svg)](https://travis-ci.org/octopress/filter-tag)
[![Gem Version](http://img.shields.io/gem/v/octopress-filter-tag.svg)](https://rubygems.org/gems/octopress-filter-tag)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://octopress.mit-license.org)

## Installation

If you're using bundler add this gem to your site's Gemfile in the `:jekyll_plugins` group:

    group :jekyll_plugins do
      gem 'octopress-filter-tag'
    end

Then install the gem with Bundler

    $ bundle

To install manually without bundler:

    $ gem install octopress-filter-tag

Then add the gem to your Jekyll configuration.

    gems:
      -octopress-filter-tag

## Usage

Syntax:

```
{% filter [filters] %}
some sort of content
{% endfilter %}
```

Simple filter usage.

```
{% filter upcase  %}
kittens.
{% endfilter %}     

//=> KITTENS.

{% filter upcase | replace: "?","!" %}
kittens??
{% endfilter %}     

//=> KITTENS!!
```

Conditional filtering

```
{% assign shouting = true %}

{% filter | upcase if shouting %}
What's going on?
{% endfilter %}

//=> WHAT'S GOING ON?
```

## Contributing

1. Fork it ( https://github.com/octopress/filter-tag/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

