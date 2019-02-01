module PagesHelper
  require 'money'

  def self.create_gl_chart_of_accounts_report
    chart_file = File.new("app/views/reports/gl_chart_of_accounts.html.erb", "w")
    glacs = GeneralLedgerAccount.order(:account_code).all

      chart_file.puts(
        '<div>
          <h1>General Ledger Chart of Accounts</h1>
        </div>')
        chart_file.puts(
          "<table>
            <tr>
              <th>ID</th>
              <th>Code</th>
              <th>Name</th>
              <th>Account Type</th>
              <th>Description</th>
            </tr>"
        )
        glacs.each do |gla|
          chart_file.puts(
          "<tr>
             <td>#{gla.id}</td>
             <td>#{gla.account_code}</td>
             <td>#{gla.name}</td>
             <td>#{gla.gl_account_type_id}</td>
             <td>#{gla.description}</td>
          </tr>")
        end
    chart_file.puts('</table>')
    chart_file.close
  end

  def self.create_transactions_report
    trans_file = File.new("app/views/reports/account_transactions.html.erb", "w")
    trans = AccountingTransaction.order(:id).all
    detrans = TransactionDetail.order(:parent_transaction_id)
      trans_file.puts(
        '<div>
        <h2> Transaciones Contables </h2>')
        trans.each do |tra|
          trans_file.puts(
            "<table>
              <tr>
                <th>ID</th>
                <th>Fecha Entrada</th>
                <th>Descripción</th>
                <th>Tipo de Transacción</th>
                <th>Hacia</th>
                <th>Desde</th>
                <th>Desde Org</th>
              </tr>")
          trans_file.puts(
              "<tr>
                <td>#{tra.id}</td>
                <td>#{tra.entry_date}</td>
                <td>#{tra.description}</td>
                <td>#{tra.transaction_type_code}</td>
                <td>#{tra.to_party_id}</td>
                <td>#{tra.from_party_id}</td>
                <td>#{tra.from_org_party_id}</td>
              </tr>
            </table>")
          detrans = TransactionDetail.where("parent_transaction_id = #{tra.id}")
          trans_file.puts(
            '<table>
              <h5>Detalle de Transacciones</h5>')
              trans_file.puts(
               "<tr>
                 <th>ID</th>
                 <th>No. Sec</th>
                 <th>Cantidad</th>
                 <th>Clase</th>
                 <th>Participante</th>
                 <th>Código de Cta </th>
                 <th>Transacción ID</th>
                 <th>Sec padre</th>
               </tr>")
          detrans.each do |det|
              trans_file.puts(
              "<tr>
                <td>#{det.id}</td>
                <td>#{det.detail_seq}</td>
                <td>#{det.amount}</td>
                <td>#{det.debit_credit_flag}</td>
                <td>#{det.party_id}</td>
                <td>#{det.gl_account_id}</td>
                <td>#{det.parent_transaction_id}</td>
                <td>#{det.parent_detail_seq}</td>
              </tr>")
          end
        trans_file.puts("</table><br>")
        end
        trans_file.puts("</div>")
    trans_file.close
  end

  def self.create_income_report
    cr_ins = TransactionDetail.where(debit_credit_flag: 'Credit')
    db_ins = TransactionDetail.where(debit_credit_flag: 'Debit')
    cr_sum = cr_ins.sum(:amount)
    db_sum = db_ins.sum(:amount)
    income_balance = cr_sum - db_sum

    income_file =File.new("app/views/reports/income_balance.html.erb" , "w")

    income_file.puts(
      "<h4>Balance de Ingresos vs Gastos </h4>
      <table>
      <th><h5>Créditos</h5></th>")
        cr_ins.each do |cr|
          ac_cr_name = GeneralLedgerAccount.find(cr.id).name
    income_file.puts(
        "<tr>
          <td> #{ac_cr_name} </td>
          <td>  #{Money.new(cr.amount, 'USD')}</td>
      </tr>"
    )
    end

    income_file.puts(
      "<th><h5>Débitos</h5></th>")
        db_ins.each do |db|
          ac_db_name = GeneralLedgerAccount.find(db.id).name
      income_file.puts(
      "<tr>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td> #{ac_db_name}</td>
          <td> #{Money.new(db.amount, 'USD')}</td>
      </tr>"
    )
    end
    income_file.puts("</table>")
    income_file.puts(
      "<br><p>Crédito = #{Money.new(cr_sum, 'USD')} - Débito = #{Money.new(db_sum, 'USD')} = Balance = #{Money.new(income_balance, 'USD')}</p>")
    income_file.close
  end

end
