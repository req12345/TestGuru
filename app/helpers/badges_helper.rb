module BadgesHelper
  def badge_header(badge)
    if badge.new_record?
      "Create new Badge"
    else
      "Edit Badge"
    end
  end
end
