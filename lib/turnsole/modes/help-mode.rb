module Turnsole

class HelpMode < TextMode
  def initialize context, mode, global_keymap
    title = "Help for #{mode.name}"
    super context, <<EOS
#{title}
#{'=' * title.length}

#{mode.help_text}
Global keybindings
------------------
#{global_keymap.help_text}
EOS
  end
end

end

