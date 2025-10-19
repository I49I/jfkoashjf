--// Set as Autoload button
local SaveManager = {} -- Asume que ya tienes tu SaveManager cargado en tu script

-- Función para guardar la configuración marcada como autoload
function SaveManager:SaveAutoloadConfig()
    -- Aquí guardamos el archivo de configuración y lo marcamos para autoload
    local folder = "FluentScriptHub/PlayerConfig"
    if not isfolder(folder) then makefolder(folder) end

    local path = folder .. "/autoload.json"
    writefile(path, '{"autoload":true}')
    print("Configuración marcada como autoload")
end

-- Ejemplo de uso con tu GUI (Fluent)
Tabs.Settings:AddButton({
    Title = "Set as Autoload",
    Description = "Mark current config to autoload",
    Callback = function()
        SaveManager:SaveAutoloadConfig()
    end,
})
