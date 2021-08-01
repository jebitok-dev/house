require 'rails_helper'

RSpec.describe FavoritesController, type: :controller do
    describe 'post a question route', type: :request do
        before(:all) do
            User.destroy_all
            User.create(username: 'sharon', email: 'sharon@gmail.com', password: '@1234$%8976', id: 1)
        end

        before do 
            post '/favorites', params: {
                favorite: {username: 'marion', }
            }
        end
    end
end
