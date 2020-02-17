module Api
  module V1
    class BbbsController < ApplicationController
      def index
        bbbs = Bbb.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Loaded bbbs', data:bbbs},status: :ok
      end

      def show
        bbb = Bbb.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded bbb', data:bbb},status: :ok
      end

      def create
        bbb = Bbb.new(bbb_params)

        if bbb.save
          render json: {status: 'SUCCESS', message: 'Saved bbb', data:bbb},status: :ok
        else
          render json: {status: 'ERROR', message: 'bbb not saved',
          data:bbb.errors},status: :unprocessable_entity
        end
      end

      def destroy
        bbb = Bbb.find(params[:id])
        bbb.destroy
        render json: {status: 'SUCCESS', message: 'Deleted bbb', data:bbb},status: :ok
      end

      def update
        bbb = Bbb.find(params[:id])
        if bbb.update_attributes(bbb_params)
            render json: {status: 'SUCCESS', message: 'Updated bbb', data:bbb},status: :ok
        else
          render json: {status: 'ERROR', message: 'bbb not updated',
          data:bbb.errors},status: :unprocessable_entity
        end
      end

      def bbb_params
        params.permit(:title, :address)
      end
    end
  end
end
