<?php
$cpu = shell_exec("top -bn1 | grep 'Cpu(s)' | awk '{print $2 + $4}'");
$mem = shell_exec("free | awk '/Mem:/ { printf(\"%.2f\", $3/$2 * 100.0) }'");
echo "<h3>🧠 CPU-Auslastung: " . round($cpu, 2) . "%</h3>";
echo "<h3>💾 RAM-Verbrauch: " . $mem . "%</h3>";
?>