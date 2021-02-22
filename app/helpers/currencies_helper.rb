module CurrenciesHelper
  def currencies_for_select
    Currency.all.collect { |c| [c.code, c.id] }
  end
end
