class TypesplacesController < ApplicationController
  def index
	@typesplaces = Types_de_place.all
  end

  def new
	@typesplaces = Types_de_places.all
	@typesplace = Types_de_places.new
	@concert = Concert.newTypes_de_places
  end

  def create
	@typesplaces = Types_de_places.all
	@typesplace = Types_de_places.new(typesplace_params)
	@typesplace.save
	if @typesplace.save
		redirect_to "http://localhost:3000/concerts"
	else
		redirect_to :back
	end
  end
  
  def edit
	@typesplace = Types_de_places.find(params[:id])
  end
  
	def update
		@typesplace = Types_de_places.find(params[:id])
		
		if @typesplace.update(typesplace_params)
			redirect_to @typesplace
		else 
			render 'edit'
		end
	end
  

  def show
	@typesplace = Types_de_places.find(params[:id])
  end
  
	def destroy
		@typesplace = Types_de_places.find(params[:id])
		@typesplace.destroy
		
		redirect_to concerts_path
	end
  
  	private
	def typesplace_params
		params.require(:typesplace).permit(:nom)
	end

end
