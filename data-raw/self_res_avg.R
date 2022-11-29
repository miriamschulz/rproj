## This script contains the code to preprocess the data frame self_res_avg (DeBruine_2004_PRSLB_avg.csv).

# Read in the file
#self_res_avg <- readr::read_csv("data-raw/DeBruine_2004_PRSLB_avg.csv")

# Check the columns
#readr::spec(self_res_avg)

# Define factor levels for the variables in the data frame
ct <- cols(
  id = col_character(),
  sex = col_factor(levels = c("female", "male")),
  group = col_factor(),
  m_avg = col_double(),
  f_avg = col_double(),
  m_self = col_double(),
  f_self = col_double(),
  m_non = col_double(),
  f_non = col_double()
)

# Apply the custom factor levels when reading in the data frame
self_res_avg <- readr::read_csv("data-raw/DeBruine_2004_PRSLB_avg.csv", col_types = ct)

usethis::use_data(self_res_avg, overwrite = TRUE)
