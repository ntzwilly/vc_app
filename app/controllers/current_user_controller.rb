class CurrentUserController < ApplicationController
  before_action :authenticate_user!
  def index
    render json: UserSerializer.new(current_user).serializable_hash[:data][:attributes], status: :ok
  end
end


# async function postData(url = "", data = {}) {
#   const response = await fetch(url, {
#     method: "POST", 
#     body: JSON.stringify(data),
#     headers: { 
#       'Accept': 'application/json',
#       'Content-Type': 'application/json' 
#     }
#   });
#   const result = await response.json();
#   console.log(result);
#   return result
# }

# postData("http://localhost:4000/signup", 
#    { 
#     user: {
#       email: "minimoi@mail.com",
#       password: "password"
#     }
#   }
# )