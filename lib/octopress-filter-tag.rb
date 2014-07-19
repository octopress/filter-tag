require "octopress-filter-tag/version"
require "octopress-tag-helpers"
require "jekyll"

module Octopress
  module Tags
    module FilterTag
      class Tag < Liquid::Block
        def initialize(tag_name, markup, tokens)
          super
          unless markup.strip =~ /^\|/
            markup = "| #{markup}"
          end
          @markup = " #{markup}"
        end

        def render(context)
          content = super.strip

          return content unless markup = TagHelpers::Conditional.parse(@markup, context)
          if markup =~ TagHelpers::Var::HAS_FILTERS and !content.nil?
            content = TagHelpers::Var.render_filters(content, $2, context)
          end

          content
        end
      end
    end
  end
end

Liquid::Template.register_tag('filter', Octopress::Tags::FilterTag::Tag)
