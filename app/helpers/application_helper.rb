# frozen_string_literal: true

# Provides methods that can be used across all views.
module ApplicationHelper
  def apply_markdown(text, table_class: "", allow_lists: true)
    markdown = Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      no_intra_emphasis: true, fenced_code_blocks: true, autolink: true,
      strikethrough: true, superscript: true, tables: true, lax_spacing: true,
      space_after_headers: true, underline: true, highlight: true, footnotes: true
    )
    result = text.to_s
    result = replace_numbers_with_ascii(result) unless allow_lists
    result = markdown.render(result)
    result = result.encode("UTF-16", undef: :replace, invalid: :replace, replace: "").encode("UTF-8")
    result = add_table_class(result, table_class) unless table_class.blank?
    result.html_safe
  end

  def add_table_class(text, table_class)
    text.to_s.gsub(/<table>/m, "<table class=\"#{table_class}\">").html_safe
  end

  def src_abbr
    content_tag :abbr, "SRC", title: "Sleep Reading Center"
  end
end
