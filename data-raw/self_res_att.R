## This script contains the code to preprocess the data frame self_res_att (DeBruine_2004_PRSLB_att.csv).

self_res_att <- readr::read_csv("./data-raw/DeBruine_2004_PRSLB_att.csv")

library(readr)
readr::spec(self_res_att)

ct <- cols(
  id = col_character(),
  sex = col_factor(levels = c("female", "male")),
  ethgroup = col_factor(),
  age = col_double(),
  m_non = col_double(),
  f_non = col_double(),
  m_self = col_double(),
  f_self = col_double(),
  grpsize = col_double(),
  group = col_double(),
  mascpref = col_double(),
  obro = col_double(),
  osis = col_double(),
  ybro = col_double(),
  ysis = col_double(),
  birthorder = col_factor(levels = c("only", "firstborn", "middleborn", "lastborn"))
)

self_res_att <- readr::read_csv("data-raw/DeBruine_2004_PRSLB_att.csv", col_types = ct)
spec(self_res_att)

usethis::use_data(self_res_att, overwrite = TRUE)
