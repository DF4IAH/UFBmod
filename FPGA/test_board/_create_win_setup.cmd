@REM # --------------------------------------------------------------------
@REM # --   *****************************
@REM # --   *   Trenz Electronic GmbH   *
@REM # --   *   Holzweg 19A             *
@REM # --   *   32257 Bünde   		      *
@REM # --   *   Germany                 *
@REM # --   *****************************
@REM # --------------------------------------------------------------------
@REM # --$Autor: Hartfiel, John $
@REM # --$Email: j.hartfiel@trenz-electronic.de $
@REM # --$Create Date:2017/01/03 $
@REM # --$Modify Date: 2017/09/07 $
@REM # --$Version: 1.5 $
@REM # --------------------------------------------------------------------
@REM # --------------------------------------------------------------------
@REM set local environment
setlocal
@echo ------------------------Set design paths----------------------------
@REM get paths
@set batchfile_name=%~n0
@set batchfile_drive=%~d0
@set batchfile_path=%~dp0
@REM change drive
@%batchfile_drive%
@REM change path to batchfile folder
@cd %batchfile_path%
@echo -- Run Design with: %batchfile_name%
@echo -- Use Design Path: %batchfile_path%
@set cmd_folder=%batchfile_path%console\base_cmd\

@REM ------------------------------------------------------------------------------
:NEXT_TE_BASE
@echo --------------------------------------------------------------------
@echo -------------------------TE Reference Design---------------------------
@echo --------------------------------------------------------------------
@echo -- (c)  Go to CMD-File Generation (Manual setup)
@echo -- (d)  Go to Documentation (Web Documentation)
@echo -- (x)  Exit Batch (nothing is done!)
@echo -- (0)  Module selection guide, project creation...   
@echo -- (1)  Create minimum setup of CMD-Files and exit Batch   
@echo -- (2)  Create maximum setup of CMD-Files and exit Batch    
@echo ----
@set /p new_base=" Select (ex.:'0' for module selection guide):"
@if "%new_base%"=="d" (@GOTO NEXT_TE_DOC)
@if "%new_base%"=="c" (@GOTO NEXT_TE_CMD)
@if "%new_base%"=="x" (@GOTO EOF)
@if "%new_base%"=="0" (
@set new_cmd=config
@GOTO CONFIG_SETUP
)
@if "%new_base%"=="1" (
@set new_cmd=min
@GOTO MIN_SETUP
)
@if "%new_base%"=="2" (
@set new_cmd=max
@GOTO MAX_SETUP
)

