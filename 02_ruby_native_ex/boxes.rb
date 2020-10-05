require 'open3'

gnuplot_commands = <<"End"
  set terminal png
  set output "boxes.png"
  plot "marathon" using 1:2 with boxes
End

image, s = Open3.capture2(
  "gnuplot", 
  :stdin_data => gnuplot_commands, 
  :binmode => true)
