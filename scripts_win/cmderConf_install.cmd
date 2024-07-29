:: %conemudir% 下的 ConEmu.xml 文件
@echo off

set "conemudir=%conemudir%"

if not exist "%conemudir%" (
    echo 找不到 "%conemudir%" ，请确认cmder是否安装成功。
    exit /b 1
)

rem 非强制
:: copy scripts_win\ConEmu.xml "%conemudir%"
rem 强制覆盖
copy /y scripts_win\ConEmu.xml "%conemudir%"