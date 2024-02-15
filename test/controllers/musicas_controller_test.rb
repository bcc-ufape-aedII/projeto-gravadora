require "test_helper"

class MusicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musica = musicas(:one)
  end

  test "should get index" do
    get musicas_url
    assert_response :success
  end

  test "should get new" do
    get new_musica_url
    assert_response :success
  end

  test "should create musica" do
    assert_difference("Musica.count") do
      post musicas_url, params: { musica: { album_id: @musica.album_id, data_lancamento: @musica.data_lancamento, duracao: @musica.duracao, genero: @musica.genero, titulo: @musica.titulo } }
    end

    assert_redirected_to musica_url(Musica.last)
  end

  test "should show musica" do
    get musica_url(@musica)
    assert_response :success
  end

  test "should get edit" do
    get edit_musica_url(@musica)
    assert_response :success
  end

  test "should update musica" do
    patch musica_url(@musica), params: { musica: { album_id: @musica.album_id, data_lancamento: @musica.data_lancamento, duracao: @musica.duracao, genero: @musica.genero, titulo: @musica.titulo } }
    assert_redirected_to musica_url(@musica)
  end

  test "should destroy musica" do
    assert_difference("Musica.count", -1) do
      delete musica_url(@musica)
    end

    assert_redirected_to musicas_url
  end
end
