module ApplicationHelper

  def generate_title(sub_title)
    base_title = "20ch Music BBS"
    if sub_title.empty?
      base_title
    else
      sub_title + " | " + base_title
    end
  end

end
