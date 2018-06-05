# frozen_string_literal: true

module ApplicationHelper
  def heading(heading = "")
    return "mospend" if heading.empty?
    heading.downcase
  end
end
