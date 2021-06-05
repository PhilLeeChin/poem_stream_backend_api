class Api::PoemsController < ApplicationController

    def index
        poems = Poem.all
        # render json: poems
        render json: PoemSerializer.new(poems)
    end

    def create
        po_obj = Poem.new(poem_params)
        if Poem.save
            render json: po_obj, status: :accepted
        else
            render json: {errors: po_obj.errors.full_messages}, status:
            :unprocessible_entity
        end
    end

    # def show
    #     render json: @poem
    # end

    def poem_params
        params.require(:poem).permit(:title, :lines, :genre_id)
    end
end
