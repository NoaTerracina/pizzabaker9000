

dl_to_grams <- function(dl){
  
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
  
  else if(choice==1){
    return(paste0(dl," deciliters of flour weighs ",dl*52,"g"))
  }
  
  else if(choice==2){
    return(paste0(dl," deciliters of oil weighs ",dl*90,"g"))
  }
  
  else if(choice==3){
    return(paste0(dl," deciliters of water weighs ",dl*100,"g"))
  }
  
  else if(choice==4){
    return(paste0(dl," deciliters of butter weighs ",dl*95,"g"))
  }
  
  else if(choice==5){
    return(paste0(dl," deciliters of dry yeast weighs ",dl*95,"g"))
  }
  
  else if(choice==6){
    return(paste0(dl," deciliters of sugar weighs ",dl*70,"g"))
  }
  
  else if(choice==7){
    return(paste0(dl," deciliters of salt weighs ",dl*122,"g"))
  }
  
  else if(choice==8){
    return(paste0(dl," deciliters of pizza sauce weighs ",dl*102,"g"))
  }
  
  else if(choice==9){
    return(paste0(dl," deciliters of shredded cheese weighs ",dl*34,"g"))
  }
  
  else if(choice==10){
    return(paste0(dl," deciliters of mozzarella blob weighs ",dl*105,"g"))
  }
  
  else{
    return("Unknown ingredient!!!")
  }
  
}
