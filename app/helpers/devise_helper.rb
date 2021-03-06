# frozen_string_literal: true

module DeviseHelper
  # A simple way to show error messages for the current devise resource. If you need
  # to customize this method, you can either overwrite it in your application helpers or
  # copy the views to your application.
  #
  # This method is intended to stay simple and it is unlikely that we are going to change
  # it to add more behavior or options.
  def devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map do |msg|
      content_tag(:li, class: "border-0 list-group-item") do
        content_tag(:p, msg.downcase!, class: "text-center")
      end
    end.join
    sentence = I18n.t(
      "errors.messages.not_saved",
      count: resource.errors.count,
      resource: resource.class.model_name.human.downcase
    )

    html = <<-HTML
    <div id="flash" class="alert border-0 d-flex flex-column justify-content-center m-0 px-3 py-0">
      <ul class="list-group">
        #{messages}
      </ul>
    </div>
    HTML

    html.html_safe
  end
end
