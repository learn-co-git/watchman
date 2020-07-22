class ImagesController < ApplicationController
  layout 'application'

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
      @image = Image.find(params[:id])
    end

    def edit
    end

    def create
      Image.add(current_user.id)
    end

    def update
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
        params.fetch(:image, {})
      end
  end
