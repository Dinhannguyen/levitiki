local CHECK_INTERVAL = 1 -- giây
local FOLDER = "levi"
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local player = Players.LocalPlayer

-- Đảm bảo game đã load và có player
repeat task.wait() until game:IsLoaded()
repeat task.wait() until player

-- Helper: đọc file JSON an toàn
local function safeReadJson(path)
    local ok, content = pcall(function()
        if readfile then
            return readfile(path)
        end
        return nil
    end)
    if ok and content then
        local success, data = pcall(function() return HttpService:JSONDecode(content) end)
        if success and type(data) == "table" then
            return data
        end
    end
    return {}
end

-- Helper: kiểm tra username có trong danh sách
local function isInList(username, list)
    if type(list) == "table" and type(list.usernames) == "table" then
        for _, v in pairs(list.usernames) do
            if v == username then return true end
        end
    end
    return false
end

-- Đọc danh sách từ main.json và help.json
local mainList = safeReadJson(FOLDER .. "/main.json")
local helpList = safeReadJson(FOLDER .. "/help.json")
local username = player.Name

-- Nếu username có trong mainList hoặc helpList thì không chạy
if isInList(username, mainList) or isInList(username, helpList) then
    warn("Username nằm trong main.json hoặc help.json, script sẽ không chạy.")
    return
end

-- Helper: lấy danh sách item trong inventory
local function getInventoryItems()
    local items = {}
    local success, result = pcall(function()
        local remote = ReplicatedStorage:FindFirstChild("Remotes") and ReplicatedStorage.Remotes:FindFirstChild("CommF_")
        if remote and remote.InvokeServer then
            return remote:InvokeServer("getInventory")
        end
        return nil
    end)
    if success and typeof(result) == "table" then
        for _, item in ipairs(result) do
            if item and item.Name then
                table.insert(items, item.Name)
            end
        end
    end
    return items
end

-- Kiểm tra liên tục
spawn(function()
    while true do
        local items = getInventoryItems()
        for _, name in ipairs(items) do
            if string.lower(name):find("leviathan heart") then
                if writefile then
                    writefile(username .. ".txt", "Completed-tim") -- ✅ đã sửa tên file
                    print("Đã phát hiện Leviathan Heart, ghi file thành công!")
                end
                return
            end
        end
        task.wait(CHECK_INTERVAL)
    end
end)
