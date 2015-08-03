Document.ready? do
  # creates a panel at the bottom
  OpalIrbJqconsole.create_bottom_panel(hidden=false)

  # add topbar title
  Element.id("opal-irb-console-topbar").prepend(
    %{<span id="opal-irb-console-topbar-title">Web console for Opal #{Opal::VERSION}</span>}
  )

  # show how to open web console when closed the web console
  Element.id("collapse-opal-irb-console").on(:click) {
    show_cmd = if defined? Opal.eval
      'Opal.eval("OpalIrbJqconsole.show_panel")'
    else
      'Opal.OpalIrbJqconsole.$show_panel()'
    end
    puts "Opal Tips: run `#{show_cmd}` in browser console to show web console"
  }
end
