class RemindersController < ApplicationController
    def index
        render json: {message: "U have a unicorn dinner party later tonight"}
    end
end
