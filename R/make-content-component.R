# <img src="projects/_project.png" alt="A picture of the project" class="project-img"/>
make_project_comp <- function(proj_data, proj_title) {
  # browser()
  proj <- purrr::pluck(proj_data, proj_title)
  
  cat(
    "::: grid",
    "::: {.g-col-12 .g-col-xl-4 .proj-img}",
    glue::glue('<img src="{proj$image_path}" alt="A picture of the project" class="project-img"/>'),
    ":::",
    "::: {.g-col-12 .g-col-xl-4 .proj-info}",
    glue::glue(
      "**Year**: {proj$info$year}", "",
      "**Place**: {proj$info$place}", "",
      "**Stack**: {proj$info$stack}", "",
      "**URL**: {proj$info$url}", "",
      "**Source Code**: {proj$info$source}",
      .sep = "<br>"
    ),
    ":::",
    "::: {.g-col-12 .g-col-xl-4 .proj-description}",
    glue::glue("**Description**: ", proj$description$content),
    ":::",
    ":::",
    sep = "\n"
  )
}

