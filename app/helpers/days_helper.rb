module DaysHelper
  def format_day(date)
    return 'Today' if date.today?
    return 'Yesterday' if date.yesterday?

    date.strftime("%A #{date.day.ordinalize}")
  end

  def format_ear_state(raw_state)
    ear_states_and_labels.fetch(raw_state, 'None')
  end

  def ear_state_options
    ear_states_and_labels.to_a.map { |opt, label| [label,opt] }
  end

  def ear_states_and_labels
    {
      nil     => 'None',
      'L1:R1' => 'Left Good, Right Good',
      'L1:R2' => 'Left Good, Right OK',
      'L1:R3' => 'Left Good, Right Bad',
      'L2:R1' => 'Left OK, Right Good',
      'L2:R2' => 'Left OK, Right OK',
      'L2:R3' => 'Left OK, Right Bad',
      'L3:R1' => 'Left Bad, Right Good',
      'L3:R2' => 'Left Bad, Right OK',
      'L3:R3' => 'Left Bad, Right Bad'
    }
  end
end
