describe("Card is created with the expected components depending on arguments", {
  it("only has title if no other argument is set", {
    expect_snapshot(create_info_card("test title"))
  })

  it("has title and header", {
    expect_snapshot(create_info_card(
      title = "test title",
      header = "Information header"
    ))
  })

  it("has all arguments set", {
    expect_snapshot(create_info_card(
      title = "test title",
      header = "Information header",
      text = "Extra test"
    ))
  })
})
