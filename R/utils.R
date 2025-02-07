include_exclude_from <- function(from, include = NULL, exclude = NULL) {
  if (!is.null(include) && !is.null(exclude)) {
    names <- setdiff(include, exclude)
  } else if (is.null(exclude) && !is.null(include)) {
    names <- include
  } else if (is.null(exclude) && is.null(include)) {
    names <- from
  } else if (is.null(include) && !is.null(exclude)) {
    names <- setdiff(from, exclude)
  }
  names
}


fill_in <- function(list, names) {
  missing_names <- setdiff(names, names(list))
  list[missing_names] <- NA
  list
}


output_dir <- function() {
  opt <- getOption("riskreports_output_dir", default = NULL)
  env <- Sys.getenv("RISKREPORTS_OUTPUT_DIR", unset = getwd())

  opt %||% env
}

rendering_dir <- function() {
  opt <- getOption("riskreports_rendering_dir", default = NULL)
  env <- Sys.getenv("RISKREPORTS_RENDERING_DIR", unset = tempdir())

  opt %||% env
}
