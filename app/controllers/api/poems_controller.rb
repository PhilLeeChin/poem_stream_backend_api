class Api::PoemsController < ApplicationController

    def index
        poems = Poem.all

        render json: poems
    end

    def create
        po_obj = Poem.new(poem_params)
    end

    # def show
    #     render json: @poem
    # end

    # private
    # def set_poem
    #     poem = Poem.find(params[:id])
    # end

    def poem_params
        params.require(:poem).permit{:title, :lines, :genre_id}
    end
end
