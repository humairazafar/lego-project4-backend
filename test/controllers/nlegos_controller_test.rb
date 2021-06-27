require "test_helper"

class NlegosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nlego = nlegos(:one)
  end

  test "should get index" do
    get nlegos_url, as: :json
    assert_response :success
  end

  test "should create nlego" do
    assert_difference('Nlego.count') do
      post nlegos_url, params: { nlego: { details: @nlego.details, img_url: @nlego.img_url, name: @nlego.name } }, as: :json
    end

    assert_response 201
  end

  test "should show nlego" do
    get nlego_url(@nlego), as: :json
    assert_response :success
  end

  test "should update nlego" do
    patch nlego_url(@nlego), params: { nlego: { details: @nlego.details, img_url: @nlego.img_url, name: @nlego.name } }, as: :json
    assert_response 200
  end

  test "should destroy nlego" do
    assert_difference('Nlego.count', -1) do
      delete nlego_url(@nlego), as: :json
    end

    assert_response 204
  end
end
