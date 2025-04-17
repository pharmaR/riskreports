describe("get_image_name returns the expected name depending on the arguments", {
  it("image is set on report params", {
    # Given
    simulated_image <- "r-minimal"
    params <- list(image = simulated_image)
    
    # When
    image_name <- get_image_name(params)

    # Then
    expect_identical(simulated_image, image_name)
  })

  it ("DOCKER_IMAGE is set then should return the value", {
    # Given
    simulated_docker_image <- "r-minimal"
    

    # When
    withr::with_envvar(
      new = c("DOCKER_IMAGE" = simulated_docker_image),
      code = image_name <- get_image_name(list()))

    # Then
    expect_identical(simulated_docker_image, image_name)
  })

  it ("No image is set then returns default value", {
    # Given
    params <- list()

    # When
    image_name <- get_image_name(params)

    # Then
    expect_false(is.na(image_name))
  })
})
