module ReportsHelper
  # def self.create_gl_chart_of_accounts
  #   chart_file = File.new("views/reports/gl1_chart_of_accounts.html.erb", "w")
  #   glacs = GeneralLedgerAccount.order(:account_code).all
  #
  #     chart_file.puts(
  #       '<div><h1>General Ledger Chart of Accounts</h1></div>')
  #       chart_file.puts(
  #         '<table><tr><th>Code</th><th>Name</th><th>Account Type</th><th>Description</th></tr>'
  #       )
  #       glacs.each do |gla|
  #       chart_file.puts(
  #       "<tr><td>#{gla.account_code}</td><td>#{gla.name}</td><td>#{gla.acc_type_code}</td> <td>#{gla.description}</td></tr>")
  #       end
  #   chart_file.puts('</table>')
  #   chart_file.close
  # end

end
