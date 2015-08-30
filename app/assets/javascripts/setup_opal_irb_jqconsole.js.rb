class OpalWebConsole
  class << self
    def init
      return false if @inited # make sure `init` can be run once only

      # creates a panel at the bottom
      OpalIrbJqconsole.create_bottom_panel(hidden=false)

      # add topbar title
      Element.id("opal-irb-console-topbar").prepend(
        %{<span id="opal-irb-console-topbar-title">Web console for Opal #{Opal::VERSION} on ruby #{RUBY_VERSION}</span>}
      )

      # show how to open web console when closed the web console
      Element.id("collapse-opal-irb-console").on(:click) {
        show_tips if !@show_tips
      }

      hide_tips

      @inited = true
    end

    def show
      OpalIrbJqconsole.show_panel
    end

    def hide
      OpalIrbJqconsole.hide_panel
      show_tips if !@show_tips
    end

    def show_tips
      @show_tips = true
      show_cmd = if defined? Opal.eval
        'Opal.eval("OpalWebConsole.show")'
      else
        'Opal.OpalWebConsole.$show()'
      end
      puts "OpalWebConsole Tips: run `#{show_cmd}` in browser console to show web console"
    end

    def hide_tips
      hide_cmd = if defined? Opal.eval
          'Opal.eval("OpalWebConsole.hide")'
        else
          'Opal.OpalWebConsole.$hide()'
        end

      puts "OpalWebConsole Tips: run `#{hide_cmd}` in browser console to hide web console"
    end
  end
end
