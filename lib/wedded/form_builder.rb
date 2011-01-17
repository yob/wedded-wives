# coding: utf-8

module Wedded
  class FormBuilder < Formtastic::SemanticFormBuilder
    # Display some manual text within the same markup as a formtastic element.
    #
    # Handy for displaying read-only values like prices, dates, etc.
    #
    #   <% f.inputs do %>
    #     <%= f.manual_text "Somewhere", :label => "Delivery Location:" %>
    #   <% end %>
    #
    def manual_text(value, options={})
      label_text   = options[:label] || ""
      wrapper_html = options.delete(:wrapper_html) || {}
      wrapper_html[:class] = (["plain"] << wrapper_html[:class]).flatten.compact.join(' ')

      input_html = options.delete(:input_html) || {}

      list_item_content =  self.label(label_text, options_for_label(options))
      list_item_content += template.content_tag(:span, value, input_html)

      return template.content_tag(:li, list_item_content, wrapper_html)
    end

  end
end
