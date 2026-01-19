message('A collection of useful bits from each lesson')
lessons = matrix(
  c("Lesson 1","Minimal Reproducible Examples", 
    "Lesson 2","Debugging",
    "Lesson 3","Data types",
    "Lesson 4","..."), ncol=4, nrow=2)
apply(lessons, 2, paste0, collapse=": ")
