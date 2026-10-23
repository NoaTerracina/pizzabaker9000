
# Load your data

conv_rates <- read.csv(here::here("data/ingredient_conversion_ratios.csv"))


# Run the function (just make sure to load the function before hand)

dl_to_grams(conv_rates)



# The function that takes console input about volume (dL) of a specific ingredient to convert to 
# mass (g) based on conversion rates in a df. (Obviously supported by GenAI)

dl_to_grams <- function(df){
  
  # Asking for input volume
  
  repeat { # Continues asking for input until valid input is entered
    
    input <- readline("How many deciliters do you want to convert? Enter here: ")
    
    n_dl <- suppressWarnings(as.numeric(sub(",", ".", input)))  # accepts 2,5 and 2.5
    
    if (!is.na(n_dl) && n_dl > 0) break # Rejects negativity
    cat("Please enter a positive number.\n")
    
  }
  
  # Asking for input ingredient
  
  choice <- menu(choices = c("Flour",
                             "Oil",
                             "Water",
                             "Butter",
                             "Dry yeast",
                             "Sugar",
                             "Salt",
                             "Pizza sauce",
                             "Shredded cheese",
                             "Mozzarella blob"),
                 title = "Choose your ingredient to convert dl to grams of (press 0 to cancel):")
  if (choice == 0) {
    return("Conversion was canceled")  # user cancellation feature
  }
  
  # Example of a choice
  else if(choice == 1){
    return(paste0(n_dl, " deciliters of flour weighs ", # Cutesy output statement
                  n_dl * df$grams.per.dl[df$ingredient == "flour"], "g")) # Uses dataset to access
    # conversion ratio
  }
  
  # Same code new ingredient
  else if(choice == 2){
    return(paste0(n_dl, " deciliters of oil weighs ", 
                  n_dl * df$grams.per.dl[df$ingredient == "oil"], "g"))
  }
  
  else if(choice == 3){
    return(paste0(n_dl, " deciliters of water weighs ", 
                  n_dl * df$grams.per.dl[df$ingredient == "water"], "g"))
  }
  
  else if(choice == 4){
    return(paste0(n_dl, " deciliters of butter weighs ", 
                  n_dl * df$grams.per.dl[df$ingredient == "butter"], "g"))
  }
  
  else if(choice == 5){
    return(paste0(n_dl, " deciliters of dry yeast weighs ", 
                  n_dl * df$grams.per.dl[df$ingredient == "dry_yeast"], "g"))
  }
  
  else if(choice == 6){
    return(paste0(n_dl, " deciliters of sugar weighs ", 
                  n_dl * df$grams.per.dl[df$ingredient == "sugar"], "g"))
  }
  
  else if(choice == 7){
    return(paste0(n_dl, " deciliters of salt weighs ", 
                  n_dl * df$grams.per.dl[df$ingredient == "salt"], "g"))
  }
  
  else if(choice == 8){
    return(paste0(n_dl, " deciliters of pizza sauce weighs ", 
                  n_dl * df$grams.per.dl[df$ingredient == "pizza_sauce"], "g"))
  }
  
  else if(choice == 9){
    return(paste0(n_dl, " deciliters of shredded cheese weighs ", 
                  n_dl * df$grams.per.dl[df$ingredient == "shredded_cheese"], "g"))
  }
  
  # Can you tell that I was the one who wrote the else if statements? (very inefficient) 
  else if(choice == 10){
    return(paste0(n_dl, " deciliters of mozzarella blob weighs ", 
                  n_dl * df$grams.per.dl[df$ingredient == "mozzarella_solid"], "g"))
  }
  
  else{
    return("Unknown ingredient!!!") # Rejects nonsensical input
  }
  
}
