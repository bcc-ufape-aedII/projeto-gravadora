require "application_system_test_case"

class ArtistaTest < ApplicationSystemTestCase
  setup do
    @artistum = artista(:one)
  end

  test "visiting the index" do
    visit artista_url
    assert_selector "h1", text: "Artista"
  end

  test "should create artistum" do
    visit artista_url
    click_on "New artistum"

    fill_in "Nome artistico", with: @artistum.nome_artistico
    fill_in "Tipo", with: @artistum.tipo
    click_on "Create Artistum"

    assert_text "Artistum was successfully created"
    click_on "Back"
  end

  test "should update Artistum" do
    visit artistum_url(@artistum)
    click_on "Edit this artistum", match: :first

    fill_in "Nome artistico", with: @artistum.nome_artistico
    fill_in "Tipo", with: @artistum.tipo
    click_on "Update Artistum"

    assert_text "Artistum was successfully updated"
    click_on "Back"
  end

  test "should destroy Artistum" do
    visit artistum_url(@artistum)
    click_on "Destroy this artistum", match: :first

    assert_text "Artistum was successfully destroyed"
  end
end
