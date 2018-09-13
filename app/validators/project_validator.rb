class ProjectValidator < ActiveModel::Validator
  def validate(record)
    if record.topic == 'cool javascript'
      record.errors[:topic] << 'javascript is not cool'
    end
  end
end
