require "application_system_test_case"

class MusicasTest < ApplicationSystemTestCase
  setup do
    @musica = musicas(:one)
  end

  test "visiting the index" do
    visit musicas_url
    assert_selector "h1", text: "Musicas"
  end

  test "should create musica" do
    visit musicas_url
    click_on "New musica"

    fill_in "Album", with: @musica.album_id
    fill_in "Data lancamento", with: @musica.data_lancamento
    fill_in "Duracao", with: @musica.duracao
    fill_in "Genero", with: @musica.genero
    fill_in "Titulo", with: @musica.titulo
    click_on "Create Musica"

    assert_text "Musica was successfully created"
    click_on "Back"
  end

  test "should update Musica" do
    visit musica_url(@musica)
    click_on "Edit this musica", match: :first

    fill_in "Album", with: @musica.album_id
    fill_in "Data lancamento", with: @musica.data_lancamento
    fill_in "Duracao", with: @musica.duracao
    fill_in "Genero", with: @musica.genero
    fill_in "Titulo", with: @musica.titulo
    click_on "Update Musica"

    assert_text "Musica was successfully updated"
    click_on "Back"
  end

  test "should destroy Musica" do
    visit musica_url(@musica)
    click_on "Destroy this musica", match: :first

    assert_text "Musica was successfully destroyed"
  end
end
