module ApplicationHelper
  def create_gl_chart_of_accounts
    chart_file = File.new("gl_chart_of_accounts.txt", "w")
    glacs = GeneralLedgerAccount.all
    glacs.each do |gla|
      chart_file.puts("#{gla.account_code} - #{gla.name} - #{gla.acc_type_code} - #{gla.description}")
    end
    chart_file.close
  end
end
