json.extract! txn, :id, :txnid, :from, :block_id, :label, :address, :created_at, :updated_at
json.url txn_url(txn, format: :json)
