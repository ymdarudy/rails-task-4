class RentalPropertiesController < ApplicationController
  before_action :set_rental_property, only: %i[ show edit update destroy ]

  def index
    @rental_properties = RentalProperty.all
  end

  def show
  end

  def new
    @rental_property = RentalProperty.new
    2.times { @rental_property.nearest_stations.build }
  end

  def edit
    @rental_property.nearest_stations.build
  end

  def create
    @rental_property = RentalProperty.new(rental_property_params)

    if @rental_property.save
      redirect_to rental_property_url(@rental_property), notice: "登録しました。"
    else
      (2 - @rental_property.nearest_stations.size).times { @rental_property.nearest_stations.build }
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @rental_property.update(rental_property_params)
      redirect_to rental_property_url(@rental_property), notice: "編集しました。"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @rental_property.destroy

    redirect_to rental_properties_url, notice: "削除しました。"
  end

  private

  def set_rental_property
    @rental_property = RentalProperty.find(params[:id])
  end

  def rental_property_params
    params.require(:rental_property).permit(
      :name,
      :rent,
      :address,
      :age,
      :note,
      nearest_stations_attributes: [
        :line,
        :name,
        :walking_minutes,
        :rental_property_id,
        :id,
        :_destroy,
      ],
    )
  end
end
