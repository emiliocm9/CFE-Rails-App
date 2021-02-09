module ApplicationHelper
  def notice_helper
    return unless notice.present?

    ('<div class="w-100 fixed-top text-center text-uppercase pt-5"><p id="notice">' + notice + '</p></div>').html_safe
  end
end
