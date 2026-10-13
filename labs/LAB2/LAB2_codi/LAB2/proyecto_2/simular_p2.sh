#!/bin/bash
set -e

REPO_DIR="/home/lilchapa/Desktop/UPC/MP/FIB-MP"
P1="$REPO_DIR/labs/LAB2/LAB2_codi/LAB2/proyecto_1"
P2="$REPO_DIR/labs/LAB2/LAB2_codi/LAB2/proyecto_2"
GHDL="/home/lilchapa/.gemini/antigravity-ide/brain/c32b3180-e11a-4927-b58e-445626fc2dc9/scratch/ghdl/ghdl-mcode-6.0.0-ubuntu24.04-x86_64/bin/ghdl"
WORKDIR="/home/lilchapa/.gemini/antigravity-ide/brain/c32b3180-e11a-4927-b58e-445626fc2dc9/scratch/sim_p2"

echo "=== [1/3] Compilando VHDL de Proyecto 2 con GHDL ==="
rm -rf "$WORKDIR"
mkdir -p "$WORKDIR"
cd "$WORKDIR"

# 1. Packages comunes y tipos
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/tipos_constantes_pkg/param_disenyo_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/tipos_constantes_pkg/retardos_otros_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/tipos_constantes_pkg/retardos_RegDes_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/tipos_constantes_pkg/retardos_memorias_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/tipos_constantes_pkg/retardos_controlador_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/tipos_constantes_pkg/acciones_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/tipos_constantes_pkg/param_memorias_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/tipos_constantes_pkg/cache_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/tipos_constantes_pkg/campo_ET_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/tipos_constantes_pkg/campo_EST_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/tipos_constantes_pkg/campo_DAT_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/tipos_constantes_pkg/camino_dat_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P2/tipos_constantes_pkg/controlador_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/tipos_constantes_pkg/interface_cache_bus_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P2/cache_con_interface_bus/cache_con_interface_proc/cache/controlador/CODIGO/procedimientos_controlador_pkg.vhd"

# 2. Packages de componentes
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/cache/camino_de_datos/componentes/campo_datos/componentes_datos_pkg/componentes_datos_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/cache/camino_de_datos/componentes/campo_etiquetas/componentes_etiq_pkg/componentes_etiq_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/cache/camino_de_datos/componentes_camino_pkg/componentes_camino_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/cache/componentes_cache_pkg/componentes_cache_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/interface_proc_cache/componentes_interface_proc_cache_pkg/componentes_interface_proc_cache_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/componentes_cache_con_inter_proc_pkg/componentes_cache_con_inter_proc_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc_pkg/cache_con_interface_proc_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/componentes_cache_interface_pkg/componentes_cache_interface_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/BUS/componentes_interfaces_bus_pkg/componentes_interfaces_bus_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/memoria_con_interface_bus/memoria_principal/componentes_memoria_pkg/componentes_memoria_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/memoria_con_interface_bus/componentes_memoria_interface_pkg/componentes_memoria_interface_pkg.vhd"

# 3. Camino de datos y componentes
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/cache/camino_de_datos/componentes/campo_datos/componentes/m_datos/CODIGO/m_DAT.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/cache/camino_de_datos/componentes/campo_estado/m_estado/CODIGO/m_EST.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/cache/camino_de_datos/componentes/campo_etiquetas/componentes/m_etiquetas/CODIGO/m_ET.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/cache/camino_de_datos/componentes/campo_datos/ensamblado/CODIGO/datos.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/cache/camino_de_datos/componentes/campo_etiquetas/ensamblado/CODIGO/etiquetas.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/cache/camino_de_datos/ensamblado/CODIGO/camino_datos.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/cache/componentes_interface_cache_bus/mux_dat/CODIGO/mux_dat.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P2/cache_con_interface_bus/cache_con_interface_proc/cache/controlador/CODIGO/controlador.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/cache/ensamblado/CODIGO/cache.vhd"

