# <img src="projects/_project.png" alt="A picture of the project" class="project-img"/>
make_project_comp <- function(proj_data, proj_title) {
  # browser()
  proj <- purrr::pluck(proj_data, proj_title)
  
  cat(
    '<div class="grid">',
    '<div class="hidden-sm g-col-sm-6 g-col-xl-4 project-cover}">',
    '<video autoplay muted loop>',
    glue::glue('<source src="{proj$image_path}" type="video/webm">'),
    '</video>',
    # glue('{{< video  >}}'),
    '</div>',
    '<div class="g-col-12 g-col-sm-6 g-col-xl-4 proj-info">',
    glue::glue(
      "**Year**: {proj$info$year}", "",
      "**Place**: {proj$info$place}", "",
      "**Stack**: {proj$info$stack}", "",
      "**URL**: {proj$info$url}", "",
      "**Source Code**: {proj$info$source}",
      .sep = "<br>"
    ),
    '</div>',
    '<div class="g-col-12 g-col-sm-12 g-col-xl-4 proj-description">',
    glue::glue("**Description**: ", proj$description$content),
    '</div>',
    '</div>',
    sep = "\n"
  )
}

