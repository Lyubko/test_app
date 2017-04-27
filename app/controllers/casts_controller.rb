class CastsController < ApplicationController
  def index
    @casts = Cast.all

    render("casts/index.html.erb")
  end

  def show
    @cast = Cast.find(params[:id])

    render("casts/show.html.erb")
  end

  def new
    @cast = Cast.new

    render("casts/new.html.erb")
  end

  def create
    @cast = Cast.new

    @cast.movie_id = params[:movie_id]
    @cast.actor_id = params[:actor_id]

    save_status = @cast.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/casts/new", "/create_cast"
        redirect_to("/casts")
      else
        redirect_back(:fallback_location => "/", :notice => "Cast created successfully.")
      end
    else
      render("casts/new.html.erb")
    end
  end

  def edit
    @cast = Cast.find(params[:id])

    render("casts/edit.html.erb")
  end

  def update
    @cast = Cast.find(params[:id])

    @cast.movie_id = params[:movie_id]
    @cast.actor_id = params[:actor_id]

    save_status = @cast.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/casts/#{@cast.id}/edit", "/update_cast"
        redirect_to("/casts/#{@cast.id}", :notice => "Cast updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Cast updated successfully.")
      end
    else
      render("casts/edit.html.erb")
    end
  end

  def destroy
    @cast = Cast.find(params[:id])

    @cast.destroy

    if URI(request.referer).path == "/casts/#{@cast.id}"
      redirect_to("/", :notice => "Cast deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Cast deleted.")
    end
  end
end
