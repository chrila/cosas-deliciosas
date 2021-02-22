module ServingFormatsHelper
  def serving_formats_for_select
    ServingFormat.all.collect { |s| [s.name, s.id] }
  end
end
