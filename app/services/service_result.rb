# frozen_string_literal: true

# All Service object should return the results of the call method wrapped in this class.
# This class defines methods to know if the service had success of failed. Also it defines
# an errors and messages array to return strings with information.

class ServiceResult < OpenStruct
  def initialize(hash = {})
    hash[:errors]   = _errors(hash[:errors] || hash[:error] || [])
    hash[:messages] = _messages(hash[:messages] || [])
    hash[:acknowledgment] = _acknowledgment(hash[:acknowledgment] || [])

    super(hash)
  end

  def success?
    errors.blank?
  end

  def error
    errors.first
  end

  def message
    messages.first
  end

  def decorate_object(options = {})
    return unless object.present?

    self.object = object.decorate(options)
  end

  def to_user_safe_json
    {
      success: success?,
      messages: messages,
      errors: errors
    }
  end

  def status
    return :ok if success?

    :unprocessable_entity
  end

  private

  def _errors(errors)
    errors.is_a?(Array) ? errors : [errors]
  end

  def _messages(messages)
    messages.is_a?(Array) ? messages : [messages]
  end

  def _acknowledgment(acknowledgment)
    acknowledgment.is_a?(Array) ? acknowledgment : [acknowledgment]
  end
end
