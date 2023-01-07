# <img src="projects/_project.png" alt="A picture of the project" class="project-img"/>
make_project_comp <- function(proj_yaml) {
  
  proj <- yaml::read_yaml(proj_yaml)
  
  cat(
    '<div class="grid" style="--bs-columns: 6;">',
      '<div class="g-col-6 g-col-xl-3 project-cover">',
      '<video autoplay muted loop>',
      glue::glue('<source src="{proj$image_path}" type="video/webm">'),
      '</video>',
    '</div>',
    '<div class="g-col-6 g-col-xl-3">',
      '<div class="grid" style="--bs-columns: 2;">',
        '<div class="g-col-2 g-col-sm-1 proj-description">',
          glue::glue(
            "**Year**: {proj$year}",
            "**Place**: {proj$place}",
            "**Stack**: {proj$stack}",
            "**Project URL**: {proj$url}",
            "**Source Code**: {proj$source}",
            .sep = "<br>"
          ),
        '</div>',
        '<div class="g-col-2 g-col-sm-1 proj-description">',
          glue::glue("**Description**: ", proj$description),
        '</div>',
      '</div>',
    '</div>',
    sep = "\n"
  )
}
