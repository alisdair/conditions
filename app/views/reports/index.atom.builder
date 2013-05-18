atom_feed do |feed|
  feed.title "Lenzie Golf Club Course Conditions"
  feed.updated(@reports[0].created_at) if @reports.length > 0

  @reports.each do |report|
    feed.entry(report) do |entry|
      status = "The course is #{report.status.downcase}. Weather is #{report.weather.downcase}."

      entry.title status
      entry.content status, type: 'text'

      entry.author do |author|
        author.name(report.source.name)
      end
    end
  end
end

