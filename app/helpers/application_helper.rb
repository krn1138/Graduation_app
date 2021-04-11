module ApplicationHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm' || action_name == 'create'
      confirm_hostels_path
    elsif action_name == 'edit'
      hostel_path
    end
  end

  # def confirm_new_or_edit
  #   unless @hostel.id?
  #     hostels_path
  #   else
  #     root_path
  #   end
  # end

  # def confirm_form_method
  #   @hostel.id ? 'patch' : 'post'
  # end
end
