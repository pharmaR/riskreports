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

describe("the license information is correctly processed for the cards", {
  it("returns license with empty footer if the license is non standarizable", {
    # Given
    assessment <- list(license = "random license")

    # When
    license_for_card <- extract_license(assessment)

    # Then
    expect_true(is.null(license_for_card$footer))
    expect_equal(license_for_card$main, assessment$license)
  })

  it("returns license with footer if the license is standarizable and with multiple version number", {
    # Given
    assessment <- list(license = "LGPL (>= 2.0, < 3) | Mozilla Public License")

    # When
    license_for_card <- extract_license(assessment)

    # Then
    expect_false(is.null(license_for_card$footer))
    expect_false(license_for_card$main == assessment$license)
  })

  it("returns license with no footer if provided standardizable license with single version number", {
    # Given
    assessment <- list(license = "GPL2")

    # When
    license_for_card <- extract_license(assessment)

    # Then
    expect_true(is.null(license_for_card$footer))
    expect_false(license_for_card$main == assessment$license)
  })

    it("returns license with footer if provided standardizable license with more components", {
    # Given
    assessment <- list(license = "GPL-2 | file LICENCE")

    # When
    license_for_card <- extract_license(assessment)

    # Then
    expect_false(is.null(license_for_card$footer))
    expect_false(license_for_card$main == assessment$license)
  })

})
