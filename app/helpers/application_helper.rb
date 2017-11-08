module ApplicationHelper
  def full_title page_title = ""
    base_title = "Home Page"
    page_title.empty? ? base_title : "#{page_title}"
  end

  def show_errors object, field_name
    if object.errors.any?
      if !object.errors.messages[field_name].blank?
        object.errors.messages[field_name].join(", ")
      end
    end
  end
end
