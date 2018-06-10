# frozen_string_literal: true

module ApplicationHelper
  def email_name(email)
    email.split("@").first
  end

  def heading(heading = "")
    return "mospend" if heading.empty?
    heading.downcase
  end
end
