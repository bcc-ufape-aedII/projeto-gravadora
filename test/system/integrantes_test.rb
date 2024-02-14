require "application_system_test_case"

class IntegrantesTest < ApplicationSystemTestCase
  setup do
    @integrante = integrantes(:one)
  end

  test "visiting the index" do
    visit integrantes_url
    assert_selector "h1", text: "Integrantes"
  end

  test "should create integrante" do
    visit integrantes_url
    click_on "New integrante"

    fill_in "Artista", with: @integrante.artista_id
    fill_in "Cpf", with: @integrante.cpf
    fill_in "Funcao", with: @integrante.funcao
    fill_in "Nome", with: @integrante.nome
    click_on "Create Integrante"

    assert_text "Integrante was successfully created"
    click_on "Back"
  end

  test "should update Integrante" do
    visit integrante_url(@integrante)
    click_on "Edit this integrante", match: :first

    fill_in "Artista", with: @integrante.artista_id
    fill_in "Cpf", with: @integrante.cpf
    fill_in "Funcao", with: @integrante.funcao
    fill_in "Nome", with: @integrante.nome
    click_on "Update Integrante"

    assert_text "Integrante was successfully updated"
    click_on "Back"
  end

  test "should destroy Integrante" do
    visit integrante_url(@integrante)
    click_on "Destroy this integrante", match: :first

    assert_text "Integrante was successfully destroyed"
  end
end
