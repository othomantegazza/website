# Run only when rendering
if( ! Sys.getenv("QUARTO_PROJECT_RENDER_ALL") == "1" && ! interactive()) {
  quit()
}

system('curl https://raw.githubusercontent.com/othomantegazza/data-and-sci-open-books/main/README.md > data/books.qmd')