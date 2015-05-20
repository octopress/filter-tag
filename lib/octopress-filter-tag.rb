require "octopress-filter-tag/version"
require "octopress-tag-helpers"
require "jekyll"

module Octopress
  module Tags
    module Filter
      class Tag < Liquid::Block
        def initialize(tag_name, markup, tokens)
          super
          unless markup.strip =~ /^\|/
            markup = " | #{markup}"
          end
          @markup = " #{markup}"
        end

        def render(context)
          content = super.strip
          
          return content unless markup = TagHelpers::Conditional.parse(@markup, context)

          if !content.nil? and markup =~ TagHelpers::Var::HAS_FILTERS
            content = TagHelpers::Var.render_filters(content, $2, context)
          end

          content
        end
      end
    end
  end
end

Liquid::Template.register_tag('filter', Octopress::Tags::Filter::Tag)

if defined? Octopress::Docs
  Octopress::Docs.add({
    name:        "Octopress Filter Tag",
    gem:         "octopress-filter-tag",
    version:     Octopress::Tags::Filter::VERSION,
    description: "A liquid block tag that filters its contents.",
    path:        File.expand_path(File.join(File.dirname(__FILE__), "../")),
    source_url:  "https://github.com/octopress/filter-tag"
  })
end
