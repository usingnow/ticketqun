module Admin::ProfilesHelper
  def easy_name(f_name, l_name)
    return l_name + " " + f_name
  end

  def easy_gender(gender)
    return gender ? "男" : "女"
  end

  def easy_marital_status(mariage)
    return mariage ? "已婚" : "单身"
  end
end