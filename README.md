# README

Lunch and Learn: 


  Setup, run: rails db:{drop,create,migrate,seed}



        Air Quality:
  postman call: localhost:3000/api/v1/air_quality     method: :get
    -use country as key for call with country param


        Recipes:
  postman call: localhost:3000/api/v1/recipes     method: :get
    -use country as key for call with country param
    
    
    
        Learn About Country:                ----Not Currently Functional----
  postman call: localhost:3000/api/v1/learning_resources      method: :get
    -use country as key for call with country param
    


        User Registration:
  postman call: localhost:3000/api/v1/users     method: :post
    -use name and email as keys in json call
    
    
    
        Add Favorites:
  postman call: localhost:3000/api/v1/favorites     method: :post
    -use api_key, country, recipe_link and recipe_title as keys in json call    


