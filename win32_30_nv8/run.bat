for %%f in (*.xml) do (
  echo "processing: %%f"
  RageShaderEditor.exe %%f
)
