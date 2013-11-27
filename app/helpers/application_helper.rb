module ApplicationHelper
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.blank?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def flash_message(key, value)
    key = :danger if key.to_sym == :error
    key = :warning if key.to_sym == :notice
    content_tag :div, value, class: "alert alert-#{key}"
  end
end
