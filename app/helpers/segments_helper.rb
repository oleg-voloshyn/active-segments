module SegmentsHelper
  def seconds_to_hms(sec)
    ("%02d год. %02d хв. %02d сек." % [sec / 3600, sec / 60 % 60, sec % 60]).gsub("00 год. ", "")
  end
end
