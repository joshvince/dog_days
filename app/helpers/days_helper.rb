module DaysHelper
  def format_day(date)
    return 'Today' if date.today?
    return 'Yesterday' if date.yesterday?

    date.strftime("%A #{date.day.ordinalize}")
  end
end