@GOTO NEXT_TE_BASE
@echo --------------------------------------------------------------------
@REM ------------------------------------------------------------------------------
:NEXT_TE_DOC
@echo --------------------------------------------------------------------
@echo -------------------------TE Documentation---------------------------
@echo --------------------------------------------------------------------
@echo -- (b)  Go to Base Menue
@echo -- (x)  Exit Batch(nothing is done!)
@echo -- (0)  Trenz Electronic Wiki
@echo -- (1)  Trenz Electronic Wiki: Vivado/SDK/SDSoC
@echo -- (1a) Trenz Electronic Wiki: Vivado/SDK/SDSoC-Board Part Flow
@echo -- (2)  Trenz Electronic Wiki: Project Delivery
@echo -- (2a) Trenz Electronic Wiki: Project Delivery-Quick Start
@echo -- (2b) Trenz Electronic Wiki: Project Delivery-CMD Description
@echo -- (2c) Trenz Electronic Wiki: Select correct TE Board part file
@echo -- (3)  Trenz Electronic Wiki: PetaLinux KickStart
@echo -- (4)  Trenz Electronic Downloads
@echo ----
@set /p new_doc=" Select Document (ex.:'0' for Wiki ,'b' go to Base Menue):"
@if "%new_doc%"=="b" (@GOTO NEXT_TE_BASE)
@if "%new_doc%"=="x" (@GOTO EOF)
@if "%new_doc%"=="0" (@start https://wiki.trenz-electronic.de/display/PD/Trenz+Electronic+Documentation)
@if "%new_doc%"=="1" (@start https://wiki.trenz-electronic.de/pages/viewpage.action?pageId=14746264)
@if "%new_doc%"=="1a" (@start https://wiki.trenz-electronic.de/display/PD/Vivado+Board+Part+Flow)
@if "%new_doc%"=="2" (@start https://wiki.trenz-electronic.de/display/PD/Project+Delivery)
@if "%new_doc%"=="2a" (@start https://wiki.trenz-electronic.de/display/PD/Project+Delivery#ProjectDelivery-QuickStart)
@if "%new_doc%"=="2b" (@start https://wiki.trenz-electronic.de/display/PD/Project+Delivery#ProjectDelivery-WindowsCommandFiles)
@if "%new_doc%"=="2c" (@start https://wiki.trenz-electronic.de/display/PD/TE+Board+Part+Files)
@if "%new_doc%"=="3" (@start https://wiki.trenz-electronic.de/display/PD/PetaLinux+KICKstart)
@if "%new_doc%"=="4" (@start https://shop.trenz-electronic.de/en/Download/?path=Trenz_Electronic)
@GOTO NEXT_TE_DOC
@echo --------------------------------------------------------------------
@REM ------------------------------------------------------------------------------
:NEXT_TE_CMD
@if not exist %cmd_folder% (@GOTO ERROR)   
@echo --------------------------------------------------------------------
@echo --------------------------Create CMD Files--------------------------
@echo --------------------------------------------------------------------
@echo -- Available CMD Files:
@echo -- (b)  Go to Base Menue
@echo -- (x)  Exit CMD Generation
@REM @echo -- ( )  design_basic_settings.cmd (generated always, if not exist)
@echo -- (min)Generate minimum CMD setup (recommended)
@echo -- (max)Generate maximum CMD setup
@echo -- (1)  design_clear_design_folders.cmd
@echo -- (2)  design_run_project_batchmode.cmd
@echo -- (3)  development_design_run_prebuilt_all_batchmode.cmd (not available)
@echo -- (4)  development_design_run_prebuilt_all_sdsoc_batchmode.cmd (not available)
@echo -- (5)  development_hsi_console.cmd                       (not available)
@echo -- (6)  development_utilities_backup.cmd                  (not available)
@echo -- (7)  development_utilities_backup_noprebuilt.cmd       (not available)
@echo -- (8)  labtools_open_project_guimode.cmd
@echo -- (9)  program_flash_binfile.cmd
@echo -- (10)  program_flash_mcsfile.cmd
@echo -- (11) program_fpga_bitfile.cmd
@echo -- (12) sdk_create_prebuilt_project_guimode.cmd
@echo -- (13) vivado_create_project_batchmode.cmd
@echo -- (14) vivado_create_project_guimode.cmd
@echo -- (15) vivado_open_existing_project_guimode.cmd
@echo ----
@set /p new_cmd=" Select CMD Files (ex.:'min' for minimum setup, 'x' for exit):"
@if "%new_cmd%"=="b" (@GOTO NEXT_TE_BASE)
@if "%new_cmd%"=="x" (@GOTO LAST_DESCR)

:MIN_SETUP
@if "%new_cmd%"=="min" ( 
  @if exist %cmd_folder%vivado_create_project_guimode.cmd ( @copy %cmd_folder%vivado_create_project_guimode.cmd %batchfile_path%vivado_create_project_guimode.cmd)
  @if exist %cmd_folder%vivado_open_existing_project_guimode.cmd ( @copy %cmd_folder%vivado_open_existing_project_guimode.cmd %batchfile_path%vivado_open_existing_project_guimode.cmd)
  @GOTO LAST_DESCR
)
:MAX_SETUP
@if "%new_cmd%"=="max" ( 
  @if exist %cmd_folder%design_clear_design_folders.cmd ( @copy %cmd_folder%design_clear_design_folders.cmd %batchfile_path%design_clear_design_folders.cmd)
  @if exist %cmd_folder%design_run_project_batchmode.cmd ( @copy %cmd_folder%design_run_project_batchmode.cmd %batchfile_path%design_run_project_batchmode.cmd)
  @if exist %cmd_folder%development_design_run_prebuilt_all_batchmode.cmd ( @copy %cmd_folder%development_design_run_prebuilt_all_batchmode.cmd %batchfile_path%development_design_run_prebuilt_all_batchmode.cmd)
  @if exist %cmd_folder%development_design_run_prebuilt_all_batchmode.cmd ( @copy %cmd_folder%development_design_run_prebuilt_all_sdsoc_batchmode.cmd %batchfile_path%development_design_run_prebuilt_all_sdsoc_batchmode.cmd)
  @if exist %cmd_folder%development_hsi_console.cmd ( @copy %cmd_folder%development_hsi_console.cmd %batchfile_path%development_hsi_console.cmd)
  @if exist %cmd_folder%development_utilities_backup.cmd ( @copy %cmd_folder%development_utilities_backup.cmd %batchfile_path%development_utilities_backup.cmd)
  @if exist %cmd_folder%development_utilities_backup_noprebuilt.cmd ( @copy %cmd_folder%development_utilities_backup_noprebuilt.cmd %batchfile_path%development_utilities_backup_noprebuilt.cmd)
  @if exist %cmd_folder%labtools_open_project_guimode.cmd ( @copy %cmd_folder%labtools_open_project_guimode.cmd %batchfile_path%labtools_open_project_guimode.cmd)
  @if exist %cmd_folder%program_flash_binfile.cmd ( @copy %cmd_folder%program_flash_binfile.cmd %batchfile_path%program_flash_binfile.cmd)
  @if exist %cmd_folder%program_flash_mcsfile.cmd ( @copy %cmd_folder%program_flash_mcsfile.cmd %batchfile_path%program_flash_mcsfile.cmd)
  @if exist %cmd_folder%program_fpga_bitfile.cmd ( @copy %cmd_folder%program_fpga_bitfile.cmd %batchfile_path%program_fpga_bitfile.cmd)
  @if exist %cmd_folder%sdk_create_prebuilt_project_guimode.cmd ( @copy %cmd_folder%sdk_create_prebuilt_project_guimode.cmd %batchfile_path%sdk_create_prebuilt_project_guimode.cmd)
  @if exist %cmd_folder%vivado_create_project_batchmode.cmd ( @copy %cmd_folder%vivado_create_project_batchmode.cmd %batchfile_path%vivado_create_project_batchmode.cmd)
  @if exist %cmd_folder%vivado_create_project_guimode.cmd ( @copy %cmd_folder%vivado_create_project_guimode.cmd %batchfile_path%vivado_create_project_guimode.cmd)
  @if exist %cmd_folder%vivado_open_existing_project_guimode.cmd ( @copy %cmd_folder%vivado_open_existing_project_guimode.cmd %batchfile_path%vivado_open_existing_project_guimode.cmd)
  @GOTO LAST_DESCR
)
@if "%new_cmd%"=="1" ( 
  @if exist %cmd_folder%design_clear_design_folders.cmd ( @copy %cmd_folder%design_clear_design_folders.cmd %batchfile_path%design_clear_design_folders.cmd)
)
@if "%new_cmd%"=="2" ( 
  @if exist %cmd_folder%design_run_project_batchmode.cmd ( @copy %cmd_folder%design_run_project_batchmode.cmd %batchfile_path%design_run_project_batchmode.cmd)
)
@if "%new_cmd%"=="3" ( 
  @if exist %cmd_folder%development_design_run_prebuilt_all_batchmode.cmd ( @copy %cmd_folder%development_design_run_prebuilt_all_batchmode.cmd %batchfile_path%development_design_run_prebuilt_all_batchmode.cmd)
)
@if "%new_cmd%"=="4" ( 
  @if exist %cmd_folder%development_design_run_prebuilt_all_sdsoc_batchmode.cmd ( @copy %cmd_folder%development_design_run_prebuilt_all_sdsoc_batchmode.cmd %batchfile_path%development_design_run_prebuilt_all_sdsoc_batchmode.cmd)
)
@if "%new_cmd%"=="5" ( 
  @if exist %cmd_folder%development_hsi_console.cmd ( @copy %cmd_folder%development_hsi_console.cmd %batchfile_path%development_hsi_console.cmd)
)
@if "%new_cmd%"=="6" ( 
  @if exist %cmd_folder%development_utilities_backup.cmd ( @copy %cmd_folder%development_utilities_backup.cmd %batchfile_path%development_utilities_backup.cmd)
)
@if "%new_cmd%"=="7" ( 
  @if exist %cmd_folder%development_utilities_backup_noprebuilt.cmd ( @copy %cmd_folder%development_utilities_backup_noprebuilt.cmd %batchfile_path%development_utilities_backup_noprebuilt.cmd)
)
@if "%new_cmd%"=="8" ( 
  @if exist %cmd_folder%labtools_open_project_guimode.cmd ( @copy %cmd_folder%labtools_open_project_guimode.cmd %batchfile_path%labtools_open_project_guimode.cmd)
)
@if "%new_cmd%"=="9" ( 
  @if exist %cmd_folder%program_flash_binfile.cmd ( @copy %cmd_folder%program_flash_binfile.cmd %batchfile_path%program_flash_binfile.cmd)
)
@if "%new_cmd%"=="10" ( 
  @if exist %cmd_folder%program_flash_mcsfile.cmd ( @copy %cmd_folder%program_flash_mcsfile.cmd %batchfile_path%program_flash_mcsfile.cmd)
)
@if "%new_cmd%"=="11" ( 
  @if exist %cmd_folder%program_fpga_bitfile.cmd ( @copy %cmd_folder%program_fpga_bitfile.cmd %batchfile_path%program_fpga_bitfile.cmd)
)
@if "%new_cmd%"=="12" ( 
  @if exist %cmd_folder%sdk_create_prebuilt_project_guimode.cmd ( @copy %cmd_folder%sdk_create_prebuilt_project_guimode.cmd %batchfile_path%sdk_create_prebuilt_project_guimode.cmd)
)
@if "%new_cmd%"=="13" ( 
  @if exist %cmd_folder%vivado_create_project_batchmode.cmd ( @copy %cmd_folder%vivado_create_project_batchmode.cmd %batchfile_path%vivado_create_project_batchmode.cmd)
)
@if "%new_cmd%"=="14" ( 
  @if exist %cmd_folder%vivado_create_project_guimode.cmd ( @copy %cmd_folder%vivado_create_project_guimode.cmd %batchfile_path%vivado_create_project_guimode.cmd)
)
@if "%new_cmd%"=="15" ( 
  @if exist %cmd_folder%vivado_open_existing_project_guimode.cmd ( @copy %cmd_folder%vivado_open_existing_project_guimode.cmd %batchfile_path%vivado_open_existing_project_guimode.cmd)
)

@GOTO NEXT_TE_CMD

:CONFIG_SETUP


@if not exist %batchfile_path%design_basic_settings.cmd ( @copy %cmd_folder%design_basic_settings.cmd %batchfile_path%design_basic_settings.cmd)
@if not exist %batchfile_path%_use_virtual_drive.cmd    ( @copy %cmd_folder%_use_virtual_drive.cmd %batchfile_path%_use_virtual_drive.cmd)

@REM # load environment and check vivado version
@call  %cmd_folder%design_basic_settings.cmd
@set DEF_VIVADO_VERSION=%VIVADO_VERSION%

@call design_basic_settings.cmd
@if  "%DEF_VIVADO_VERSION%" NEQ "%VIVADO_VERSION%" (
@echo -----------------------------------------
@echo Attantion:
@echo  - Design was created for Vivado %DEF_VIVADO_VERSION%, selected is Vivado %VIVADO_VERSION%
@echo  - Design only tested with Vivado %DEF_VIVADO_VERSION%, modifications needed for other versions
@echo .
@echo ... Continue with %VIVADO_VERSION% ...
)
@if not defined XILDIR (
  @set XILDIR=c:/xilinx
)
@echo -----------------------------------------
@echo Which tools should be started:
@echo Vivado %VIVADO_VERSION% or SDSoC %VIVADO_VERSION% ?
@set /p new_cmd=" Press '0' for Vivado or '1' for SDSoC: "
@if "%new_cmd%"=="1" (@set ENABLE_SDSOC=1)
@if "%new_cmd%"=="0" (@set ENABLE_SDSOC=0) 
@if not defined ENABLE_SDSOC (
  @set ENABLE_SDSOC=0
)
@if %ENABLE_SDSOC%==0 (@echo "Vivado installation is used")
@if %ENABLE_SDSOC%==1 (@echo "SDSoC installation is used")

@echo -----------------------------------------
@REM # check Xilinx path
:XILINX_PATH
@if exist %XILDIR% (
  @echo Use Xilinx installation from '%XILDIR%'
  @GOTO START_CONFIG
)
@if not exist %XILDIR% (
  @echo '%XILDIR%' did not exists.
  @GOTO SPECIFY_XILINX_DIR
)
:START_CONFIG
@REM # -----------------
@REM # --- copy bash files
@if exist %cmd_folder%vivado_create_project_guimode.cmd ( @copy %cmd_folder%vivado_create_project_guimode.cmd %batchfile_path%vivado_create_project_guimode.cmd)
@if exist %cmd_folder%vivado_open_existing_project_guimode.cmd ( @copy %cmd_folder%vivado_open_existing_project_guimode.cmd %batchfile_path%vivado_open_existing_project_guimode.cmd)

@REM # -----------------
@REM # --- set environment
@echo ------------------Set Xilinx environment variables------------------
@set VIVADO_XSETTINGS=%XILDIR%\Vivado\%VIVADO_VERSION%\.settings64-Vivado.bat
@set SDK_XSETTINGS=%XILDIR%\SDK\%VIVADO_VERSION%\.settings64-SDK_Core_Tools.bat
@set LABTOOL_XSETTINGS=%XILDIR%\Vivado_Lab\%VIVADO_VERSION%\settings64.bat
@if not defined ENABLE_SDSOC (
  @set ENABLE_SDSOC=0
)
@if %ENABLE_SDSOC%==1 (
  @echo --Info: SDSOC use Vivado and SDK from SDx installation --
  @set SDSOC_XSETTINGS=%XILDIR%\SDx\%VIVADO_VERSION%\settings64.bat
  @set VIVADO_XSETTINGS=%XILDIR%\Vivado\%VIVADO_VERSION%\settings64.bat
  @set SDK_XSETTINGS=%XILDIR%\SDK\%VIVADO_VERSION%\settings64.bat
)

@REM # --------------------
@if not defined VIVADO_AVAILABLE (
  @set VIVADO_AVAILABLE=0
)
@if not defined SDK_AVAILABLE (
  @set SDK_AVAILABLE=0
)
@if not defined LABTOOL_AVAILABLE (
  @set LABTOOL_AVAILABLE=0
)
@if not defined SDSOC_AVAILABLE (
  @set SDSOC_AVAILABLE=0
)

@REM # --------------------
@echo -- Use Xilinx Version: %VIVADO_VERSION% --
@echo -----------------------------------------
@if not defined VIVADO_XSETTINGS_ISDONE ( @echo -- Info: Configure Xilinx Vivado Settings --
  @if not exist %VIVADO_XSETTINGS% ( @echo --     Critical Warning: %VIVADO_XSETTINGS% not found --
  ) else (
    @call %VIVADO_XSETTINGS%
    @set VIVADO_AVAILABLE=1
  )
  @set VIVADO_XSETTINGS_ISDONE=1
)
@if not defined SDK_XSETTINGS_ISDONE ( @echo -- Info: Configure Xilinx SDK Settings --
  @if not exist %SDK_XSETTINGS% ( @echo --     Critical Warning: %SDK_XSETTINGS% not found --
  ) else (
    @call %SDK_XSETTINGS%
    @set SDK_AVAILABLE=1
  )
  @set SDK_XSETTINGS_ISDONE=1
)
@if  %VIVADO_AVAILABLE%==0 (
  @if not defined LABTOOL_XSETTINGS_ISDONE ( @echo -- Info: Configure Xilinx LabTools Settings --
    @if not exist %LABTOOL_XSETTINGS% ( @echo --     Warning : %LABTOOL_XSETTINGS% not found --
    ) else (
      @call %LABTOOL_XSETTINGS%
      @set LABTOOL_AVAILABLE=1
    )
    @set LABTOOL_XSETTINGS_ISDONE=1
  )
)
@if  %ENABLE_SDSOC%==1 (
  @if not defined SDSOC_XSETTINGS_ISDONE  ( @echo -- Info: Configure Xilinx SDSoC Settings --
    @if not exist %SDSOC_XSETTINGS% ( @echo --     Critical Warning : %SDSOC_XSETTINGS% not found --
    ) else (
      @call %SDSOC_XSETTINGS%
      @set SDSOC_AVAILABLE=1
    )
    @set SDSOC_XSETTINGS_ISDONE=1
  )
)

@REM # -----------------
@REM # --- delete request if old project exits
@echo ----------------------check old project exists--------------------------
@set vivado_p_folder=%batchfile_path%vivado

@if exist %vivado_p_folder% ( @echo Old vivado project was found: Create project will delete older project!
  @goto  before_uinput
)  
@goto  after_uinput
:before_uinput
@set /p creatProject="Are you sure to continue? (y/N):"
@echo User Input: "%creatProject%"
@if not "%creatProject%"=="y" (GOTO EOF)
:after_uinput
@echo Start create project..."
@echo ----------------------Change to log folder--------------------------
@REM vlog folder
@set vlog_folder=%batchfile_path%v_log
@echo %vlog_folder%
@if not exist %vlog_folder% ( @mkdir %vlog_folder% )   
@cd %vlog_folder%
@echo --------------------------------------------------------------------
@echo -------------------------Start VIVADO scripts -----------------------
start /max  vivado -source ../scripts/script_main.tcl  -mode batch -notrace -tclargs --run_board_selection
@echo -------------------------scripts finished----------------------------
@echo --------------------------------------------------------------------
@echo --------------------Change to design folder-------------------------
@cd..
@echo ------------------------Design finished-----------------------------


@GOTO LAST_DESCR

:SPECIFY_XILINX_DIR
@set /p new_cmd=" Please specifiy you Xilinx installation folder: "
@set XILDIR=%new_cmd%
@GOTO XILINX_PATH


@REM ------------------------------------------------------------------------------
:LAST_DESCR
@if not exist %batchfile_path%design_basic_settings.cmd ( @copy %cmd_folder%design_basic_settings.cmd %batchfile_path%design_basic_settings.cmd)
@if not exist %batchfile_path%_use_virtual_drive.cmd    ( @copy %cmd_folder%_use_virtual_drive.cmd %batchfile_path%_use_virtual_drive.cmd)
@echo ---------------------------Minimal Setup----------------------------
@echo --- 0. (optional) use "_use_viartual_drive.cm" , see Xilinx "AR# 52787"
@echo ---    Note:Use to reduce path length
@echo --- 1. Open "design_basic_settings.cmd" with text editor
@echo ---    Note: "Module selection guide" modifies this file automatically
@echo --- 1.1  Set Xilinx Installation path, default:  @set XILDIR=C:/Xilinx
@echo --- 1.2  Set the Board Part you bought, example: @set PARTNUMBER=2
@echo ---       For available names see: ./board_files/TExxxx_board_files.csv
@echo --- 1.3 Save "design_basic_settings.cmd"
@echo --- Create and open Vivado Project with batch files:
@echo --- 2. To create vivado project, execute: ./vivado_create_project_guimode.cmd
@echo --- Open existing Vivado Project with batch files:
@echo --- 3. To open existing vivado project, execute: ./vivado_open_existing_project_guimode.cmd
@echo --- Use Trenz Electronic Wiki for more information:
@echo ---   https://wiki.trenz-electronic.de/display/PD/Project+Delivery
@echo --------------------------------------------------------------------
@GOTO EOF
@REM ------------------------------------------------------------------------------
:ERROR
@echo ---------------------------Error occurs-----------------------------
@echo --------------------------------------------------------------------
@PAUSE
@REM ------------------------------------------------------------------------------

:EOF
@echo ------------------------------Finished------------------------------
@echo --------------------------------------------------------------------
@PAUSE