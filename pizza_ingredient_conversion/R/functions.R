

pizzaplot <- function(df){
  
  labels <- c(flour = "Flour",
              oil = "Oil",
              water = "Water",
              butter = "Butter",
              dry_yeast = "Dry yeast",
              sugar = "Sugar",
              salt = "Salt",
              pizza_sauce = "Pizza sauce",
              shredded_cheese = "Shredded cheese",
              mozzarella_solid = "Mozzarella blob")
  
  colors <- c(flour = "#E8D5A9",
              oil = "#E8C547",
              water = "#7FB8D6",
              butter = "#F4D35E",
              dry_yeast = "#B08850",
              sugar = "#F5EBDD",
              salt = "#C8C8C8",
              pizza_sauce = "#C0392B",
              shredded_cheese = "#F2A922",
              mozzarella_solid = "#FFF1C9")
  
  ggplot(df, aes(x = reorder(ingredient, grams.per.dl), y = grams.per.dl)) +
    geom_col(show.legend = FALSE) +
    scale_x_discrete(labels = labels)
    scale_fill_manual(values = colors) +
    theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
    labs(x = NULL, y = "g/dL", title = "Ingredient density") +
    theme_minimal()
  
}



dl_to_grams <- function(df){
  
  repeat {
    
    input <- readline("How many deciliters do you want to convert? Enter here: ")
    
    n_dl <- suppressWarnings(as.numeric(sub(",", ".", input)))  # accepts 2,5 and 2.5
    
    if (!is.na(n_dl) && n_dl > 0) break
    cat("Please enter a positive number.\n")
    
  }
  
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
    return("Conversion was canceled")  # user cancelled
  }
  
  else if(choice == 1){
    return(paste0(n_dl, " deciliters of flour weighs ", 
                  n_dl * df$grams.per.dl[df$ingredient == "flour"], "g"))
  }
  
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
  
  else if(choice == 10){
    return(paste0(n_dl, " deciliters of mozzarella blob weighs ", 
                  n_dl * df$grams.per.dl[df$ingredient == "mozzarella_solid"], "g"))
  }
  
  else{
    return("Unknown ingredient!!!")
  }
  
}
