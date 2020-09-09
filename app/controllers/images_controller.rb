class ImagesController < ApplicationController
  layout 'user'
  before_action :require_login

    def new
      @image = Image.new
      @user = current_user
    end

    def index
      if params[:report_id]
        @images = Image.find(params[:report_id]).images
      else
        @images = Image.all
      end
    end

    def show
      @user = current_user
    end

    def create
      Image.add(current_user.id)
      redirect_to "/users/#{current_user.id}"
    end

    def edit

    end

    def update
      image = Image.find_by_id(image_params["id"])
      image.label = image_params["label"]
      image.save
      redirect_to '/images'
    end

    def destroy
      @image.destroy
      respond_to do |format|
        format.html { redirect_to images_url, notice: 'Image was successfully destroyed.' }
      end
    end

    private

      def set_image
        @image = Image.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def image_params
        params.permit("label", "id", "_method", "authenticity_token", "commit", "controller", "action")
      end
  end
