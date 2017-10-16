require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    # ルートページを読み込む
    get root_path
    # テンプレートが正しいか
    assert_template 'static_pages/home'
    # ルートページへのリンクが２つあるか
    assert_select "a[href=?]", root_path, count: 2
    # ヘルプページへのリンクがあるか
    assert_select "a[href=?]", help_path
    # アバウトぺーじへのリンクがあるか
    assert_select "a[href=?]", about_path
    # コンタクトページへのリンクがあるか
    assert_select "a[href=?]", contact_path
  end
  # test "the truth" do
  #   assert true
  # end
end
