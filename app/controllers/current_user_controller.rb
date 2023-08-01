class CurrentUserController < ApplicationController
  before_action :authenticate_user!
  def index
    render json: UserSerializer.new(current_user).serializable_hash[:data][:attributes], status: :ok
  end
end



# ====== Login with fetch =====

# async function login(url = "", data = {}) {
#   const response = await fetch(url, {
#     method: "POST", 
#     body: JSON.stringify(data),
#     headers: { 
#       'Content-Type': 'application/json',
#     }
#   });
#   console.log(response)
#   const result = await response.json();
#   console.log(result);
#   return result
# }


# login("http://localhost:4000/login", {
  #   user: {
    #     email: "wilson@mail.com",
    #     password: "password"
    #   }
    # })
    
    # eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiJkM2I5MTZhMC02NmMzLTQzNzItYWRkYy1kOTQ3MGZiN2JmNmMiLCJzdWIiOiIxMCIsInNjcCI6InVzZXIiLCJhdWQiOm51bGwsImlhdCI6MTY5MDI4OTk0OSwiZXhwIjoxNjkwMjkxNzQ5fQ.5G8FddOiFdk7-d55vEXtKC1ST6Dat2x5SmCmCk1Fub8
    
    
    
    
    # ====== Signup =====
    
    # curl -i -d '{"user": {"email": "dodo@mail.com", "password": "password"}}' -H "Content-Type: application/json" -X POST http://localhost:4000/signup
    
    # ====== Login ======
    
    # curl -i -d '{"user": {"email": "dodo@mail.com", "password": "password"}}' -H "Content-Type: application/json" -X POST http://localhost:4000/login
    
    # ====== Current_user ======
    
    # curl -i -d '{"user": {"email": "dodo@mail.com", "password": "password"}}' -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiI3MzI2YTVkMy0xZWRhLTQxOGYtYjc1Yy0zOWM3MGY4ZmYzNWQiLCJzdWIiOiIxNSIsInNjcCI6InVzZXIiLCJhdWQiOm51bGwsImlhdCI6MTY5MDI4Mzg5NiwiZXhwIjoxNjkwMjg1Njk2fQ.4MN1w_AjzqY2hbBZhlFQqhuSid_aZO6WbGAnjELDPRE" -X GET http://localhost:4000/current_user
    
    async function currentUser(url = "") {
      try {
        const response = await fetch(url, {
          method: "GET", 
          headers: { 
            Authorization: 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiJkM2I5MTZhMC02NmMzLTQzNzItYWRkYy1kOTQ3MGZiN2JmNmMiLCJzdWIiOiIxMCIsInNjcCI6InVzZXIiLCJhdWQiOm51bGwsImlhdCI6MTY5MDI4OTk0OSwiZXhwIjoxNjkwMjkxNzQ5fQ.5G8FddOiFdk7-d55vEXtKC1ST6Dat2x5SmCmCk1Fub8',
          }
        });
        const result = await response.json();
        console.log(result);
        return result
      }catch (e) {
        console.log(e)
      }
    }
    
    # ====== Logout =====
    
    # curl -i -d '{"user": {"email": "dodo@mail.com", "password": "password"}}' -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiI3ZGM5MTc1Yy0zODU4LTQzYTktYTYzZi02Y2YyNmNhOGZmMGMiLCJzdWIiOiIxNSIsInNjcCI6InVzZXIiLCJhdWQiOm51bGwsImlhdCI6MTY5MDI4MzE1NywiZXhwIjoxNjkwMjg0OTU3fQ.ruU2uZyhBgN4dD83hmSIgM8Em7H7DowYIXtsFPoiWiA" -X DELETE http://localhost:4000/logout
    
    # async function logoutUser(url = "http://localhost:4000/logout") {
    #   const response = await fetch(url, {
    #     method: "DELETE", 
    #     headers: { 
    #       Authorization: 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiJkM2I5MTZhMC02NmMzLTQzNzItYWRkYy1kOTQ3MGZiN2JmNmMiLCJzdWIiOiIxMCIsInNjcCI6InVzZXIiLCJhdWQiOm51bGwsImlhdCI6MTY5MDI4OTk0OSwiZXhwIjoxNjkwMjkxNzQ5fQ.5G8FddOiFdk7-d55vEXtKC1ST6Dat2x5SmCmCk1Fub8',
    #     }
    #   });
    #   const result = await response.json();
    #   console.log(result);
    #   return result
    # }