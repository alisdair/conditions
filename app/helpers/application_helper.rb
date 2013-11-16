module ApplicationHelper
  def greens_summary report
    case report.greens
    when "Summer"
      "Summer greens."
    when "Mixed"
      "Summer greens/some temporary greens (due to #{report.reason.downcase})."
    when "Winter"
      "Winter greens (due to #{report.reason.downcase})."
    end
  end
end
