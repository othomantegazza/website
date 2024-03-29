# <img src="projects/_project.png" alt="A picture of the project" class="project-img"/>
make_project_comp <- function(proj_yaml, vid_cover = FALSE) {
  
  proj <- yaml::read_yaml(proj_yaml)
  
  bare_url <- 
    stringr::str_remove(
      stringr::str_remove(
        proj$url,
        ".*\\("),
      "\\).*")
  
  sep <- "\n"
  
  out <- 
    glue::glue(
      '<div class="grid" style="--bs-columns: 6;">',
        '<div class="g-col-6 g-col-xl-3 project-cover">',
          # glue::glue('<a href={bare_url}>'),
            if(vid_cover) {
              glue::glue(
                '<video autoplay muted loop playsinline poster={proj$image_poster_path}>',
                glue::glue('<source src="{proj$video_path}" type="video/webm">'),
                '</video>'
              )
            } else {
              glue::glue(
                '<img src="{proj$image_path}" alt="Project image">'
              )
            },
          # '</a>',
        '</div>',
        '<div class="g-col-6 g-col-xl-3">',
          '<div class="grid" style="--bs-columns: 2;">',
            '<div class="g-col-2 g-col-sm-1 proj-description">',
              glue::glue(
                ifelse(is.null(proj$year), "", "**Year**: {proj$year}<br>"),
                ifelse(is.null(proj$place), "", "**Place**: {proj$place}<br>"),
                ifelse(is.null(proj$stack), "", "**Stack**: {proj$stack}<br>"),
                ifelse(is.null(proj$url), "", "**Project URL**: {proj$url}<br>"),
                ifelse(is.null(proj$source), "", "**Source Code**: {proj$source}<br>"),
                .sep = ""
              ),
            '</div>',
            '<div class="g-col-2 g-col-sm-1 proj-description">',
              glue::glue("**Description**: ", proj$description),
            '</div>',
          '</div>',
        '</div>',
      '</div>',
      sep = "\n"
    )
  
  cat(out)
}
