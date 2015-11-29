module Admin::ProfilesHelper
  def easyname(f_name, l_name)
    return l_name + ", " + f_name
  end
end