require "../src/cryst_glut"

include CrystGLUT

window = Window.new(800, 600, "Blank Window")

window.on_display do
  puts "the window is open!"
  while !window.is_close_requested
    # do OpenGL magic
    window.render
  end
  puts "the window is closing!"
  window.dispose
end

window.open
