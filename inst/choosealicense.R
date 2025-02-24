# Script to extract a table with the permissions each license allows

library("xml2")
url <- "https://choosealicense.com/appendix/"
license_table <- url |>
  read_html() |>
  xml_find_all("//table")

cols <- license_table |>
  xml_find_all("//th[@scope='col']/a") |>
  xml_text()

rows <- license_table |>
  xml_find_all("//th[@scope='row']/a") |>
  xml_text()

licenses_url <- license_table |>
  xml_find_all("//th[@scope='row']/a") |>
  xml_attr("href")
acronym <- licenses_url |>
  basename() |>
  toupper()



legend <- license_table |> xml_find_all("//td") |> xml_attr("class")
legend <- gsub("license-", replacement = "", x = legend, fixed = TRUE)
legend[legend == "permissions"] <- "permisive"
dim(legend) <- c(length(cols), length(rows))
rownames(legend) <- cols
legendary <- t(legend)
df <- cbind(name = rows, acronym = acronym, legendary, url = url)
View(df)
