# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


# Party.create(
#   party_type: 'ORG',
#   name: 'Round One'
# )
#
# 2.times do Party.create(
#   party_type: 'ORG',
#   name: Faker::Company.name
# )
#   end
#
# 2.times do Party.create(
#   party_type: 'PER',
#   last_name: Faker::Name.last_name,
#   first_name: Faker::Name.first_name
# )
# end
#
#
# GeneralLedgerAccount.create(
#   account_code: '110',
#   name: 'Cash',
#   description: 'Liquid money available',
#   acc_type_code: 'Cash'
# )
# GeneralLedgerAccount.create(
#   account_code: '120',
#   name: 'Banks',
#   description: 'Bank Account',
#   acc_type_code: 'Bank'
# )
#
# GeneralLedgerAccount.create(
#   account_code: '121',
#   name: 'Banco Bolivariano',
#   description: 'Checking Bank Account 986543',
#   acc_type_code: 'Bank'
# )
# GeneralLedgerAccount.create(
#   account_code: '122',
#   name: 'Banco Bolivariano',
#   description: 'Saving Bank Account No. 898765',
#   acc_type_code: 'Bank'
# )
#
# GeneralLedgerAccount.create(
#   account_code: '500',
#   name: 'Expenses',
#   description: 'Operational Expenses',
#   acc_type_code: 'Expense'
# )
#
# GeneralLedgerAccount.create(
#   account_code: '510',
#   name: 'Advertising expense',
#   description: 'Cost of marketing expenses',
#   acc_type_code: 'Expense'
# )
# GeneralLedgerAccount.create(
#   account_code: '520',
#   name: 'Office Supplies expense',
#   description: 'Office supplies expenses',
#   acc_type_code: 'Expense'
# )
#
# GeneralLedgerAccount.create(
#   account_code: '400',
#   name: 'Revenues',
#   description: 'Amounts due to different incomes',
#   acc_type_code: 'Revenue'
# )
#
# GeneralLedgerAccount.create(
#   account_code: '410',
#   name: 'Membership Income',
#   description: 'Income obtained from membership sales',
#   acc_type_code: 'Revenue'
# )
#
# GeneralLedgerAccount.create(
#   account_code: '420',
#   name: 'Advertising Income ',
#   description: 'Amounts of revenues accumulated for a period due to advertising sales',
#   acc_type_code: 'Revenue'
# )
# GeneralLedgerAccount.create(
#   account_code: '430',
#   name: 'Invoices Pending Payment',
#   description: 'Invoices pending of payment',
#   acc_type_code: 'Revenue'
# )
#
# GeneralLedgerAccount.create(
#   account_code: '161',
#   name: 'Accumulate Depreciation',
#   description: 'Fixed assets accumulate depreciation',
#   acc_type_code: 'Asset'
# )
#
# GeneralLedgerAccount.create(
#   account_code: '610',
#   name: 'Depreciation Expense',
#   description: 'Fixed assets depreciation',
#   acc_type_code: 'Expense'
# )

# GlAccountType.create(
#   acc_type_code: 'Bank',
#   classification: 'Asset'
# )
#
# GlAccountType.create(
#   acc_type_code: 'Expense',
#   classification: 'Income Statement'
# )
#
# GlAccountType.create(
#   acc_type_code: 'Revenue',
#   classification: 'Income Statement'
# )
#
# AccountingTransactionType.create(
#   transaction_type_code: 'Invoice',
#   description: 'Invoiced amount due'
# )
#
# AccountingTransactionType.create(
#   transaction_type_code: 'Invoice Payment',
#   description: 'Payment against invoice'
# )
#
# AccountingTransactionType.create(
#   transaction_type_code: 'Depreciation expense',
#   description: 'Assets Depreciation'
# )

AccountingTransaction.create(
  transaction_date:Time.now,
  entry_date: Time.now,
  description: 'Depreciation on equipment',
  transaction_type_code: 'Depreciation expense',
  to_party_id: 3,
  from_org_party_id: 3
)
TransactionDetail.create(
  detail_seq: 1,
  amount: 20000,
  debit_credit_flag: 'Debit',
  party_id: 4,
  gl_account_id: 13,
  parent_transaction_id: 1,
  parent_detail_seq: nil
)

TransactionDetail.create(
  detail_seq: 2,
  amount: 20000,
  debit_credit_flag: 'Credit',
  party_id: 4,
  gl_account_id: 12,
  parent_transaction_id: 1,
  parent_detail_seq: nil
)

# AccountingTransaction.create(
#   transaction_date:Time.now,
#   entry_date: Time.now,
#   description: 'Invoiced amount due',
#   transaction_type_code: 'Invoice',
#   to_party_id: 4,
#   from_org_party_id: 3
# )
#
# TransactionDetail.create(
#   detail_seq: 1,
#   amount: 90000,
#   debit_credit_flag: 'Credit',
#   party_id: 4,
#   gl_account_id: 11,
#   parent_transaction_id: 1,
#   parent_detail_seq: 1
# )
#
# TransactionDetail.create(
#   detail_seq: 2,
#   amount: 90000,
#   debit_credit_flag: 'Debit',
#   party_id: 4,
#   gl_account_id: 11,
#   parent_transaction_id: 1,
#   parent_detail_seq: 1
# )
