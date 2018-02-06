module Api
  module V1
    class PagesController < ApplicationController
      def index
        @pages = Page.persed.paginate(page: params[:page], per_page: params[:per_page])

        render json: @pages
      end

      def create
        @page = Page.new(page_attributes)

        if @page.save
          render json: @page, status: :created
        else
          render json: @page.errors.full_messages, status: :unprocessable_entity
        end
      end

      private

      def page_attributes
        params.permit(:url)
      end
    end
  end
end
