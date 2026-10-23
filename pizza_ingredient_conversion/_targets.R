
# Load targets
library(targets)


# Setup necessary packages
tar_option_set(
  packages = c("here", "ggplot2") 
)

# Run the R scripts in the R/ folder with your custom functions:

tar_source()


# The targets
list(
  
  # Conversion ratio dataset filepath
  tar_target(
    name = conv_rates_file,
    command = here("data/ingredient_conversion_ratios.csv"),
    format = "file"
  ),
  
  # Reading dataset
  tar_target(
    name = conv_rates,
    command = read.csv(file = conv_rates_file)
  ),
  
  # Run the plot function on the conversion ratios
  tar_target(
    name = plot,
    command = pizzaplot(conv_rates)
  )
  
  # Thought to run the conversion function, but target doesn't like interactivity
#  tar_target(
#    name = conversion,
#    command = dl_to_grams(conv_rates)    # Didn't work to do the conversion function in targets
#  )
)
