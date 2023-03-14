# Run only when rendering
if( ! Sys.getenv("QUARTO_PROJECT_RENDER_ALL") == "1" && ! interactive()) {
  quit()
}

books_path <- here::here('data/books.qmd')

books_url <-   
  glue::glue(
    'https://raw.githubusercontent.com/othomantegazza/',
    'data-and-sci-open-books/main/README.md',
  )

system(
  glue::glue(
    'curl {books_url} > {books_path}'
  )
)

system(
  glue::glue('sed -i -e 1,2d {books_path}')
)
