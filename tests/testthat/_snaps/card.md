# Card is created with the expected components depending on arguments: only has title if no other argument is set

    Code
      create_info_card("test title")
    Output
      <div class="card ">
        <h3 class="card-title">test title</h3>
      </div>

# Card is created with the expected components depending on arguments: has title and header

    Code
      create_info_card(title = "test title", header = "Information header")
    Output
      <div class="card ">
        <div class="card-header">Information header</div>
        <h3 class="card-title">test title</h3>
      </div>

# Card is created with the expected components depending on arguments: has all arguments set

    Code
      create_info_card(title = "test title", header = "Information header", text = "Extra test")
    Output
      <div class="card ">
        <div class="card-header">Information header</div>
        <h3 class="card-title">test title</h3>
        <div class="card-text">Extra test</div>
      </div>

