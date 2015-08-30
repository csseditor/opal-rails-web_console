module OpalWebConsoleHelper
  def opal_console
    javascript_tag %{Opal.OpalWebConsole.$init()}
  end
end
