require 'test_helper'

class TxnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @txn = txns(:one)
  end

  test "should get index" do
    get txns_url
    assert_response :success
  end

  test "should get new" do
    get new_txn_url
    assert_response :success
  end

  test "should create txn" do
    assert_difference('Txn.count') do
      post txns_url, params: { txn: { address: @txn.address, block_id: @txn.block_id, from: @txn.from, label: @txn.label, txnid: @txn.txnid } }
    end

    assert_redirected_to txn_url(Txn.last)
  end

  test "should show txn" do
    get txn_url(@txn)
    assert_response :success
  end

  test "should get edit" do
    get edit_txn_url(@txn)
    assert_response :success
  end

  test "should update txn" do
    patch txn_url(@txn), params: { txn: { address: @txn.address, block_id: @txn.block_id, from: @txn.from, label: @txn.label, txnid: @txn.txnid } }
    assert_redirected_to txn_url(@txn)
  end

  test "should destroy txn" do
    assert_difference('Txn.count', -1) do
      delete txn_url(@txn)
    end

    assert_redirected_to txns_url
  end
end
