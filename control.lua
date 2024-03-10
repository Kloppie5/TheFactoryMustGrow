
script.on_event(defines.events.on_console_chat,
  function(event)
    local player = game.get_player(event.player_index)
    if not player.character then
      player.print("Ghostmode: OFF")
      player.create_character()
      player.cheat_mode = false
    else
      player.print("Ghostmode: ON")
      player.character.destroy()
      player.character = nil
      player.cheat_mode = true
    end
  end
)
