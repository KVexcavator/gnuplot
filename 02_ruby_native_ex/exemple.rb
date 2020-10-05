require 'open3'

gnuplot_commands = <<"End"
  set terminal png
  set output "ex.png"
  plot x**2, "-" with lines
  1 14
  2 1
  3 8
  4 5
  e
End

image, s = Open3.capture2(
  "gnuplot", 
  :stdin_data => gnuplot_commands, 
  :binmode => true)
