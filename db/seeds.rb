# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


Party.create(
  party_type: 'ORG',
  name: 'Round One'
)

2.times do Party.create(
  party_type: 'ORG',
  name: Faker::Company.name
)
  end

2.times do Party.create(
  party_type: 'PER',
  last_name: Faker::Name.last_name,
  first_name: Faker::Name.first_name
)
end

##*** Cuentas de Activo Corriente ****

GeneralLedgerAccount.create(
  account_code: '1010',
  name: 'Caja',
  description: 'Efectivo en caja',
  acc_type_code: 'Activo'
)


GeneralLedgerAccount.create(
  account_code: '1020',
  name: 'Bancos',
  description: 'Cuentas de Bancos',
  acc_type_code: 'Activo'
)

GeneralLedgerAccount.create(
  account_code: '1021',
  name: 'Banco Bolivariano',
  description: 'Cta de Banco No. 023456',
  acc_type_code: 'Activo'
)

GeneralLedgerAccount.create(
  account_code: '1022',
  name: 'Banco Bolivariano',
  description: 'Cuenta de ahorro No. 898765',
  acc_type_code: 'Activo'
)

GeneralLedgerAccount.create(
  account_code: '1400',
  name: 'Inventario',
  description: 'Inventarios de productos y servicios',
  acc_type_code: 'Activo'
)

GeneralLedgerAccount.create(
  account_code: '1410',
  name: 'Inventario Membresías',
  description: 'Inventario de membresías',
  acc_type_code: 'Activo'
)

GeneralLedgerAccount.create(
  account_code: '1420',
  name: 'Inventario de Productos',
  description: 'Inventario de productos',
  acc_type_code: 'Activo'
)

GeneralLedgerAccount.create(
  account_code: '1200',
  name: 'Cuentas por Cobrar',
  description: 'Cuentas por cobrar',
  acc_type_code: 'Activo'
)

##**** Cuentas de Ingreso ****

GeneralLedgerAccount.create(
  account_code: '4000',
  name: 'Ingresos ',
  description: 'Ingresos',
  acc_type_code: 'Ingreso'
)

GeneralLedgerAccount.create(
  account_code: '4010',
  name: 'Venta de Membresías',
  description: 'Income obtained from membership sales',
  acc_type_code: 'Ingreso'
)

GeneralLedgerAccount.create(
  account_code: '4020',
  name: 'Venta de Servicios',
  description: 'Venta de servicios',
  acc_type_code: 'Ingreso'
)

GeneralLedgerAccount.create(
  account_code: '4030',
  name: 'Ingresos por Publicidad',
  description: 'Venta de publicidad',
  acc_type_code: 'Ingreso'
)

##**** Cuentas de Gasto ****

GeneralLedgerAccount.create(
  account_code: '5000',
  name: 'Costos',
  description: 'Costos Operacionales',
  acc_type_code: 'Gasto'
)

GeneralLedgerAccount.create(
  account_code: '5005',
  name: 'Comisiones por Ventas',
  description: 'Comisiones pagadas',
  acc_type_code: 'Gasto'
 )

GeneralLedgerAccount.create(
  account_code: '5010',
  name: 'Promoción de Ventas',
  description: 'Cost de promociones',
  acc_type_code: 'Gasto'
 )

GeneralLedgerAccount.create(
  account_code: '5020',
  name: 'Publicidad',
  description: 'Costo de publicidad',
  acc_type_code: 'Gasto'
)

GeneralLedgerAccount.create(
  account_code: '5040',
  name: 'Gasto de Mercadeo',
  description: 'Costo de marketing',
  acc_type_code: 'Gasto'
)

GeneralLedgerAccount.create(
  account_code: '5200',
  name: 'Rol de Pagos',
  description: 'Pagos de roles',
  acc_type_code: 'Gasto'
)

GeneralLedgerAccount.create(
  account_code: '5210',
  name: 'Labores Contratadas',
  description: 'Labores externas contratadas',
  acc_type_code: 'Gasto'
)

GeneralLedgerAccount.create(
  account_code: '5280',
  name: 'Alquiler',
  description: 'Alquiler',
  acc_type_code: 'Gasto'
)

GeneralLedgerAccount.create(
  account_code: '5281',
  name: 'Pago Alícuota',
  description: 'Alquiler',
  acc_type_code: 'Gasto'
)

GeneralLedgerAccount.create(
  account_code: '5300',
  name: 'Empresas de Servicios',
  description: 'Costo de servicios elec. tel y agua',
  acc_type_code: 'Gasto'
)

GeneralLedgerAccount.create(
  account_code: '5390',
  name: 'Servicios Profesionales',
  description: 'Servicios profesionales',
  acc_type_code: 'Gasto'
)

##**** Tipo de cuentas ****

GlAccountType.create(
  acc_type_code: 'Activo',
  classification: 'Balance'
)

GlAccountType.create(
  acc_type_code: 'Pasivo',
  classification: 'Balance'
)

GlAccountType.create(
  acc_type_code: 'Capital',
  classification: 'Balance'
)

GlAccountType.create(
  acc_type_code: 'Ingreso',
  classification: 'Perdidas o Ganacias'
)

GlAccountType.create(
  acc_type_code: 'Gasto',
  classification: 'Perdidas o Ganacias'
)

#**** Tipo de Transacciones  ****

AccountingTransactionType.create(
  transaction_type_code: 'Venta',
  description: 'Venta de membresías o productos'
)

AccountingTransactionType.create(
  transaction_type_code: 'Pago',
  description: 'Pago contra caja o con cheque'
)

# #**** Transacciones ****
#
# AccountingTransaction.create(
#   transaction_date:Time.now,
#   entry_date: Time.now,
#   description: 'Venta de membresía',
#   transaction_type_code: 'Venta',
#   to_party_id: 1,
#   from_party_id: 4
#   from_org_party_id:
# )
#
# TransactionDetail.create(
#   detail_seq: 1,
#   amount: 6500,
#   debit_credit_flag: 'Debit',
#   party_id: 4,
#   gl_account_id: 13,
#   parent_transaction_id: 1,
#   parent_detail_seq: nil
# )
#
# TransactionDetail.create(
#   detail_seq: 2,
#   amount: 20000,
#   debit_credit_flag: 'Credit',
#   party_id: 4,
#   gl_account_id: 12,
#   parent_transaction_id: 1,
#   parent_detail_seq: nil
# )
#
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
