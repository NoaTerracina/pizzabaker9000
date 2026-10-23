

dl_to_grams <- function(n_dl, df){
  
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
                 title = "Choose your ingredient to convert n_dl to grams of (press 0 to cancel):")
  if (choice == 0) {
    return("Conversion was canceled")  # user cancelled
  }
  
  else if(choice == 1){
    return(paste0(n_dl, " deciliters of flour weighs ", n_dl*52, "g"))
  }
  
  else if(choice == 2){
    return(paste0(n_dl, " deciliters of oil weighs ", n_dl*90, "g"))
  }
  
  else if(choice == 3){
    return(paste0(n_dl, " deciliters of water weighs ", n_dl*100, "g"))
  }
  
  else if(choice == 4){
    return(paste0(n_dl, " deciliters of butter weighs ", n_dl*95, "g"))
  }
  
  else if(choice == 5){
    return(paste0(n_dl, " deciliters of dry yeast weighs ", n_dl*52, "g"))
  }
  
  else if(choice == 6){
    return(paste0(n_dl, " deciliters of sugar weighs ", n_dl*70, "g"))
  }
  
  else if(choice == 7){
    return(paste0(n_dl, " deciliters of salt weighs ", n_dl*122, "g"))
  }
  
  else if(choice == 8){
    return(paste0(n_dl, " deciliters of pizza sauce weighs ", n_dl*102, "g"))
  }
  
  else if(choice == 9){
    return(paste0(n_dl, " deciliters of shredded cheese weighs ", n_dl*34, "g"))
  }
  
  else if(choice == 10){
    return(paste0(n_dl, " deciliters of mozzarella blob weighs ", n_dl*105, "g"))
  }
  
  else{
    return("Unknown ingredient!!!")
  }
  
}
