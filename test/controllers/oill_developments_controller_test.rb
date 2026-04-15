require "test_helper"

class OillDevelopmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oill_development = oill_developments(:one)
  end

  test "should get index" do
    get oill_developments_url, as: :json
    assert_response :success
  end

  test "should create oill_development" do
    assert_difference("OillDevelopment.count") do
      post oill_developments_url, params: { oill_development: {} }, as: :json
    end

    assert_response :created
  end

  test "should show oill_development" do
    get oill_development_url(@oill_development), as: :json
    assert_response :success
  end

  test "should update oill_development" do
    patch oill_development_url(@oill_development), params: { oill_development: {} }, as: :json
    assert_response :success
  end

  test "should destroy oill_development" do
    assert_difference("OillDevelopment.count", -1) do
      delete oill_development_url(@oill_development), as: :json
    end

    assert_response :no_content
  end
end
