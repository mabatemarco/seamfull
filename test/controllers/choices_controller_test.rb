require 'test_helper'

class ChoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @choice = choices(:one)
  end

  test "should get index" do
    get choices_url, as: :json
    assert_response :success
  end

  test "should create choice" do
    assert_difference('Choice.count') do
      post choices_url, params: { choice: { option_id: @choice.option_id } }, as: :json
    end

    assert_response 201
  end

  test "should show choice" do
    get choice_url(@choice), as: :json
    assert_response :success
  end

  test "should update choice" do
    patch choice_url(@choice), params: { choice: { option_id: @choice.option_id } }, as: :json
    assert_response 200
  end

  test "should destroy choice" do
    assert_difference('Choice.count', -1) do
      delete choice_url(@choice), as: :json
    end

    assert_response 204
  end
end
