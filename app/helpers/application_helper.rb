module ApplicationHelper
  # Displays the errors for a model instance if there are any
  def display_errors_for(object)
    return unless form.object.errors.any?
    render partial: 'shared/errors',
           locals: { object: form.object }
  end
end
