require 'test_helper'

class WhateveraskjhdasdksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @whateveraskjhdasdk = whateveraskjhdasdks(:one)
  end

  test "should get index" do
    get whateveraskjhdasdks_url
    assert_response :success
  end

  test "should get new" do
    get new_whateveraskjhdasdk_url
    assert_response :success
  end

  test "should create whateveraskjhdasdk" do
    assert_difference('Whateveraskjhdasdk.count') do
      post whateveraskjhdasdks_url, params: { whateveraskjhdasdk: { caption: @whateveraskjhdasdk.caption } }
    end

    assert_redirected_to whateveraskjhdasdk_url(Whateveraskjhdasdk.last)
  end

  test "should show whateveraskjhdasdk" do
    get whateveraskjhdasdk_url(@whateveraskjhdasdk)
    assert_response :success
  end

  test "should get edit" do
    get edit_whateveraskjhdasdk_url(@whateveraskjhdasdk)
    assert_response :success
  end

  test "should update whateveraskjhdasdk" do
    patch whateveraskjhdasdk_url(@whateveraskjhdasdk), params: { whateveraskjhdasdk: { caption: @whateveraskjhdasdk.caption } }
    assert_redirected_to whateveraskjhdasdk_url(@whateveraskjhdasdk)
  end

  test "should destroy whateveraskjhdasdk" do
    assert_difference('Whateveraskjhdasdk.count', -1) do
      delete whateveraskjhdasdk_url(@whateveraskjhdasdk)
    end

    assert_redirected_to whateveraskjhdasdks_url
  end
end
