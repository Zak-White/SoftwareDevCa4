@ECHO OFF
SET DXC="D:\Epic Games\Epic Games\UE_5.4\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "D:\Epic Games\Epic Games\UE_5.4\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2018 -Zpr -O3 -auto-binding-space 0 -Wno-parentheses-equality -disable-lifetime-markers -T vs_6_6 -E Main -Fc LumenCardVertexShader.d3dasm -Fo LumenCardVertexShader.dxil LumenCardVertexShader.usf
:END
PAUSE