# 4. Interfaces y buses
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/interface_proc_cache/COMPONENTES/registro_pet/CODIGO/registro_pet.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/interface_proc_cache/COMPONENTES/mux_peticion/CODIGO/mux_pet.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/interface_proc_cache/interfaces/CODIGO/interface_proc_cache.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/interface_proc_cache/interfaces/CODIGO/interface_cache_proc.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/cache_con_interface_proc/ensamblado_con_interface_proc/CODIGO/cache_con_inter_proc.vhd"

$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/BUS/componentes/registros/CODIGO/RC_pet.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/BUS/componentes/registros/CODIGO/RC_resp.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/BUS/componentes/registros/CODIGO/RD_pet_info.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/BUS/componentes/registros/CODIGO/RD_resp_info.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/BUS/interfaces/CODIGO/interface_cache_bus_control.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/BUS/interfaces/CODIGO/interface_cache_bus_info.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/BUS/interfaces/CODIGO/interface_mem_bus_control.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/BUS/interfaces/CODIGO/interface_mem_bus_info.vhd"

# 5. Memoria
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/memoria_con_interface_bus/memoria_principal/COMPONENTES/MEMORIA/CODIGO/memoria_mem.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/memoria_con_interface_bus/memoria_principal/COMPONENTES/CONTROLADOR/CODIGO/controlador_memo.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/memoria_con_interface_bus/memoria_principal/ensam_memoria/CODIGO/RC_1.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/memoria_con_interface_bus/memoria_principal/ensam_memoria/CODIGO/ensamblado_memoria.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/memoria_con_interface_bus/ensam_memo_interface/CODIGO/mem_con_interface_bus.vhd"

# 6. Ensamblado
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/cache_con_interface_bus/ensamblado_cache_interfaces/CODIGO/cache_con_interface_bus.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P2/ENSAMBLADO/CODIGO/ensamblado.vhd"

# 7. Utilidades y Testbench
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/UTILIDADES_pkg/impri_CACHE_memoria_pkg/impri_memoria_pkg.vhd"
$GHDL -a --std=08 -Wno-hide --workdir=. "$P1/UTILIDADES_pkg/impri_CACHE_memoria_pkg/impri_cache_pkg.vhd"
$GHDL -a --std=08 -frelaxed -Wno-hide --workdir=. "$P2/UTILIDADES_pkg/imprimir_traza_pkg/impri_traza_pkg.vhd"
$GHDL -a --std=08 -frelaxed -Wno-hide --workdir=. "$P2/ENSAMBLADO/PRUEBAS/procedimientos_peticiones_pkg.vhd"
$GHDL -a --std=08 -frelaxed -Wno-hide --workdir=. "$P2/ENSAMBLADO/PRUEBAS/prueba_ensamblado.vhd"

echo "=== [2/3] Elaborando banco de pruebas ==="
$GHDL -e --std=08 -frelaxed --workdir=. prueba_ensamblado

echo "=== [3/3] Ejecutando simulación ==="
mkdir -p "$P2/ENSAMBLADO/QUARTUS/simulation/modelsim"
rm -f "$P2/ENSAMBLADO/RESULTADOS/resultados_ejecucion.txt" "$P2/ENSAMBLADO/RESULTADOS/productor_consumidor.txt"
cd "$P2/ENSAMBLADO/QUARTUS/simulation/modelsim"
$GHDL -r --std=08 -frelaxed --workdir="$WORKDIR" prueba_ensamblado --stop-time=100us 

echo "Simulación finalizada. Comprobando con RESULTADOS_VALIDOS:"
if diff -w -B "$P2/ENSAMBLADO/RESULTADOS/resultados_ejecucion.txt" "$P2/ENSAMBLADO/RESULTADOS/RESULTADOS_VALIDOS/resultados_ejecucion.txt" >/dev/null; then
    echo " RESULTADOS CORRECTOS: La traza de ejecución coincide al 100% con RESULTADOS_VALIDOS."
else
    echo "❌ Hay diferencias con RESULTADOS_VALIDOS."
    diff -w -B "$P2/ENSAMBLADO/RESULTADOS/resultados_ejecucion.txt" "$P2/ENSAMBLADO/RESULTADOS/RESULTADOS_VALIDOS/resultados_ejecucion.txt" | head -30
fi
