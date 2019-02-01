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
# puts "2 ORG parties created"
#
# 2.times do Party.create(
#   party_type: 'PER',
#   last_name: Faker::Name.last_name,
#   first_name: Faker::Name.first_name
# )
# end
# puts "2 PER parties created"
#
# #**** Tipo de cuentas ****
#
# GlAccountType.create(
#   acc_type_code: 'Activo',
#   classification: 'Balance'
# )
#
# GlAccountType.create(
#   acc_type_code: 'Pasivo',
#   classification: 'Balance'
# )
#
# GlAccountType.create(
#   acc_type_code: 'Capital',
#   classification: 'Balance'
# )
#
# GlAccountType.create(
#   acc_type_code: 'Ingreso',
#   classification: 'Perdidas o Ganacias'
# )
#
# GlAccountType.create(
#   acc_type_code: 'Gasto',
#   classification: 'Perdidas o Ganacias'
# )
# puts " 5 GlAccountType created"
# #
#  activo = GlAccountType.find_by(acc_type_code: 'Activo')
#  pasivo = GlAccountType.find_by(acc_type_code: 'Pasivo')
#  capital = GlAccountType.find_by(acc_type_code: 'Capital')
#  gasto = GlAccountType.find_by(acc_type_code: 'Gasto')
#  ingreso = GlAccountType.find_by(acc_type_code: 'Ingreso')
#
# #*** Cuentas de Activo Corriente ****
#
# activo.general_ledger_accounts.create(
#  account_code: '1000',
#  name: 'Activos Corrientes',
#  description: 'Valores disponibles, activos de la empresa'
# )
#
#  activo.general_ledger_accounts.create(
#   account_code: '1010',
#   name: 'Caja',
#   description: 'Efectivo en caja'
# )
# #
# activo.general_ledger_accounts.create(
#   account_code: '1020',
#   name: 'Bancos',
#   description: 'Cuentas de Bancos'
# )
#
# activo.general_ledger_accounts.create(
#   account_code: '1021',
#   name: 'Banco Bolivariano',
#   description: 'Cta de Banco No. 023456'
# )
#
# activo.general_ledger_accounts.create(
#   account_code: '1022',
#   name: 'Banco Bolivariano',
#   description: 'Cuenta de ahorro No. 898765'
# )
#
# activo.general_ledger_accounts.create(
#   account_code: '1400',
#   name: 'Inventario',
#   description: 'Inventarios de productos y servicios'
# )
#
# activo.general_ledger_accounts.create(
#   account_code: '1410',
#   name: 'Inventario Membresías',
#   description: 'Inventario de membresías'
# )
#
# activo.general_ledger_accounts.create(
#   account_code: '1420',
#   name: 'Inventario de Productos',
#   description: 'Inventario de productos'
# )
#
# activo.general_ledger_accounts.create(
#   account_code: '1200',
#   name: 'Cuentas por Cobrar',
#   description: 'Cuentas por cobrar'
# )
#
# puts "Cuentas de Balance-Activo creadas"
#
# pasivo.general_ledger_accounts.create(
#   account_code: '2000',
#   name: 'Pasivos Corrientes',
#   description: 'Valores que se deben'
# )
#
# pasivo.general_ledger_accounts.create(
#   account_code: '2100',
#   name: 'Cuentas por Pagar',
#   description: 'Valores que se deben pagar en el corto plazo'
# )
# puts "Cuentas del Pasivo creadas"
#
# #**** Cuentas de Capital ***
# capital.general_ledger_accounts.create(
#   account_code: '3000',
#   name: 'Capital ',
#   description: 'Valores para iniciar el negocio'
# )
#
# capital.general_ledger_accounts.create(
#   account_code: '3010',
#   name: 'Aporte de Socios ',
#   description: 'Cuentas de aporte de socios'
# )
#
# capital.general_ledger_accounts.create(
#   account_code: '3020',
#   name: 'Contra Capital ',
#   description: 'Valores para iniciar el negocio'
# )
#
# capital.general_ledger_accounts.create(
#   account_code: '3030',
#   name: 'Utilidades Retenidas',
#   description: 'Utilidades retenidas para reinversión'
# )
#
# puts "Cuentas de Capital creadas"
#
# #**** Cuentas de Ingreso ****
#
# ingreso.general_ledger_accounts.create(
#   account_code: '4000',
#   name: 'Ingresos ',
#   description: 'Ingresos'
# )
#
# ingreso.general_ledger_accounts.create(
#   account_code: '4010',
#   name: 'Venta de Membresías',
#   description: 'Ingresos obtenidos de las ventas de membresía'
# )
#
# ingreso.general_ledger_accounts.create(
#   account_code: '4020',
#   name: 'Venta de Servicios',
#   description: 'Venta de servicios'
# )
#
# ingreso.general_ledger_accounts.create(
#   account_code: '4030',
#   name: 'Ingresos por Publicidad',
#   description: 'Venta de publicidad'
# )
# puts "Cuentas de Ingreso creadas"
#
# ##**** Cuentas de Gasto ****
#
# gasto.general_ledger_accounts.create(
#   account_code: '5000',
#   name: 'Gastos',
#   description: 'Gastos Operacionales'
# )
#
# gasto.general_ledger_accounts.create(
#   account_code: '5005',
#   name: 'Comisiones por Ventas',
#   description: 'Comisiones pagadas'
#  )
#
# gasto.general_ledger_accounts.create(
#   account_code: '5010',
#   name: 'Promoción de Ventas',
#   description: 'Cost de promociones'
#  )
#
# gasto.general_ledger_accounts.create(
#   account_code: '5020',
#   name: 'Publicidad',
#   description: 'Costo de publicidad'
# )
#
# gasto.general_ledger_accounts.create(
#   account_code: '5040',
#   name: 'Gasto de Mercadeo',
#   description: 'Costo de marketing'
# )
#
# gasto.general_ledger_accounts.create(
#   account_code: '5200',
#   name: 'Rol de Pagos',
#   description: 'Pagos de roles'
# )
#
# gasto.general_ledger_accounts.create(
#   account_code: '5210',
#   name: 'Labores Contratadas',
#   description: 'Labores externas contratadas'
# )
#
# gasto.general_ledger_accounts.create(
#   account_code: '5280',
#   name: 'Alquiler',
#   description: 'Alquiler'
# )
#
# gasto.general_ledger_accounts.create(
#   account_code: '5281',
#   name: 'Pago Alícuota',
#   description: 'Alquiler'
# )
#
# gasto.general_ledger_accounts.create(
#   account_code: '5300',
#   name: 'Empresas de Servicios',
#   description: 'Costo de servicios elec. tel y agua'
# )
#
# gasto.general_ledger_accounts.create(
#   account_code: '5390',
#   name: 'Servicios Profesionales',
#   description: 'Servicios profesionales'
# )
# puts "Cuentas de Gasto creadas"


