# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Party.delete_all

2.times do Party.create(
  party_type: 'PER',
  last_name: Faker::Name.last_name,
  first_name: Faker::Name.first_name
)
end

2.times do Party.create(
  party_type: 'ORG',
  name: Faker::Company.name
)
end

GeneralLedgerAccount.create(
  account_code: '110',
  name: 'Cash',
  description: 'Liquid money available',
  acc_type_code: 'Cash'
)
GeneralLedgerAccount.create(
  account_code: '120',
  name: 'Banks',
  description: 'Bank Account',
  acc_type_code: 'Bank'
)

GeneralLedgerAccount.create(
  account_code: '121',
  name: 'Banco Bolivariano',
  description: 'Checking Bank Account 986543',
  acc_type_code: 'Bank'
)
GeneralLedgerAccount.create(
  account_code: '122',
  name: 'Banco Bolivariano',
  description: 'Saving Bank Account No. 898765',
  acc_type_code: 'Bank'
)

GeneralLedgerAccount.create(
  account_code: '500',
  name: 'Expenses',
  description: 'Operational Expenses',
  acc_type_code: 'Expense'
)

GeneralLedgerAccount.create(
  account_code: '510',
  name: 'Advertising expense',
  description: 'Cost of marketing expenses',
  acc_type_code: 'Expense'
)
GeneralLedgerAccount.create(
  account_code: '520',
  name: 'Office Supplies expense',
  description: 'Office supplies expenses',
  acc_type_code: 'Expense'
)

GeneralLedgerAccount.create(
  account_code: '400',
  name: 'Revenues',
  description: 'Amounts due to different incomes',
  acc_type_code: 'Revenue'
)

GeneralLedgerAccount.create(
  account_code: '410',
  name: 'Membership Income',
  description: 'Income obtained from membership sales',
  acc_type_code: 'Revenue'
)

GeneralLedgerAccount.create(
  account_code: '420',
  name: 'Advertising Income ',
  description: 'Amounts of revenues accumulated for a period due to advertising sales',
  acc_type_code: 'Revenue'
)


GlAccountType.create(
  acc_type_code: 'Bank',
  classification: 'Asset'
)

GlAccountType.create(
  acc_type_code: 'Expense',
  classification: 'Income Statement'
)

GlAccountType.create(
  acc_type_code: 'Revenue',
  classification: 'Income Statement'
)
