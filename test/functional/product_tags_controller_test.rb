require 'test_helper'

class ProductTagsControllerTest < ActionController::TestCase
  setup do
    @product_tag = product_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_tag" do
    assert_difference('ProductTag.count') do
      post :create, product_tag: { product_id: @product_tag.product_id, tag_id: @product_tag.tag_id }
    end

    assert_redirected_to product_tag_path(assigns(:product_tag))
  end

  test "should show product_tag" do
    get :show, id: @product_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_tag
    assert_response :success
  end

  test "should update product_tag" do
    put :update, id: @product_tag, product_tag: { product_id: @product_tag.product_id, tag_id: @product_tag.tag_id }
    assert_redirected_to product_tag_path(assigns(:product_tag))
  end

  test "should destroy product_tag" do
    assert_difference('ProductTag.count', -1) do
      delete :destroy, id: @product_tag
    end

    assert_redirected_to product_tags_path
  end
end
