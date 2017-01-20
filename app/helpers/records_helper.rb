module RecordsHelper
    def chosen_new_or_edit
        if action_name == 'new' || action_name == 'confirm'
        confirm_records_path
    else
        record_path
    end
  end
end