##**** Tipo de Transacciones  ****

AccountingTransactionType.create(
  transaction_type_code: 'Venta',
  description: 'Venta de membresías o productos'
)

AccountingTransactionType.create(
  transaction_type_code: 'Pago',
  description: 'Pago contra caja o con cheque'
)

AccountingTransactionType.create(
  transaction_type_code: 'Transferencia Externa',
  description: 'Transferencias entre ctas externas o internas a externas'
)
puts "Tipos de transacciones creadas"
#**** Transacciones ****

AccountingTransaction.create(
  transaction_date:Time.now,
  entry_date: Time.now,
  description: 'Venta de membresía',
  transaction_type_code: 'Venta',
  to_party_id: 1,
  from_party_id: 4,
  from_org_party_id: nil
)

TransactionDetail.create(
  detail_seq: 1,
  amount: 6500,
  debit_credit_flag: 'Debit',
  party_id: 1,
  gl_account_id: 17,
  parent_transaction_id: 1,
  parent_detail_seq: nil
)

TransactionDetail.create(
  detail_seq: 2,
  amount: 6500,
  debit_credit_flag: 'Credit',
  party_id: 1,
  gl_account_id: 2,
  parent_transaction_id: 1,
  parent_detail_seq: 1
)

AccountingTransaction.create(
  transaction_date:Time.now,
  entry_date: Time.now,
  description: 'Transferencia de caja a cta cte banco',
  transaction_type_code: 'Transferencia Externa',
  to_party_id: 2,
  from_party_id: nil,
  from_org_party_id: 1
)

TransactionDetail.create(
  detail_seq: 1,
  amount: 6500,
  debit_credit_flag: 'Debit',
  party_id: 1,
  gl_account_id: 2,
  parent_transaction_id: 2,
  parent_detail_seq: 1
)

TransactionDetail.create(
  detail_seq: 2,
  amount: 6500,
  debit_credit_flag: 'Credit',
  party_id: 1,
  gl_account_id: 4,
  parent_transaction_id: 2,
  parent_detail_seq: 2
)
puts " 2 transacciones y detalles creados"
# AccountingTransaction.create(
#   transaction_date:Time.now,
#   entry_date: Time.now,
#   description: 'Invoiced amount due',
#   transaction_type_code: 'Invoice',
#   to_party_id: 4,
#   from_org_party_id: 1
# )
#
# TransactionDetail.create(
#   detail_seq: 1,
#   amount: 90000,
#   debit_credit_flag: 'Credit',
#   party_id: 1,
#   gl_account_id: 11,
#   parent_transaction_id: 2,
#   parent_detail_seq: 1
# )
#
# TransactionDetail.create(
#   detail_seq: 2,
#   amount: 90000,
#   debit_credit_flag: 'Debit',
#   party_id: 1,
#   gl_account_id: 11,
#   parent_transaction_id: 1,
#   parent_detail_seq: 1
# )
