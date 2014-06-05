class UsersController < ApplicationController
  require 'open-uri'

  def change_incognito_setting
    if current_user.incognito == true
      current_user.update_attribute(:incognito, false)
    else
      current_user.update_attribute(:incognito, true)
    end

    redirect_to root_url
  end
end
