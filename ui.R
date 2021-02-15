ui <- fluidPage(
  titlePanel(title = "Boîte à Moustache avec Iris"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(inputId = "sepallength", "Sepal.Length:", min = 4.3, max = 7.9, value = 5.8, step = 0.1),
      sliderInput(inputId = "sepalwidth", "Sepal.Width:", min = 2, max = 4.4, value = 3, step = 0.1),
      sliderInput(inputId = "petallength", "Petal.Length:", min = 1, max = 6.9, value = c(1.6, 5.1)),
      sliderInput(inputId = "petalwidth", "Petal.Width:", min = 4.3, max = 7.9, value = 5.8, step = 0.1, animate = animationOptions(interval = 2600,loop = TRUE)),
    ),
    mainPanel
    (
      plotOutput(outputId = "box")
    )
  )
)