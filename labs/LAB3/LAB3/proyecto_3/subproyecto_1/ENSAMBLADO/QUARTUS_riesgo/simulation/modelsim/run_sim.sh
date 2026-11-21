M=/opt/altera/13.0sp1/modelsim_ase/linuxaloem
rm -rf work; $M/vlib work >/dev/null
cp design_files.txt pending.txt
for pass in $(seq 1 12); do
  : > next.txt
  while read f; do $M/vcom -2008 -quiet -work work "$f" > last_err.txt 2>&1 || { echo "$f" >> next.txt; cp last_err.txt "err_$(basename $f).txt"; }; done < pending.txt
  if [ ! -s next.txt ]; then break; fi
  if cmp -s next.txt pending.txt; then echo "COMPILE FAILED:"; cat next.txt; for f in $(cat next.txt); do grep -m3 Error "err_$(basename $f).txt"; done; exit 1; fi
  mv next.txt pending.txt
done
rm -f err_*.txt
while read f; do $M/vcom -2008 -quiet -work work "$f" || exit 1; done < tb_files.txt
$M/vsim -c -quiet -do "run -all; quit -f" work.prueba_ensamblado_multi
