require 'test_helper'

class SentimentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sentiment = sentiments(:one)
  end

  test "should get index" do
    get sentiments_url, as: :json
    assert_response :success
  end

  test "should create sentiment" do
    assert_difference('Sentiment.count') do
      post sentiments_url, params: { sentiment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show sentiment" do
    get sentiment_url(@sentiment), as: :json
    assert_response :success
  end

  test "should update sentiment" do
    patch sentiment_url(@sentiment), params: { sentiment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy sentiment" do
    assert_difference('Sentiment.count', -1) do
      delete sentiment_url(@sentiment), as: :json
    end

    assert_response 204
  end
end
