module PagesHelper

  def self.create_gl_chart_of_accounts_report
    chart_file = File.new("app/views/reports/gl_chart_of_accounts.html.erb", "w")
    glacs = GeneralLedgerAccount.order(:account_code).all

      chart_file.puts(
        '<div><h1>General Ledger Chart of Accounts</h1></div>')
        chart_file.puts(
          '<table><tr><th>ID</th><th>Code</th><th>Name</th><th>Account Type</th><th>Description</th></tr>'
        )
        glacs.each do |gla|
        chart_file.puts(
        "<tr><td>#{gla.id}</td><td>#{gla.account_code}</td><td>#{gla.name}</td><td>#{gla.gl_account_type_id}</td> <td>#{gla.description}</td></tr>")
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
        <h1>General Ledger Transactions </h1>')

        trans.each do |tra|
          trans_file.puts(
            "<table>
              <tr>
                <th>ID</th>
                <th>Entry Date</th>
                <th>Description</th>
                <th>Tran Type account_code</th>
                <th>To Party</th>
                <th>From Party</th>
                <th>From Org Party</th>
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
              <h4>Transaction Detail</h4>')
              trans_file.puts(
               "<tr>
                 <th>ID</th>
                 <th>Seq</th>
                 <th>Amount</th>
                 <th>Flag</th>
                 <th>Party ID</th>
                 <th>Gl Account ID</th>
                 <th>Parent ID</th>
                 <th>Parent Seq</th>
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
end
