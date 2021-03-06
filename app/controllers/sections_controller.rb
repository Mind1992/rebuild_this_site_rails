class SectionsController < ApplicationController
  def index
    @sections = Section.all
    render('sections/index.html.erb')
  end

  def show
    @section = Section.find(params[:id])
    render('sections/show.html.erb')
  end

  def new
    @section = Section.new
    render('sections/new.html.erb')
  end

  def create
    @section = Section.new(params[:section])
    if @section.save
      redirect_to("/sections/#{@section.id}")
    else
      render('sections/new.html.erb')
    end
  end

end
