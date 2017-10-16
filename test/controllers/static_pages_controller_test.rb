require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  # 変数等のセット？
  def setup
    @base_title = "Babyloos's App"
  end

  
  # ゲットリクエストを飛ばしたら、success(レスポンス２００が帰ってくる事)を確認
  # タイトルタグ内に指定の文字列があることを確認
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end
  
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
  
  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
  

end
