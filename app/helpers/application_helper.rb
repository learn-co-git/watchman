module ApplicationHelper

  def current_user
    User.find_by_id(session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def cloud_search
    Cloudinary::Search
    .expression("folder=#{current_user.id}")
    .execute
  end

  def cloud_search_vehicles
    Cloudinary::Search
    .expression("folder=#{current_user.id}")
    .execute
  end

  def user_vehicles
    vehicles = cloud_search_vehicles
    vehicles["resources"].length
  end

  def user_images
      Image.all.select {|picture| current_user.id == picture.user_id}
  end

  def require_login
  redirect_to "/", notice: "Please log in or sign up" unless current_user
  end
end
