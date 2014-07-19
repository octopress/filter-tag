# Octopress Filter Tag

A Liquid block tag which can conditionally filter its content.

[![Build Status](https://travis-ci.org/octopress/filter-tag.svg)](https://travis-ci.org/octopress/filter-tag)
[![Gem Version](http://img.shields.io/gem/v/octopress-filter-tag.svg)](https://rubygems.org/gems/octopress-filter-tag)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://octopress.mit-license.org)

## Installation

Add this line to your application's Gemfile:

    gem 'octopress-filter-tag'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install octopress-filter-tag

Next add it to your gems list in Jekyll's `_config.yml`

    gems:
      - octopress-filter-tag

## Usage

Syntax:

    {% filter [filters] %}
    some sort of content
    {% endfilter %}

Simple filter usage.

    {% filter upcase  %}
    kittens.
    {% endfilter %}     
    
    //=> KITTENS.

    {% filter upcase | replace: "?","!" %}
    kittens??
    {% endfilter %}     
    
    //=> KITTENS!!

Conditional filtering

    {% assign shouting = true %}

    {% filter | upcase if shouting %}
    What's going on?
    {% endfilter %}

    //=> WHAT'S GOING ON?


## Contributing

1. Fork it ( https://github.com/octopress/filter-tag/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

