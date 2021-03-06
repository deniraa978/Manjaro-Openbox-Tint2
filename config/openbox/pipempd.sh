#!/bin/bash

nowplaying=$(mpc -p 6600 current | head -1)

echo "<openbox_pipe_menu>"
echo '<separator label=" Now Playing"/>'
echo "<item label=\" $nowplaying\"></item>"
echo '<item label=" Play/Pause"><action name="Execute"><execute>mpc -p 6600 toggle</execute></action></item>'
echo '<item label=" Stop"><action name="Execute"><execute>mpc -p 6600 stop</execute></action></item>'
echo '<item label=" Prev Song"><action name="Execute"><execute>mpc -p 6600 prev</execute></action></item>'
echo '<item label=" Next Song"><action name="Execute"><execute>mpc -p 6600 next</execute></action></item>'
echo "</openbox_pipe_menu>"
