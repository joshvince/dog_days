module ScratchesHelper
  def format_time(date)
    return 'none yet' unless date

    "#{time_ago_in_words(date)} ago"
  end
end
