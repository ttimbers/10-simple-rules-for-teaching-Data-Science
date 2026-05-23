# Fix figure path in rendered .tex file for PLOS submission
# Changes: figures/tests-as-feedback.png -> Fig1.tiff

tex_file <- "manuscript/10-simple-rules-for-teaching-Data-Science.tex"

tex_content <- readLines(tex_file)

tex_content <- gsub(
  "figures/tests-as-feedback.png",
  "Fig1.tiff",
  tex_content,
  fixed = TRUE
)

tex_content <- gsub(
  "\\bibliography{references.bib}",
  "\\bibliography{references}",
  tex_content,
  fixed = TRUE
)

writeLines(tex_content, tex_file)

cat("Done. Replaced figure path in", tex_file, "\n")
