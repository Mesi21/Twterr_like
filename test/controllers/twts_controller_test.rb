# frozen_string_literal: true

require 'test_helper'

class TwtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twt = twts(:one)
  end

  test 'should get index' do
    get twts_url
    assert_response :success
  end

  test 'should get new' do
    get new_twt_url
    assert_response :success
  end

  test 'should create twt' do
    assert_difference('Twt.count') do
      post twts_url, params: { twt: { twt: @twt.twt } }
    end

    assert_redirected_to twt_url(Twt.last)
  end

  test 'should show twt' do
    get twt_url(@twt)
    assert_response :success
  end

  test 'should get edit' do
    get edit_twt_url(@twt)
    assert_response :success
  end

  test 'should update twt' do
    patch twt_url(@twt), params: { twt: { twt: @twt.twt } }
    assert_redirected_to twt_url(@twt)
  end

  test 'should destroy twt' do
    assert_difference('Twt.count', -1) do
      delete twt_url(@twt)
    end

    assert_redirected_to twts_url
  end
end
