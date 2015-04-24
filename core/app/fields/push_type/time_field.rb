module PushType
  class TimeField < PushType::FieldType

    def template
      @opts[:template] || 'date'
    end

    def form_helper
      @opts[:form_helper] || :time_field
    end

    def from_json(val)
      return unless val
      val.to_time
    end
    
  end
end