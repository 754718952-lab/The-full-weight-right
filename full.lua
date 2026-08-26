-- [雪天缤纷Pro] 自由使用版: 无访问限制, 所有人可进入 (楚新钓)
-- [Bypass] Pre-set verification flag (SecretKey=2107)
getgenv()["2107"] = true
_G["2107"] = true

--[[
    ================================================================
    [ SCRIPT INFORMATION ]
    Project: Custom Script
    Author: OYB
    YouTube: https://www.youtube.com/channel/UCAlXXV1Hbvf7WbfXARuVtiQ
    
    [ TERMS AND CONDITIONS ]
    - You ARE allowed to use and modify this script for your own games.
    - You ARE NOT allowed to re-upload, redistribute, or claim 
      ownership of this script.
    - Removing or altering these credits is strictly prohibited.
    
    Copyright (c) 2026 OYB. All rights reserved.
    ================================================================
]]

-- ⚠️ IMPORTANT: Put this code at the VERY TOP of your Main Script (before obfuscating) ⚠️

local ProtectionConfig = {
    -- 🔴 CRITICAL: This MUST exactly match the 'Secret' value in your Key System's Config!
    -- If your Key System has: Secret = "Test"
    -- Then this must also be: SecretKey = "Test"
    SecretKey = "2107",
    
    -- The name of your Hub (shown in the kick message if they try to bypass)
    HubName = "雪天缤纷ProMax"
}

-- [雪天缤纷Pro] 访问限制已移除: 任何人可直接使用

-------------------------------------------------------------------------------
-- 👇 YOUR MAIN SCRIPT CODE STARTS HERE 👇
-------------------------------------------------------------------------------
-- ========================================================================
-- NNVN Hub v3 | Heavyweight Fishing | By N0NAMEVN
-- ========================================================================

if _G.SCRIPT_LOADED then return end
_G.SCRIPT_LOADED = true

local SCRIPT_URL = "https://raw.githubusercontent.com/n0namevnnek-web/Heavyweight-Fishing/refs/heads/main/Key.lua"

-- ====================================================
-- Global flags
-- ====================================================
getgenv().NNVN_Loaded             = false
getgenv().NNVN_AutoTicket         = false
getgenv().NNVN_TicketDifficulty   = "Easy"
getgenv().NNVN_AutoBuyBait        = false
getgenv().NNVN_SelectedBait       = "Basic Bait"
getgenv().NNVN_AutoBuyBaitDelay   = 3
getgenv().NNVN_BaitQuantity       = 10
getgenv().NNVN_AutoPhase2         = false
getgenv().NNVN_AutoTurnIn         = false
getgenv().NNVN_AutoGodSpirit      = false
getgenv()._uiHideCount            = getgenv()._uiHideCount or 0
getgenv().NNVN_AutoHopGod         = false
getgenv().NNVN_AutoHopMaoshan     = false
getgenv().NNVN_AutoHopTaoist      = false
getgenv().NNVN_NoClip             = false
getgenv().NNVN_NoFog              = false
getgenv().NNVN_AutoExecuteScript  = true
getgenv()._keyLoaded              = false
getgenv().NNVN_AutoClaimDaily     = false
getgenv().NNVN_ClaimDailyDelay    = 1
getgenv().NNVN_AutoUseBait        = false
getgenv().NNVN_AutoAcceptQuest    = false
getgenv().NNVN_AutoFavoriteFish   = false
getgenv().NNVN_SelectedFavoriteFish = nil
getgenv().NNVN_FavoriteFishLoopId = 0
getgenv().NNVN_AutoBossFishing    = false
getgenv().NNVN_BossFishingSkipAt  = 0
getgenv().NNVN_BossFarmState = getgenv().NNVN_BossFarmState or {
    CurrentTarget   = nil,
    CurrentType     = nil,
    CurrentToken    = nil,
    CurrentRunId    = 0,
    HasHooked       = false,
    PendingCancel   = false,
    LastCast        = 0,
    LastCancel      = 0,
    LastFastCancel  = 0,
    LastProgress    = 0,
    LastNotify      = "",
}
getgenv().NNVN_WhiteScreen        = false
getgenv().NNVN_DarkScreen         = false
getgenv().NNVN_Anchor             = false
getgenv().NNVN_AutoCast           = false
getgenv().NNVN_AutoSell           = false
getgenv().NNVN_SellDelay          = 5
getgenv().NNVN_AutoSkill          = false
getgenv().NNVN_Skills             = { Z = true, X = true, C = true, V = true }
getgenv().NNVN_AntiAFK            = false
getgenv().NNVN_AutoRejoin         = false
getgenv().NNVN_Notify             = true
getgenv().NNVN_Watermark          = true
getgenv().NNVN_WalkSpeed          = 16
getgenv().NNVN_AutoBoss           = false
getgenv().NNVN_BossDifficulty     = "Normal"
getgenv().NNVN_AutoFarmSecretBoss = false
getgenv().NNVN_AutoEquipBestBait  = false
getgenv().NNVN_AutoEquipRod       = false
getgenv().NNVN_AutoEquipBestOrb   = false
getgenv().NNVN_AutoBuyBaitThreshold = 5
getgenv().NNVN_AutoCraftBait      = false
getgenv().NNVN_CraftBaitName      = "Rainbow Bait"
getgenv().NNVN_CraftBaitQuantity  = 1
getgenv().NNVN_AutoGacha          = false
getgenv().NNVN_GachaBanner        = "Egoless Banner"
getgenv().NNVN_GachaAmount        = 1
getgenv().NNVN_AutoRebirth        = false
getgenv().NNVN_RebirthOptions     = { "Cash", "Level" }
getgenv().NNVN_MaterialFarming    = false
getgenv().NNVN_MaterialBait       = "Rainbow Bait"
getgenv().NNVN_AutoNamelessMinigame = false
getgenv().NNVN_ReturnAfterQuestTP  = true
getgenv().NNVN_FlyMode            = false
getgenv().NNVN_FlySpeed           = 50
getgenv().NNVN_InfiniteJump       = false
getgenv().NNVN_WalkOnWater        = false
getgenv().NNVN_FullBright         = false
getgenv().NNVN_PerformanceMod     = false
getgenv().NNVN_TraitReroll        = false
getgenv().NNVN_RerollSkill        = nil
getgenv().NNVN_RerollTargetTrait  = nil
getgenv().NNVN_RerollIgnoreLocked = false
getgenv().NNVN_JobIdInput         = ""

-- ====================================================
-- 1. WindUI
-- ====================================================
local WindUI
pcall(function()
    WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()
end)
if not WindUI then warn("[雪天缤纷ProMax] WindUI 加载失败") return end

-- Small Fluent-compat layer so the original hub logic can use WindUI cleanly.
local Fluent = WindUI
local createdTabs = {}
local NNVNControls = {}

local function registerControl(flag, control)
    if type(flag) == "string" and flag ~= "" and control then
        NNVNControls[flag] = control
    end
    return control
end

local function normalizeDesc(config)
    if config and config.Content ~= nil and config.Desc == nil then
        config.Desc = config.Content
    end
    return config
end

local function attachSetValue(control)
    if control and not control.SetValue then
        function control:SetValue(value)
            self.Value = value
            if self.Set then
                return self:Set(value)
            end
            if self.Select then
                return self:Select(value)
            end
        end
    end
    return control
end

local function normalizeMultiDropdownValue(value)
    if type(value) ~= "table" then return value end
    local normalized = {}
    local hasStringKeys = false

    for key, selected in pairs(value) do
        if type(key) == "string" then
            hasStringKeys = true
            if selected then table.insert(normalized, key) end
        end
    end

    if hasStringKeys then return normalized end
    return value
end

local function toFluentMultiMap(value)
    local mapped = {}
    if type(value) ~= "table" then return mapped end

    for key, selected in pairs(value) do
        if type(key) == "string" then
            mapped[key] = selected and true or false
        else
            local name = typeof(selected) == "table" and selected.Title or selected
            if name then mapped[name] = true end
        end
    end

    return mapped
end

local function patchContainer(container)
    if not container or container.__NNVN_WindCompat then return container end
    container.__NNVN_WindCompat = true

    if not container.AddSection and container.Section then
        function container:AddSection(title)
            local section = self:Section({ Title = title, Opened = true, TextSize = 16, DescTextSize = 13 })
            return patchContainer(section)
        end
    end

    if not container.AddToggle and container.Toggle then
        function container:AddToggle(flag, config)
            config = config or {}
            config.Flag = config.Flag or flag
            if config.Default ~= nil and config.Value == nil then config.Value = config.Default end
            return registerControl(flag, attachSetValue(self:Toggle(config)))
        end
    end

    if not container.AddDropdown and container.Dropdown then
        function container:AddDropdown(flag, config)
            config = config or {}
            config.Flag = config.Flag or flag
            if config.Default ~= nil and config.Value == nil then config.Value = config.Default end
            if config.Multi then
                config.Multi = true
                config.Value = normalizeMultiDropdownValue(config.Value)
                local userCallback = config.Callback
                if userCallback then
                    config.Callback = function(value)
                        return userCallback(toFluentMultiMap(value))
                    end
                end
            end
            local dropdown = attachSetValue(self:Dropdown(config))
            if dropdown and not dropdown.SetValue then
                function dropdown:SetValue(value)
                    local nextValue = self.Multi and normalizeMultiDropdownValue(value) or value
                    self.Value = nextValue
                    if self.Select then self:Select(nextValue) end
                    if self.Callback then pcall(self.Callback, nextValue) end
                end
            end
            return registerControl(flag, dropdown)
        end
    end

    if not container.AddSlider and container.Slider then
        function container:AddSlider(flag, config)
            config = config or {}
            config.Flag = config.Flag or flag
            if config.Min ~= nil or config.Max ~= nil or config.Default ~= nil then
                config.Value = config.Value or {
                    Min = config.Min or 0,
                    Max = config.Max or 100,
                    Default = config.Default or config.Min or 0,
                }
            end
            return registerControl(flag, attachSetValue(self:Slider(config)))
        end
    end

    if not container.AddInput and container.Input then
        function container:AddInput(flag, config)
            config = config or {}
            config.Flag = config.Flag or flag
            if config.Default ~= nil and config.Value == nil then config.Value = config.Default end
            return registerControl(flag, attachSetValue(self:Input(config)))
        end
    end

    if not container.AddButton and container.Button then
        function container:AddButton(config)
            return self:Button(config or {})
        end
    end

    if not container.AddParagraph and container.Paragraph then
        function container:AddParagraph(config)
            local paragraph = self:Paragraph(normalizeDesc(config or {}))
            if paragraph and not paragraph.SetDesc then
                function paragraph:SetDesc(value)
                    self.Desc = value
                    if self.ParagraphFrame and self.ParagraphFrame.SetDesc then
                        return self.ParagraphFrame:SetDesc(value)
                    end
                end
            end
            if paragraph and not paragraph.SetTitle then
                function paragraph:SetTitle(value)
                    self.Title = value
                    if self.ParagraphFrame and self.ParagraphFrame.SetTitle then
                        return self.ParagraphFrame:SetTitle(value)
                    end
                end
            end
            return paragraph
        end
    end

    return container
end
-- ====================================================
-- 2. Services
-- ====================================================
local Players               = game:GetService("Players")
local ReplicatedStorage     = game:GetService("ReplicatedStorage")
local RunService            = game:GetService("RunService")
local VirtualInput          = game:GetService("VirtualInputManager")
local TeleportService       = game:GetService("TeleportService")
local Lighting              = game:GetService("Lighting")
local CoreGui               = game:GetService("CoreGui")
local Workspace             = game:GetService("Workspace")
local HttpService           = game:GetService("HttpService")
local ProximityPromptService = game:GetService("ProximityPromptService")
local UserInputService      = game:GetService("UserInputService")
local VirtualUser           = game:GetService("VirtualUser")
local TweenService          = game:GetService("TweenService")
local Camera                = Workspace.CurrentCamera

local LocalPlayer  = Players.LocalPlayer
local MainGui      = LocalPlayer.PlayerGui:WaitForChild("MainGui")
local PlaceId      = game.PlaceId

-- ====================================================
-- 3. Locale
-- ====================================================
local T = {
    win_title   = "◆ NNVN Hub",
    win_sub     = "作者 雪天缤纷Pro | 楚新钓 v3",
    tab_fishing = "🎣 主页 --雪天缤纷",
    tab_boss    = "⚔️ 巨物战 --雪天缤纷",
    tab_quest   = "📋 任务 --雪天缤纷",
    tab_banner  = "🎰 卡池 --雪天缤纷",
    tab_upgrade = "⬆️ 升级 --雪天缤纷",
    tab_materials = "制作鱼饵 --雪天缤纷",
    tab_sell    = "💰 自动出售 --雪天缤纷",
    tab_tp      = "🌐 传送 --雪天缤纷",
    tab_buyrod  = "🛒 购买鱼竿 --雪天缤纷",
    tab_learn   = "📚 学习钓法 --雪天缤纷",
    tab_bait    = "🎣 鱼饵 --雪天缤纷",
    tab_extra   = "✨ 更多 --雪天缤纷",
    tab_hop     = "🔄 换服 --雪天缤纷",
    tab_esp     = "👁️ 透视 --雪天缤纷",
    tab_info    = "ℹ️ 信息 --雪天缤纷",
    tab_settings = "⚙️ 设置 --雪天缤纷",
    auto_phase2 = "▶ Auto Phase 2",
    loaded      = "已加载！雪天缤纷Pro"
}

-- ====================================================
-- 4. Fixed positions + basic helpers (early declare)
-- ====================================================
local fixedPositions = {
    ["Phi Thien 1"] = CFrame.new(-1339.64441, 9.16392136, -1474.99878, 0,0,-1,0,1,0,1,0,0),
    ["Phi Thien 2"] = CFrame.new(-262.254364, 9.76392174, 98.6261902, -1,0,0,0,1,0,0,0,-1),
    ["Phi Thien 3"] = CFrame.new(1471.94446, 9.17344284, -1453.31006, 1,0,0,0,1,0,0,0,1),
    ["Phi Thien 4"] = CFrame.new(-1266.40442, 9.16392136, -11.1238098, 1,0,0,0,1,0,0,0,1),
    ["Phi Thien 5"] = CFrame.new(-56.2965813, 9.26392174, -1303.23645, 0,0,1,0,1,-0,-1,0,0),
    ["Phi Thien 6"] = CFrame.new(1221.60815, 9.15180397, 1408.77698, -1,0,0,0,1,0,0,0,-1),
    ["Phi Thien 7"] = CFrame.new(50.6459999, 9.16400051, 1135.42603, 0,0,-1,0,1,0,1,0,0),
    ["Phi Thien 8"] = CFrame.new(-1247.3999, 9.25, 1257.20007, 0,0,1,0,1,-0,-1,0,0),
    ["Battlefield Isle's Phi Thien"] = CFrame.new(1520.50647, 46.9576187, -46.7681236),
    ["Mistpeak Isle's Phi Thien"]    = CFrame.new(2621.07202, 9.23625088, -86.6871414),
    ["Sage Yijiu"]   = CFrame.new(-163.967422, 7.28192425, -9.39642334, 1,0,0,0,1,0,0,0,1),
    ["Zeng Tianguo"] = CFrame.new(145.217529, 6.72139692, 1371.89539),
    ["Nameless Bait Farm"] = CFrame.new(
        3013.14722, 15.525135, -124.574158,
        0.541496873, 3.77300111e-08, -0.840702772,
        1.24950628e-08, 1, 5.29272057e-08,
        0.840702772, -3.91645507e-08, 0.541496873
    ),
}

-- ====================================================
-- 4.5  ★ PROXIMITY BYPASS ENGINE ★
-- Scan + TP near any NPC before every remote fire.
-- ====================================================
local PROX_WAIT      = 0.38   -- seconds after teleport before firing remote
local PROX_OFFSET    = 3.5    -- studs in front of NPC to land

-- Bait-seller name aliases — tries them left-to-right
local BAIT_SELLER_NAMES = {
    "Ba Chang",
    "Ba Thuong",
    "Bait Seller",
    "AmberIsle's Ba Thuong",
    "Coconut Isle's Ba Thuong",
    "Frost Isle's Ba Thuong",
    "Perch Isle's Ba Thuong",
    "Sovereign Isle's Ba Thuong",
}

-- Gacha/Banner NPC names to search
local GACHA_NPC_NAMES = {
    "Gacha NPC", "Gacha", "Banner NPC", "Wish NPC",
    "Roll NPC",  "Lucky Chest", "Gacha Machine",
}

-- Daily reward NPC names
local DAILY_NPC_NAMES = {
    "Daily Reward", "Daily NPC", "Daily",
    "Claim Daily", "Chest Daily", "Daily Chest",
}

-- Rebirth / upgrade NPC names
local REBIRTH_NPC_NAMES = {
    "Rebirth NPC", "Upgrade NPC", "Zeng Tianguo",
    "Rebirth", "Upgrade", "Ascend NPC",
}

-- ── Core search: BFS through NPC folder, fallback full workspace ──
local GetAnchor

local function NormalizeNPCName(name)
    return string.lower(tostring(name or "")):gsub("[^%w]", "")
end

local function FindBestNPCMatch(root, targetName)
    if not root or not targetName or targetName == "" then return nil end

    local normalizedTarget = NormalizeNPCName(targetName)
    local bestMatch, bestScore = nil, -math.huge

    local function consider(obj)
        if not (obj:IsA("Model") or obj:IsA("BasePart")) then return end

        local score = nil
        local objName = obj.Name
        local normalizedName = NormalizeNPCName(objName)

        if objName == targetName then
            score = 400
        elseif normalizedName == normalizedTarget then
            score = 320
        elseif string.find(normalizedName, normalizedTarget, 1, true) then
            score = 220
        elseif string.find(normalizedTarget, normalizedName, 1, true) then
            score = 180
        end

        if not score then return end

        if GetAnchor(obj) then
            score = score + 50
        end

        if obj.Parent == root then
            score = score + 10
        end

        if score > bestScore then
            bestScore = score
            bestMatch = obj
        end
    end

    local direct = root:FindFirstChild(targetName, true)
    if direct and (direct:IsA("Model") or direct:IsA("BasePart")) then
        return direct
    end

    for _, obj in ipairs(root:GetDescendants()) do
        consider(obj)
    end

    return bestMatch
end

local function FindNPCByName(name)
    if not name or name == "" then return nil end
    local npcRoot = Workspace:FindFirstChild("NPC")
    if npcRoot then
        local direct = FindBestNPCMatch(npcRoot, name)
        if direct then return direct end
    end
    -- full workspace fallback
    for _, obj in ipairs(Workspace:GetDescendants()) do
        local normalizedObj = NormalizeNPCName(obj.Name)
        local normalizedTarget = NormalizeNPCName(name)
        if (obj:IsA("Model") or obj:IsA("BasePart")) and
            (obj.Name == name or normalizedObj == normalizedTarget) then
            return obj
        end
    end
    return nil
end

-- Search a list of candidate names, return first hit
local function FindNPCFromList(nameList)
    for _, name in ipairs(nameList) do
        local found = FindNPCByName(name)
        if found then return found end
    end
    return nil
end

-- Get the HumanoidRootPart (or any BasePart) of a model/part
GetAnchor = function(obj)
    if not obj then return nil end
    if obj:IsA("BasePart") then return obj end
    return obj:FindFirstChild("HumanoidRootPart", true)
        or obj:FindFirstChild("RootPart", true)
        or obj.PrimaryPart
        or obj:FindFirstChildWhichIsA("BasePart", true)
end
-- ── Master teleport-near function ──
-- target: string name, Model, or BasePart
-- offsetDist: studs in front of NPC (default PROX_OFFSET)
-- Returns true if TP succeeded
local function TPNear(target, offsetDist)
    offsetDist = offsetDist or PROX_OFFSET
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then return false end

    local obj = nil
    if type(target) == "string" then
        obj = FindNPCByName(target)
        if not obj then
            local fixed = fixedPositions[target]
            if fixed then
                pcall(function() root.CFrame = fixed + Vector3.new(0, 2, 0) end)
                task.wait(PROX_WAIT)
                return true
            end
            return false
        end
    else
        obj = target
    end

    if not obj then return false end

    local anchor = GetAnchor(obj)
    if not anchor then return false end

    local look = anchor.CFrame.LookVector
    local targetPos = anchor.Position - look * offsetDist + Vector3.new(0, 2, 0)
    pcall(function() root.CFrame = CFrame.new(targetPos, anchor.Position) end)
    task.wait(PROX_WAIT)
    return true
end

local function WithSavedPosition(callback)
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    local originalCFrame = root and root.CFrame
    local ok, result = pcall(callback, root, originalCFrame)
    if root and originalCFrame then
        task.wait(0.2)
        pcall(function()
            root.CFrame = originalCFrame
        end)
    end
    return ok, result
end

-- ── Proximity-wrapped FireServer ──
-- Teleports near `npcTarget` then fires `remote` with `...`
local function ProxFire(remote, npcTarget, ...)
    local args = {...}
    local function fireRemote()
        if npcTarget then TPNear(npcTarget) end
        remote:FireServer(table.unpack(args))
    end
    if getgenv().NNVN_ReturnAfterQuestTP then
        WithSavedPosition(fireRemote)
    else
        pcall(fireRemote)
    end
end

-- ── Proximity-wrapped InvokeServer ──
local function ProxInvoke(remote, npcTarget, ...)
    local args = {...}
    local result
    local function invokeRemote()
        if npcTarget then TPNear(npcTarget) end
        result = remote:InvokeServer(table.unpack(args))
    end
    if getgenv().NNVN_ReturnAfterQuestTP then
        WithSavedPosition(invokeRemote)
    else
        pcall(invokeRemote)
    end
    return result
end

-- ── Smart bait seller TP (finds nearest seller in current server) ──
local function TPNearBaitSeller()
    local baitFolder = Workspace:FindFirstChild("NPC") and Workspace.NPC:FindFirstChild("BuyBait")
    local seller = baitFolder and (
        FindBestNPCMatch(baitFolder, "Ba Chang")
        or FindBestNPCMatch(baitFolder, "Ba Thuong")
        or FindBestNPCMatch(baitFolder, "Bait Seller")
    )
    if not seller then
        seller = FindNPCFromList(BAIT_SELLER_NAMES)
    end
    if seller then
        TPNear(seller)
        return true
    end
    return false
end

-- ── Smart gacha NPC TP ──
local function TPNearGachaNPC()
    local npc = FindNPCFromList(GACHA_NPC_NAMES)
    if npc then TPNear(npc); return true end
    return false
end

-- ── Smart daily NPC TP ──
local function TPNearDailyNPC()
    local npc = FindNPCFromList(DAILY_NPC_NAMES)
    if npc then TPNear(npc); return true end
    return false
end

-- ── Smart rebirth NPC TP ──
local function TPNearRebirthNPC()
    local npc = FindNPCFromList(REBIRTH_NPC_NAMES)
    if npc then
        TPNear(npc)
        return true
    end
    -- fallback: Zeng Tianguo fixed pos
    local fixed = fixedPositions["Zeng Tianguo"]
    if fixed then
        local char = LocalPlayer.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        if root then
            pcall(function() root.CFrame = fixed + Vector3.new(0, 2, 0) end)
            task.wait(PROX_WAIT)
            return true
        end
    end
    return false
end

-- ── Rod seller TP by exact NPC name from rodData ──
local function TPNearRodSeller(sellerName)
    local npc = FindNPCByName(sellerName)
    if npc then
        TPNear(npc)
        return true
    end
    return false
end

-- ── Equip-remote bypass (equip NPCs are usually storage remotes — still wrap) ──
local function ProxEquipBait(baitName)
    return ProxInvoke(ReplicatedStorage.Events.EquipBait, nil, baitName)
end

local function ProxEquipRod(rodName)
    return ProxInvoke(ReplicatedStorage.Events.EquipFishingRod, nil, rodName)
end

local function ProxEquipOrb(orbName)
    return ProxInvoke(ReplicatedStorage.Events.EquipOrb, nil, orbName)
end

-- expose for external use
getgenv().NNVN_TPNear           = TPNear
getgenv().NNVN_FindNPCByName    = FindNPCByName
getgenv().NNVN_ProxFire         = ProxFire
getgenv().NNVN_ProxInvoke       = ProxInvoke

-- ====================================================
-- 5. Remaining helpers (post-bypass engine)
-- ====================================================
local function GetPlayerData()
    return ReplicatedStorage.Data:FindFirstChild(tostring(LocalPlayer.UserId))
end

local function GetAvailableBaits()
    local p = GetPlayerData()
    if not p then return {} end
    local baits = {}
    local baitFolder = p:FindFirstChild("Bait")
    if not baitFolder then return {} end
    for _, b in pairs(baitFolder:GetChildren()) do
        if b:IsA("NumberValue") and b.Value > 0 then
            table.insert(baits, b.Name)
        end
    end
    return baits
end

local function GetBaitStats(baitName)
    local mod = ReplicatedStorage.Info.Bait:FindFirstChild(baitName)
    if mod then
        local ok, m = pcall(require, mod)
        if ok and m then return {Luck = m.Luck or 0} end
    end
    return {Luck = 0}
end

local function GetBestBait()
    local baits = GetAvailableBaits()
    local best, bestLuck = nil, -1
    for _, name in ipairs(baits) do
        local s = GetBaitStats(name)
        if s.Luck > bestLuck then bestLuck = s.Luck; best = name end
    end
    return best
end

local function EquipBait(baitName)
    if not baitName then return false end
    return ProxEquipBait(baitName)
end

local function GetOwnedRods()
    local p = GetPlayerData()
    if not p then return {} end
    local rods = {}
    local inv = p:FindFirstChild("FishingRodInventory")
    if not inv then return {} end
    for _, f in pairs(inv:GetChildren()) do
        if f:IsA("Folder") and f:FindFirstChild("Owned") and f.Owned.Value == true then
            table.insert(rods, f.Name)
        end
    end
    return rods
end

local function GetRodStats(rodName)
    local mod = ReplicatedStorage.Info.Inventory:FindFirstChild(rodName)
    if mod then
        local ok, m = pcall(require, mod)
        if ok and m then return {Power = m.Power or 0, Luck = m.Luck or 0} end
    end
    return {Power = 0, Luck = 0}
end

local function GetBestRod()
    local rods = GetOwnedRods()
    local best, bestScore = nil, -1
    for _, name in ipairs(rods) do
        local s = GetRodStats(name)
        local score = s.Power + s.Luck
        if score > bestScore then bestScore = score; best = name end
    end
    return best
end

local function EquipRod(rodName)
    if not rodName then return false end
    return ProxEquipRod(rodName)
end

local function GetAvailableOrbs()
    local p = GetPlayerData()
    if not p then return {} end
    local orbs = {}
    local orbFolder = p:FindFirstChild("Orb")
    if not orbFolder then return {} end
    for _, f in pairs(orbFolder:GetChildren()) do
        if f:IsA("Folder") then
            local eq = f:FindFirstChild("Equipping")
            if eq and eq.Value == false then
                table.insert(orbs, f.Name)
            end
        end
    end
    return orbs
end

local function GetOrbStats(orbName)
    local p = GetPlayerData()
    if not p then return {} end
    local f = p.Orb and p.Orb:FindFirstChild(orbName)
    if not f then return {} end
    local stats = {}
    for _, child in pairs(f:GetChildren()) do
        if child:IsA("NumberValue") and child.Name ~= "Equipping" and child.Name ~= "Favorite" then
            stats[child.Name] = child.Value
        end
    end
    return stats
end

local function GetBestOrb()
    local orbs = GetAvailableOrbs()
    local best, bestScore = nil, -1
    for _, name in ipairs(orbs) do
        local s = GetOrbStats(name)
        local score = (s.Damage or 0)*2 + (s.Luck or 0)*1.5 + (s.Cash or 0)*0.5
        if score > bestScore then bestScore = score; best = name end
    end
    return best
end

local function EquipOrb(orbName)
    if not orbName then return false end
    return ProxEquipOrb(orbName)
end

-- NNVN Hub rod hold check (attribute Type == "fishing rod")
local function isHoldingFishingRod()
    local char = LocalPlayer.Character
    if not char then return false end
    local typ = char:GetAttribute("Type")
    if typ and string.lower(tostring(typ)) == "fishing rod" then
        return true
    end
    -- fallback: tool name scan
    for _, obj in ipairs(char:GetChildren()) do
        if obj:IsA("Tool") and (obj.Name:find("Rod") or obj.Name:find("Fishing")) then
            return true
        end
    end
    return false
end

local function HasFishingRod()
    return isHoldingFishingRod()
end

local function ToggleHotbarSlot1()
    local ev = ReplicatedStorage:FindFirstChild("Events") and ReplicatedStorage.Events:FindFirstChild("ToggleHotbar")
    if ev then pcall(function() ev:InvokeServer("1", nil) end) end
end

local function EquipSlot1() ToggleHotbarSlot1() end

local function TeleportToCFrame(cf)
    local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not root then return end
    pcall(function() root.CFrame = cf + Vector3.new(0,5,0) end)
end

local function TeleportToNPC(npcName)
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then return false end

    local obj = FindNPCByName(npcName)
    if not obj then return false end

    local anchor = GetAnchor(obj)
    if not anchor then return false end

    local look = anchor.CFrame.LookVector
    local targetPos = anchor.Position - look * (PROX_OFFSET or 3.5) + Vector3.new(0, 2, 0)
    pcall(function()
        root.CFrame = CFrame.new(targetPos, anchor.Position)
    end)
    task.wait(PROX_WAIT or 0.35)
    return true
end

local function TeleportToNPCWithFallback(npcName)
    if TeleportToNPC(npcName) then return true end
    local pos = fixedPositions[npcName]
    if pos then TeleportToCFrame(pos); return true end
    return false
end
local function HoldE(duration)
    VirtualInput:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(duration)
    VirtualInput:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end

local function GetTicketCount()
    local userData = ReplicatedStorage.Data:FindFirstChild(tostring(LocalPlayer.UserId))
    if not userData then return 0 end
    local gachaData = userData:FindFirstChild("Gacha")
    if not gachaData then return 0 end
    local tickets = gachaData:FindFirstChild("Tickets")
    if tickets and tickets:IsA("NumberValue") then return tickets.Value end
    return 0
end

local function GetCrystals()
    local userData = ReplicatedStorage.Data:FindFirstChild(tostring(LocalPlayer.UserId))
    if not userData then return 0 end
    local names = {"Crystals", "Gems", "Diamonds", "Crystal", "Gem"}
    for _, name in ipairs(names) do
        local val = userData:FindFirstChild(name)
        if val and val:IsA("NumberValue") then return val.Value end
    end
    local currency = userData:FindFirstChild("Currency")
    if currency then
        for _, name in ipairs(names) do
            local val = currency:FindFirstChild(name)
            if val and val:IsA("NumberValue") then return val.Value end
        end
    end
    return 0
end

local function ObjectExists(path)
    local current = Workspace
    for _, part in ipairs(path) do
        current = current:FindFirstChild(part)
        if not current then return false end
    end
    return true
end
getgenv().NNVN_ObjectExists = ObjectExists

-- ====================================================
-- 6. Quest System Patch (Enhanced Auto Ticket)
-- ====================================================
if not getgenv().NNVN_QuestPatched then
    getgenv().NNVN_QuestPatched = true

    local function getQuestFrameName(diff)
        return diff == "Easy" and "Easy Ticket Quest" or "Hard Ticket Quest"
    end

    local function GetQuestFolder(diff)
        local data = ReplicatedStorage:FindFirstChild("Data")
        local pd   = data and data:FindFirstChild(tostring(LocalPlayer.UserId))
        local q    = pd and pd:FindFirstChild("Quest")
        local main = q and q:FindFirstChild("Main")
        return main and main:FindFirstChild(getQuestFrameName(diff))
    end

    local function IsQuestActive(diff)
        return GetQuestFolder(diff) ~= nil
    end

    local function GetQuestProgress(diff)
        local qf = GetQuestFolder(diff)
        local of = qf and qf:FindFirstChild("Objective")
        if not of then return nil end
        local quests = {}
        for _, obj in ipairs(of:GetChildren()) do
            if obj:IsA("StringValue") then
                local desc, total, qtype = obj.Value:match("^(.-),(%d+),(.+)$")
                local prog = qf:FindFirstChild(obj.Name)
                if desc and prog and (prog:IsA("NumberValue") or prog:IsA("IntValue")) then
                    total = tonumber(total)
                    table.insert(quests, {
                        id       = obj.Name, name = desc, type = qtype,
                        current  = prog.Value, total = total,
                        completed = prog.Value >= total,
                    })
                end
            end
        end
        table.sort(quests, function(a,b) return (tonumber(a.id) or 999) < (tonumber(b.id) or 999) end)
        return quests
    end

    local function IsQuestCompleted(diff)
        local p = GetQuestProgress(diff)
        if not p or #p == 0 then return false end
        for _, q in ipairs(p) do if not q.completed then return false end end
        return true
    end

    local ClickLeaveButton

    -- [PROX] Quest accept — TP near quest giver before every remote
    local function AcceptTicketQuest(diff)
        if not CanAcceptTicketQuest(diff) then return false end
        local accepted = false
        local function doAccept()
            local nf  = Workspace:FindFirstChild("NPC")
            local ff  = nf and nf:FindFirstChild("Function")
            local tqg = (ff and ff:FindFirstChild("Ticket Quest Giver")) or FindNPCByName("Ticket Quest Giver")
            if not tqg then return end

            local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local hrp  = GetAnchor(tqg)
            if root and hrp then
                root.CFrame = hrp.CFrame * CFrame.new(0, 0, -PROX_OFFSET) + Vector3.new(0, 2, 0)
                task.wait(PROX_WAIT)
            end

            ReplicatedStorage.Events.StartDialogue:FireServer(tqg)
            task.wait(0.4)

            local oName = diff == "Easy" and "EasyAcceptQuest" or "HardAcceptQuest"
            local payload = {tqg, "Ticket Quest"}
            ReplicatedStorage.Events.ChooseDialogueOption:FireServer("Ticket Quest Giver", 1, oName, payload)
            task.wait(0.5)
            if not IsQuestActive(diff) then
                ReplicatedStorage.Events.StartDialogue:FireServer(tqg)
                task.wait(0.35)
                ReplicatedStorage.Events.ChooseDialogueOption:FireServer("Ticket Quest Giver", 1, oName, payload)
                task.wait(0.75)
            end
            accepted = IsQuestActive(diff)
        end
        if getgenv().NNVN_ReturnAfterQuestTP then
            WithSavedPosition(doAccept)
        else
            pcall(doAccept)
        end
        return accepted
    end

    -- [PROX] Quest turn-in — TP near quest giver before every remote
    local function TurnInTicketQuest(diff)
        local turnedIn = false
        local function doTurnIn()
            local nf  = Workspace:FindFirstChild("NPC")
            local ff  = nf and nf:FindFirstChild("Function")
            local npc = (ff and ff:FindFirstChild("Ticket Quest Giver")) or FindNPCByName("Ticket Quest Giver")
            if not npc then return end

            local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local hrp  = GetAnchor(npc)
            if root and hrp then
                root.CFrame = hrp.CFrame * CFrame.new(0, 0, -PROX_OFFSET) + Vector3.new(0, 2, 0)
                task.wait(PROX_WAIT)
            end

            ReplicatedStorage.Events.StartDialogue:FireServer(npc)
            task.wait(0.4)

            ReplicatedStorage.Events.ChooseDialogueOption:FireServer("Ticket Quest Giver", 1, "Quest", {npc})
            task.wait(0.3)

            local pd   = ReplicatedStorage.Data:FindFirstChild(tostring(LocalPlayer.UserId))
            local main = pd and pd:FindFirstChild("Quest") and pd.Quest:FindFirstChild("Main")
            if main then
                local qName = diff == "Easy" and "Easy Ticket Quest" or "Hard Ticket Quest"
                local qf = main:FindFirstChild(qName)
                if qf then
                    ReplicatedStorage.Events.ClaimQuest:FireServer(qf.Name)
                    task.wait(0.5)
                end
            end
            ClickLeaveButton()
            task.wait(0.35)
            turnedIn = not IsQuestActive(diff)
        end
        if getgenv().NNVN_ReturnAfterQuestTP then
            WithSavedPosition(doTurnIn)
        else
            pcall(doTurnIn)
        end
        return turnedIn
    end

    local function CompleteTicketQuestTurnIn(diff)
        for _ = 1, 5 do
            if not IsQuestActive(diff) then return true end
            if not IsQuestCompleted(diff) then return false end
            if TurnInTicketQuest(diff) then return true end
            task.wait(0.6)
        end
        return not IsQuestActive(diff)
    end

    ClickLeaveButton = function()
        pcall(function()
            local mg   = LocalPlayer.PlayerGui:FindFirstChild("MainGui")
            local menu = mg and mg:FindFirstChild("Menu")
            local dlg  = menu and menu:FindFirstChild("Dialogue")
            local bf   = dlg and dlg:FindFirstChild("ButtonFrame")
            local btn  = bf and bf:FindFirstChild("1")
            if btn and btn:IsA("TextButton") then btn:Activate() end
        end)
    end

    local FISHING_POS = {
        Easy = CFrame.new(-45.7291222, 6.76193953, -151.160522,
            0.979924798, 2.71558296e-08, 0.199367419,
            -1.5272235e-08, 1, -6.1144334e-08,
            -0.199367419, 5.68720644e-08, 0.979924798),
        Hard = CFrame.new(1706.03064, 6.55880594, 73.1951675,
            0.317301184, 1.87591165e-09, -0.9483248,
            3.60149564e-08, 1, 1.40284211e-08,
            0.9483248, -3.8605112e-08, 0.317301184),
    }

    local function TeleportToFishingSpot(diff)
        local cf   = FISHING_POS[diff]
        local char = LocalPlayer.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        if not root or not cf then return end
        if (root.Position - cf.Position).Magnitude > 15 then
            pcall(function() root.CFrame = cf + Vector3.new(0,5,0) end)
        end
    end

    local function GetQuestObjectiveType(diff)
        local prog = GetQuestProgress(diff)
        if not prog or #prog == 0 then return nil end
        return prog[1].type
    end

    local function IsBossObjective(diff)
        local typ = GetQuestObjectiveType(diff)
        return typ and string.find(string.lower(typ), "boss") ~= nil
    end

    local function parseTimeStringSeconds(text)
        if type(text) ~= "string" then return nil end
        local h, m, s = text:match("(%d+):(%d+):(%d+)")
        if h and m and s then
            return tonumber(h) * 3600 + tonumber(m) * 60 + tonumber(s)
        end
        local mm, ss = text:match("(%d+):(%d+)")
        if mm and ss then
            return tonumber(mm) * 60 + tonumber(ss)
        end
        return nil
    end

    local function GetQuestCooldownSeconds(diff)
        local data = ReplicatedStorage:FindFirstChild("Data")
        local pd = data and data:FindFirstChild(tostring(LocalPlayer.UserId))
        if not pd then return nil end

        local ticketCooldown = pd:FindFirstChild("TicketQuestCooldown")
        if ticketCooldown and (ticketCooldown:IsA("IntValue") or ticketCooldown:IsA("NumberValue")) then
            local value = tonumber(ticketCooldown.Value)
            if value and value > 0 then
                if value > 1000000000 then
                    return math.max(0, math.floor(value - os.time()))
                end
                return math.max(0, math.floor(value))
            end
        end

        local q = pd:FindFirstChild("Quest")
        if not q then return nil end

        local diffLower = string.lower(diff or "")
        local best

        for _, obj in ipairs(q:GetDescendants()) do
            local name = string.lower(obj.Name or "")
            local looksRelevant = name:find("cool") or name:find("time") or name:find("reset")
            if looksRelevant and (name:find("ticket") or name:find(diffLower)) then
                local seconds
                if obj:IsA("IntValue") or obj:IsA("NumberValue") then
                    local value = tonumber(obj.Value)
                    if value and value > 0 then
                        if value > 1000000000 then
                            seconds = math.max(0, math.floor(value - os.time()))
                        else
                            seconds = math.floor(value)
                        end
                    end
                elseif obj:IsA("StringValue") then
                    seconds = parseTimeStringSeconds(obj.Value)
                end
                if seconds and seconds > 0 then
                    best = best and math.min(best, seconds) or seconds
                end
            end
        end

        return best
    end

    local function CanAcceptTicketQuest(diff)
        if IsQuestActive(diff) then return false end
        local cooldown = GetQuestCooldownSeconds(diff)
        return not cooldown or cooldown <= 0
    end

    local function formatCooldown(seconds)
        seconds = math.max(0, math.floor(seconds or 0))
        local h = math.floor(seconds / 3600)
        local m = math.floor((seconds % 3600) / 60)
        local s = seconds % 60
        if h > 0 then
            return string.format("%02d:%02d:%02d", h, m, s)
        end
        return string.format("%02d:%02d", m, s)
    end

    -- Expose helpers
    getgenv().NNVN_IsQuestCompleted      = IsQuestCompleted
    getgenv().NNVN_IsQuestActive         = IsQuestActive
    getgenv().NNVN_AcceptTicketQuest     = AcceptTicketQuest
    getgenv().NNVN_TurnInTicketQuest     = TurnInTicketQuest
    getgenv().NNVN_ClickLeaveButton      = ClickLeaveButton
    getgenv().NNVN_TeleportToFishSpot   = TeleportToFishingSpot
    getgenv().NNVN_GetQuestProgress      = GetQuestProgress
    getgenv().NNVN_GetQuestObjectiveType = GetQuestObjectiveType
    getgenv().NNVN_IsBossObjective       = IsBossObjective
    getgenv().NNVN_GetQuestCooldownSeconds = GetQuestCooldownSeconds
    getgenv().NNVN_CanAcceptTicketQuest  = CanAcceptTicketQuest
    getgenv().NNVN_WindUIRef             = WindUI
    getgenv().NNVN_FluentRef             = WindUI

    -- ===== ENHANCED TICKET LOOP (smart flag management) =====
    local function StartTicketLoop()
        if getgenv().NNVN_TicketCoroutine then
            pcall(coroutine.close, getgenv().NNVN_TicketCoroutine)
            getgenv().NNVN_TicketCoroutine = nil
        end

        getgenv().NNVN_TicketCoroutine = coroutine.create(function()
            -- Backup storage for original flag states
            local savedFlags = {}
            local lastCooldownNotifyAt = 0
            local lastCooldownText = nil
            local lastBossSkipNotifyAt = 0
            local lastReadyNotifyAt = 0
            local lastCompleteNotifyAt = 0
            local managedFishingMode = false

            local function saveCurrentFlags()
                savedFlags = {
                    AutoCast           = getgenv().NNVN_AutoCast,
                    Anchor             = getgenv().NNVN_Anchor,
                    AutoSkill          = getgenv().NNVN_AutoSkill,
                    AutoSell           = getgenv().NNVN_AutoSell,
                    AutoBuyBait        = getgenv().NNVN_AutoBuyBait,
                    AutoEquipBestBait  = getgenv().NNVN_AutoEquipBestBait,
                    AutoFarmBoss       = getgenv().NNVN_AutoFarmBoss,
                    AutoFarmSecretBoss = getgenv().NNVN_AutoFarmSecretBoss,
                    AutoBossFishing    = getgenv().NNVN_AutoBossFishing,
                    AntiAFK            = getgenv().NNVN_AntiAFK,
                    AutoEquipRod       = getgenv().NNVN_AutoEquipRod,
                    AutoUseBait        = getgenv().NNVN_AutoUseBait,
                    AutoBoss           = getgenv().NNVN_AutoBoss,
                    AutoPhase2         = getgenv().NNVN_AutoPhase2,
                }
            end

            local function restoreFlags()
                for flag, value in pairs(savedFlags) do
                    getgenv()["NNVN_" .. flag] = value
                end
                managedFishingMode = false
            end

            -- Activate a safe fishing setup (turns off boss modes)
            local function enableFishingMode()
                getgenv().NNVN_AutoCast          = true
                getgenv().NNVN_Anchor            = true
                getgenv().NNVN_AutoSkill         = true
                getgenv().NNVN_AutoSell          = false
                getgenv().NNVN_AntiAFK           = true
                getgenv().NNVN_AutoEquipRod      = true
                getgenv().NNVN_AutoFarmBoss      = false
                getgenv().NNVN_AutoFarmSecretBoss= false
                getgenv().NNVN_AutoBossFishing   = false
                getgenv().NNVN_AutoBoss          = false
                getgenv().NNVN_AutoPhase2        = false
                managedFishingMode               = true
            end

            while getgenv().NNVN_AutoTicket do
                local diff = getgenv().NNVN_TicketDifficulty or "Easy"
                local active = IsQuestActive(diff)

                if active and IsQuestCompleted(diff) then
                    if getgenv().NNVN_Notify and os.clock() - lastCompleteNotifyAt >= 2 then
                        lastCompleteNotifyAt = os.clock()
                        WindUI:Notify({
                            Title = "门票任务 --雪天缤纷",
                            Content = diff .. " quest completed. Turning in...",
                            Duration = 3,
                        })
                    end
                    if managedFishingMode then
                        restoreFlags()
                    end
                    CompleteTicketQuestTurnIn(diff)
                    task.wait(1)
                    continue
                end

                if not active then
                    local cooldown = GetQuestCooldownSeconds(diff)
                    if cooldown and cooldown > 0 then
                        local cdText = formatCooldown(cooldown)
                        if getgenv().NNVN_Notify and (cdText ~= lastCooldownText or os.clock() - lastCooldownNotifyAt >= 15) then
                            lastCooldownNotifyAt = os.clock()
                            lastCooldownText = cdText
                            WindUI:Notify({
                                Title = "门票任务 --雪天缤纷",
                                Content = diff .. " ticket quest cooldown: " .. cdText,
                                Duration = 4,
                            })
                        end
                        task.wait(math.clamp(cooldown, 1, 10))
                    else
                        lastCooldownText = nil
                        local shouldAutoAccept = getgenv().NNVN_AutoAcceptQuest or getgenv().NNVN_AutoTicket
                        if shouldAutoAccept then
                            if getgenv().NNVN_Notify and os.clock() - lastReadyNotifyAt >= 5 then
                                lastReadyNotifyAt = os.clock()
                                WindUI:Notify({
                                    Title = "门票任务 --雪天缤纷",
                                    Content = diff .. " ticket quest is ready. Accepting...",
                                    Duration = 3,
                                })
                            end
                            if AcceptTicketQuest(diff) then
                                task.wait(1)
                            else
                                task.wait(2)
                            end
                        else
                            task.wait(2.5)
                        end
                    end
                else
                    lastCooldownText = nil

                    -- Active quest -> save flags, enable fishing, then adjust based on objective
                    if not managedFishingMode then
                        saveCurrentFlags()
                        enableFishingMode()
                    end

                    local progress = GetQuestProgress(diff)
                    if progress and #progress > 0 then
                        local first = progress[1]
                        local objType = string.lower(first.type or "")

                        if objType:find("boss") then
                            restoreFlags()
                            if getgenv().NNVN_Notify and os.clock() - lastBossSkipNotifyAt >= 10 then
                                lastBossSkipNotifyAt = os.clock()
                                WindUI:Notify({
                                    Title = "门票任务 --雪天缤纷",
                                    Content = "检测到巨物目标。门票任务期间跳过巨物自动化。",
                                    Duration = 4,
                                })
                            end
                            task.wait(2)
                            continue
                        elseif objType:find("bait") or objType:find("usebait") then
                            -- Use-bait quest -> auto buy and equip bait
                            getgenv().NNVN_AutoBuyBait      = true
                            getgenv().NNVN_AutoEquipBestBait= true
                            getgenv().NNVN_SelectedBait     = "Basic Bait"
                            getgenv().NNVN_AutoUseBait      = true
                        end
                    end

                    -- Wait until quest completed
                    while getgenv().NNVN_AutoTicket and not IsQuestCompleted(diff) do
                        TeleportToFishingSpot(diff)
                        task.wait(1.25)
                    end

                    if not getgenv().NNVN_AutoTicket then break end

                    -- Quest complete → turn in and restore flags
                    if managedFishingMode then
                        restoreFlags()
                    end
                    CompleteTicketQuestTurnIn(diff)
                    task.wait(2)
                end
            end

            -- If loop exits, restore flags
            restoreFlags()
        end)

        coroutine.resume(getgenv().NNVN_TicketCoroutine)
    end

    getgenv().NNVN_StartTicketLoop = StartTicketLoop

    -- If AutoTicket is already on, restart with new logic
    if getgenv().NNVN_AutoTicket then
        getgenv().NNVN_AutoTicket = false
        task.wait(0.5)
        getgenv().NNVN_AutoTicket = true
        StartTicketLoop()
    end
end
-- ====================================================

-- ====================================================
-- 7. God Spirit Auto-Interact
-- ====================================================
local function GodExists()
    local g = Workspace:FindFirstChild("NPC") and Workspace.NPC:FindFirstChild("God")
    if g then for _ in pairs(g:GetChildren()) do return true end end
    return false
end
getgenv().NNVN_GodExists = GodExists

local function InteractWithGodNPC(npc)
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then return false end

    local hrp = GetAnchor(npc)
    if not hrp then return false end

    -- [PROX] TP near god NPC before any remote
    local targetCF = hrp.CFrame + hrp.CFrame.LookVector * (-PROX_OFFSET)
    pcall(function() root.CFrame = targetCF + Vector3.new(0,2,0) end)
    task.wait(PROX_WAIT)

    local prompt = nil
    local talkAttach = hrp:FindFirstChild("Talk")
    if talkAttach then
        prompt = talkAttach:FindFirstChildWhichIsA("ProximityPrompt")
    end
    if not prompt then
        prompt = hrp:FindFirstChildWhichIsA("ProximityPrompt", true)
    end
    if not prompt then
        if fireproximityprompt then
            for _, d in ipairs(npc:GetDescendants()) do
                if d:IsA("ProximityPrompt") then
                    pcall(fireproximityprompt, d)
                    task.wait(0.5)
                    pcall(function()
                        ReplicatedStorage.Events.ChooseDialogueOption:FireServer(npc.Name, 1, "Pray", {npc})
                    end)
                    return true
                end
            end
        end
        HoldE(3)
        task.wait(0.5)
        pcall(function()
            ReplicatedStorage.Events.ChooseDialogueOption:FireServer(npc.Name, 1, "Pray", {npc})
        end)
        return true
    end

    if fireproximityprompt then
        pcall(fireproximityprompt, prompt)
    elseif firetouchinterest then
        pcall(firetouchinterest, root, hrp, 0)
    end
    task.wait(0.4)
    pcall(function()
        ReplicatedStorage.Events.ChooseDialogueOption:FireServer(npc.Name, 1, "Pray", {npc})
    end)
    task.wait(0.5)
    pcall(function() getgenv().NNVN_ClickLeaveButton() end)
    return true
end

-- ====================================================
-- 8. Window + Tabs (đã sửa theo phong cách WindUI thuần)
-- ====================================================
local Window = Fluent:CreateWindow({
    Title       = T.win_title,
    Author      = T.win_sub,
    Icon        = "fish",
    Folder      = "NNVN_Hub",
    Size        = UDim2.fromOffset(560, 430),
    MinSize     = Vector2.new(520, 360),
    MaxSize     = Vector2.new(700, 520),
    SideBarWidth = 160,
    Acrylic     = true,
    Transparent = true,
    Theme       = "Dark",
    Background = "rbxassetid://124412031173230",
    BackgroundImageTransparency = 0.5,
    HideSearchBar = true,
    ScrollBarEnabled = false,
    ToggleKey   = Enum.KeyCode.K,
    User = {
        Enabled = true,
        Anonymous = false,
    },
})

if not Window then warn("[NNVN Hub] WindUI window failed to initialize") return end

-- Thêm EditOpenButton và Tag giống hệt demo
Window:EditOpenButton({
    Title = "雪天缤纷 --雪天缤纷",
    Icon = "fish",
    CornerRadius = UDim.new(0, 16),
    StrokeThickness = 2,
    Color = ColorSequence.new(Color3.fromHex("0A1128"), Color3.fromHex("4B0082")),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})

Window:Tag({
    Title = "v3 --雪天缤纷",
    Icon = "shield-check",
    Color = Color3.fromHex("#30aaff"),
    Radius = 5,
})

local function applyWindUIGlassStyle()
    local CONTROL_GLASS = 0.72
    local INPUT_GLASS = 0.64
    local SIDEBAR_GLASS = 0.76
    local STROKE_GLASS = 0.55

    local function isHubGui(gui)
        if not gui then return false end
        local name = string.lower(gui.Name or "")
        return name:find("wind") or name:find("nnvn") or name:find("hub")
    end

    local function shouldSoften(obj)
        if not obj:IsA("GuiObject") then return false end
        if obj.BackgroundTransparency >= 0.94 then return false end
        local color = obj.BackgroundColor3
        local brightness = (color.R + color.G + color.B) / 3
        local greenish = color.G >= color.R and color.G >= color.B and color.G > 0.18
        return brightness < 0.78 or greenish
    end

    local viewport = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1366, 768)
    for _, rootGui in ipairs(CoreGui:GetChildren()) do
        if rootGui:IsA("ScreenGui") and isHubGui(rootGui) then
            for _, obj in ipairs(rootGui:GetDescendants()) do
                if shouldSoften(obj) then
                    local size = obj.AbsoluteSize
                    if size.X > viewport.X * 0.82 and size.Y > viewport.Y * 0.82 then
                        obj.BackgroundTransparency = 1
                    else
                        local lowerName = string.lower(obj.Name or "")
                        if lowerName:find("sidebar") or lowerName:find("tab") or lowerName:find("navigation") then
                            obj.BackgroundTransparency = math.max(obj.BackgroundTransparency, SIDEBAR_GLASS)
                        elseif lowerName:find("dropdown") or lowerName:find("slider") or lowerName:find("toggle") or lowerName:find("input") then
                            obj.BackgroundTransparency = math.max(obj.BackgroundTransparency, INPUT_GLASS)
                        else
                            obj.BackgroundTransparency = math.max(obj.BackgroundTransparency, CONTROL_GLASS)
                        end
                    end
                elseif obj:IsA("UIStroke") then
                    obj.Transparency = math.max(obj.Transparency, STROKE_GLASS)
                end
            end
        end
    end
end

if not getgenv().NNVN_WindUIGlassLoop then
    getgenv().NNVN_WindUIGlassLoop = true
    task.spawn(function()
        for _ = 1, 20 do
            pcall(applyWindUIGlassStyle)
            task.wait(0.5)
        end
        while task.wait(3) do
            pcall(applyWindUIGlassStyle)
        end
    end)
end

patchContainer(Window)
if not Window.AddTab and Window.Tab then
    function Window:AddTab(config)
        local tab = self:Tab(config)
        table.insert(createdTabs, tab)
        return patchContainer(tab)
    end
end
local WindSelectTab = Window.SelectTab
function Window:SelectTab(tab)
    if type(tab) == "table" and tab.Index then tab = tab.Index end
    if WindSelectTab and tab then return WindSelectTab(self, tab) end
end
local Tabs = {
    Fishing   = Window:AddTab({ Title = T.tab_fishing,   Icon = "" }),
    Boss      = Window:AddTab({ Title = T.tab_boss,      Icon = "" }),
    Quest     = Window:AddTab({ Title = T.tab_quest,     Icon = "" }),
    Banner    = Window:AddTab({ Title = T.tab_banner,    Icon = "" }),
    Sell      = Window:AddTab({ Title = T.tab_sell,      Icon = "" }),
    Teleport  = Window:AddTab({ Title = T.tab_tp,        Icon = "" }),
    BuyRod    = Window:AddTab({ Title = T.tab_buyrod,    Icon = "" }),
    Learn     = Window:AddTab({ Title = T.tab_learn,     Icon = "" }),
    Bait      = Window:AddTab({ Title = T.tab_bait,      Icon = "" }),
    ESP       = Window:AddTab({ Title = T.tab_esp,       Icon = "" }),
    Extra     = Window:AddTab({ Title = T.tab_extra,     Icon = "" }),
    Hop       = Window:AddTab({ Title = T.tab_hop,       Icon = "" }),
    Info      = Window:AddTab({ Title = T.tab_info,      Icon = "" }),
    Settings  = Window:AddTab({ Title = T.tab_settings,  Icon = "" }),
}

-- ====================================================
-- 9. TAB: FISHING
-- ====================================================
function GetAllFishNames()
    local names, seen = {}, {}
    local info = ReplicatedStorage:FindFirstChild("Info")
    local inv  = info and info:FindFirstChild("Inventory")
    if inv then
        for _, f in ipairs(inv:GetChildren()) do
            if f:IsA("ModuleScript") and not seen[f.Name] then
                seen[f.Name] = true
                table.insert(names, f.Name)
            end
        end
    end
    if #names == 0 then
        local data = ReplicatedStorage:FindFirstChild("Data")
        local pd   = data and data:FindFirstChild(tostring(LocalPlayer.UserId))
        local idx  = pd and pd:FindFirstChild("Index")
        if idx then
            for _, fish in ipairs(idx:GetChildren()) do
                if not seen[fish.Name] then
                    seen[fish.Name] = true
                    table.insert(names, fish.Name)
                end
            end
        end
    end
    table.sort(names)
    return names
end

function FavoriteSelectedFish()
    local sel = getgenv().NNVN_SelectedFavoriteFish
    if not sel or sel == "" or sel == "No Selection" then return 0 end
    local data = ReplicatedStorage:FindFirstChild("Data")
    local pd   = data and data:FindFirstChild(tostring(LocalPlayer.UserId))
    local inv  = pd and pd:FindFirstChild("Inventory")
    local fev  = ReplicatedStorage:FindFirstChild("Events") and ReplicatedStorage.Events:FindFirstChild("FavoriteItem")
    if not inv or not fev then return 0 end
    local prefix = sel .. " | "
    local count  = 0
    for _, item in ipairs(inv:GetChildren()) do
        if item.Name:sub(1, #prefix) == prefix and not item.Name:match(" | Favorite$") then
            -- FavoriteItem is UI-level, no proximity needed
            fev:FireServer(item.Name)
            count = count + 1
            task.wait(0.12)
        end
    end
    return count
end

fishSec = Tabs.Fishing:AddSection("◆ 钓鱼 --雪天缤纷")
fishSec:AddToggle("NNVN_Anchor",   { Title = "▶ 锚点栏 --雪天缤纷",      Default = false, Callback = function(v) getgenv().NNVN_Anchor    = v end })
fishSec:AddToggle("NNVN_AutoCast", { Title = "▶ 自动抛竿 --雪天缤纷",   Default = false, Callback = function(v)
    getgenv().NNVN_AutoCast = v
    if v and not HasFishingRod() then pcall(EquipSlot1) end
end })
fishSec:AddToggle("NNVN_AutoSkill", { Title = "▶ 自动使用钓法 --雪天缤纷", Default = false, Callback = function(v) getgenv().NNVN_AutoSkill = v end })
fishSec:AddDropdown("NNVN_SkillPick", {
    Title   = "▪ 选择自动施放的钓法 --雪天缤纷",
    Values  = {"Z","X","C","V"},
    Multi   = true,
    Default = {"Z","X","C","V"},
    Callback = function(picked)
        local s = {Z=false,X=false,C=false,V=false}
        for k, en in pairs(picked) do if s[k] ~= nil then s[k] = en end end
        getgenv().NNVN_Skills = s
    end,
})

equipSec = Tabs.Fishing:AddSection("◆ 自动装备 --雪天缤纷")
equipSec:AddToggle("NNVN_AutoEquipBestBait", {
    Title   = "▶ 自动装备最佳鱼饵(按幸运) --雪天缤纷",
    Default = false,
    Callback = function(v) getgenv().NNVN_AutoEquipBestBait = v end
})
equipSec:AddToggle("NNVN_AutoEquipRod", {
    Title   = "▶ 自动装备鱼竿 --雪天缤纷",
    Default = false,
    Callback = function(v) getgenv().NNVN_AutoEquipRod = v end
})
equipSec:AddToggle("NNVN_AutoEquipBestOrb", {
    Title   = "▶ 自动装备最佳宝珠(按属性) --雪天缤纷",
    Default = false,
    Callback = function(v) getgenv().NNVN_AutoEquipBestOrb = v end
})
equipSec:AddButton({
    Title = "▣ 立即装备最佳鱼竿 --雪天缤纷",
    Callback = function()
        local best = GetBestRod()
        if best then
            local ok = EquipRod(best)
            WindUI:Notify{Title="", Content=ok and ("Equipped: "..best) or "Failed to equip rod", Duration=2}
        else
            WindUI:Notify{Title="", Content="没有可用的鱼竿", Duration=2}
        end
    end
})
equipSec:AddButton({
    Title = "▣ 立即装备最佳宝珠 --雪天缤纷",
    Callback = function()
        local best = GetBestOrb()
        if best then
            local ok = EquipOrb(best)
            WindUI:Notify{Title="", Content=ok and ("Equipped: "..best) or "Failed to equip orb", Duration=2}
        else
            WindUI:Notify{Title="", Content="没有可用的宝珠", Duration=2}
        end
    end
})

bossFishSec = Tabs.Fishing:AddSection("◆ 巨物钓鱼 --雪天缤纷")
bossFishSec:AddToggle("NNVN_AutoBossFishing", {
    Title   = "▶ 自动刷巨物 --雪天缤纷",
    Default = false,
    Callback = function(v)
        getgenv().NNVN_AutoBossFishing = v
        if v then getgenv().NNVN_AutoCast = false end
        if not v and not getgenv().NNVN_AutoFarmSecretBoss then
            local st = getgenv().NNVN_BossFarmState
            if st then
                st.CurrentTarget = nil
                st.CurrentType = nil
                st.CurrentToken = nil
                st.HasHooked = false
                st.PendingCancel = false
                st.CurrentRunId = (st.CurrentRunId or 0) + 1
            end
        end
    end,
})
bossFishSec:AddToggle("NNVN_AutoFarmSecretBoss", {
    Title   = "▶ 自动刷隐藏巨物 --雪天缤纷",
    Default = false,
    Callback = function(v)
        getgenv().NNVN_AutoFarmSecretBoss = v
        if v then getgenv().NNVN_AutoCast = false end
        if not v and not getgenv().NNVN_AutoBossFishing then
            local st = getgenv().NNVN_BossFarmState
            if st then
                st.CurrentTarget = nil
                st.CurrentType = nil
                st.CurrentToken = nil
                st.HasHooked = false
                st.PendingCancel = false
                st.CurrentRunId = (st.CurrentRunId or 0) + 1
            end
        end
    end,
})

favSec = Tabs.Fishing:AddSection("◆ 收藏鱼 --雪天缤纷")
favSec:AddDropdown("NNVN_SelectedFavoriteFish", {
    Title   = "◉ 选择鱼 --雪天缤纷",
    Values  = (function()
        local f = GetAllFishNames()
        table.insert(f, 1, "No Selection")
        return f
    end)(),
    Multi   = false,
    Default = "No Selection",
    Callback = function(v)
        getgenv().NNVN_SelectedFavoriteFish = (v == "No Selection") and nil or v
    end,
})
favSec:AddToggle("NNVN_AutoFavoriteFish", {
    Title   = "▶ 自动收藏所选鱼 --雪天缤纷",
    Default = false,
    Callback = function(en)
        getgenv().NNVN_AutoFavoriteFish = en
        getgenv().NNVN_FavoriteFishLoopId = getgenv().NNVN_FavoriteFishLoopId + 1
        local id = getgenv().NNVN_FavoriteFishLoopId
        if en then
            task.spawn(function()
                while getgenv().NNVN_AutoFavoriteFish and id == getgenv().NNVN_FavoriteFishLoopId do
                    FavoriteSelectedFish()
                    task.wait(1)
                end
            end)
        end
    end,
})

-- ====================================================
-- 10. TAB: BOSS
-- ====================================================
Tabs.Boss:AddToggle("NNVN_AutoBoss", {
    Title    = "▶ 自动巨物战 --雪天缤纷",
    Default  = false,
    Callback = function(v) getgenv().NNVN_AutoBoss = v end,
})
Tabs.Boss:AddDropdown("NNVN_BossDifficulty", {
    Title    = "◉ 难度 --雪天缤纷",
    Values   = {"Normal","Hard","Nightmare"},
    Default  = "Normal",
    Callback = function(v) getgenv().NNVN_BossDifficulty = v end,
})
Tabs.Boss:AddButton({
    Title    = "▣ 立即开始巨物战 --雪天缤纷",
    -- [PROX] TP near Enzo before firing
    Callback = function()
        task.spawn(function()
            local enzoNPC = FindNPCByName("Enzo")
                or FindNPCByName("Boss NPC")
                or FindNPCByName("BossNPC")
            if enzoNPC then
                TPNear(enzoNPC, PROX_OFFSET)
            end
            pcall(function()
                ReplicatedStorage.Events.StartBossFight:FireServer("Enzo", getgenv().NNVN_BossDifficulty)
                if getgenv().NNVN_Notify then
                    WindUI:Notify{Title="", Content="巨物战开始("..getgenv().NNVN_BossDifficulty..")", Duration=3}
                end
            end)
        end)
    end,
})
Tabs.Boss:AddToggle("NNVN_AutoPhase2", {
    Title    = T.auto_phase2,
    Default  = false,
    Callback = function(v) getgenv().NNVN_AutoPhase2 = v end,
})

namelessBossSec = Tabs.Boss:AddSection("◆ 无名章鱼")
namelessBossSec:AddToggle("NNVN_AutoNamelessMinigame", {
    Title    = "▶ 自动小游戏 --雪天缤纷",
    Default  = false,
    Callback = function(v) getgenv().NNVN_AutoNamelessMinigame = v end,
})
namelessBossSec:AddButton({
    Title    = "▣ 传送到无名章鱼",
    Callback = function()
        local char = LocalPlayer.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        if not root then return end

        local target = nil
        pcall(function()
            local ocean = Workspace:FindFirstChild("Ocean")
            if ocean then
                for _, obj in ipairs(ocean:GetDescendants()) do
                    if obj:IsA("BasePart") and obj:GetAttribute("FishName") == "Nameless Octoparasite" then
                        target = obj
                        break
                    end
                end
            end
        end)

        if target then
            pcall(function()
                root.CFrame = CFrame.new(target.Position + Vector3.new(0, 6, 0))
            end)
        else
            TeleportToNPCWithFallback("Nameless Octoparasite")
        end
    end,
})

-- ====================================================
-- 11. TAB: QUEST
-- ====================================================
tickSec = Tabs.Quest:AddSection("◆ 自动门票任务 --雪天缤纷")
tickSec:AddDropdown("TicketDifficulty", {
    Title    = "◉ 难度 --雪天缤纷",
    Values   = {"Easy","Hard"},
    Default  = "Easy",
    Callback = function(v) getgenv().NNVN_TicketDifficulty = v end,
})
tickSec:AddToggle("StartAutoTicket", {
    Title    = "▶ 启动自动门票任务 --雪天缤纷",
    Default  = false,
    Callback = function(v)
        getgenv().NNVN_AutoTicket = v
        if v then
            local diff = getgenv().NNVN_TicketDifficulty or "Easy"
            if getgenv().NNVN_TeleportToFishSpot then getgenv().NNVN_TeleportToFishSpot(diff) end
            getgenv().NNVN_Anchor   = true
            getgenv().NNVN_AutoCast  = true
            getgenv().NNVN_AutoSkill = true
            if not HasFishingRod() then pcall(EquipSlot1) end
            if getgenv().NNVN_StartTicketLoop then getgenv().NNVN_StartTicketLoop() end
        else
            if getgenv().NNVN_TicketCoroutine then
                pcall(coroutine.close, getgenv().NNVN_TicketCoroutine)
                getgenv().NNVN_TicketCoroutine = nil
            end
            getgenv().NNVN_AutoUseBait        = false
            getgenv().NNVN_AutoBoss           = false
            getgenv().NNVN_AutoFarmSecretBoss = false
            getgenv().NNVN_AutoBossFishing    = false
        end
    end
})
tickSec:AddToggle("AutoAcceptQuest", {
    Title    = "▶ 自动接取任务(空闲时) --雪天缤纷",
    Default  = false,
    Callback = function(v) getgenv().NNVN_AutoAcceptQuest = v end,
})

TurnInCo = nil
tickSec:AddToggle("AutoTurnInQuest", {
    Title    = "▶ 自动交任务(每10秒) --雪天缤纷",
    Default  = false,
    Callback = function(v)
        getgenv().NNVN_AutoTurnIn = v
        if v then
            if TurnInCo then coroutine.close(TurnInCo); TurnInCo = nil end
            TurnInCo = coroutine.create(function()
                while getgenv().NNVN_AutoTurnIn do
                    pcall(function()
                        local diff = getgenv().NNVN_TicketDifficulty or "Easy"
                        -- [PROX] turn-in already wraps its own TP
                        if getgenv().NNVN_TurnInTicketQuest then getgenv().NNVN_TurnInTicketQuest(diff) end
                        if getgenv().NNVN_ClickLeaveButton  then getgenv().NNVN_ClickLeaveButton() end
                    end)
                    for i = 1, 10 do
                        if not getgenv().NNVN_AutoTurnIn then break end
                        task.wait(1)
                    end
                end
            end)
            coroutine.resume(TurnInCo)
        else
            if TurnInCo then coroutine.close(TurnInCo); TurnInCo = nil end
        end
    end
})

manSec = Tabs.Quest:AddSection("◆ 手动交任务 --雪天缤纷")
manSec:AddButton({ Title = "▣ 交简单任务 --雪天缤纷", Callback = function()
    if getgenv().NNVN_TurnInTicketQuest then getgenv().NNVN_TurnInTicketQuest("Easy") end
    if getgenv().NNVN_ClickLeaveButton  then getgenv().NNVN_ClickLeaveButton() end
end })
manSec:AddButton({ Title = "▣ 交困难任务 --雪天缤纷", Callback = function()
    if getgenv().NNVN_TurnInTicketQuest then getgenv().NNVN_TurnInTicketQuest("Hard") end
    if getgenv().NNVN_ClickLeaveButton  then getgenv().NNVN_ClickLeaveButton() end
end })

-- Daily Reward — [PROX] TP near daily NPC before each claim
dailySec = Tabs.Quest:AddSection("◆ 自动领取每日奖励 --雪天缤纷")
dailyCo  = nil
dailySec:AddToggle("AutoClaimDaily", {
    Title    = "▶ 自动领取每日奖励(1-7) --雪天缤纷",
    Default  = false,
    Callback = function(v)
        getgenv().NNVN_AutoClaimDaily = v
        if v then
            if dailyCo then coroutine.close(dailyCo); dailyCo = nil end
            dailyCo = coroutine.create(function()
                while getgenv().NNVN_AutoClaimDaily do
                    pcall(function()
                        -- [PROX] move near daily NPC before claims
                        TPNearDailyNPC()
                        for i = 1, 7 do
                            if not getgenv().NNVN_AutoClaimDaily then break end
                            ReplicatedStorage.Events.DailyReward:FireServer(i)
                            task.wait(getgenv().NNVN_ClaimDailyDelay or 1)
                        end
                    end)
                    task.wait(5)
                end
            end)
            coroutine.resume(dailyCo)
        else
            if dailyCo then coroutine.close(dailyCo); dailyCo = nil end
        end
    end
})
dailySec:AddSlider("ClaimDailyDelay", {
    Title    = "◉ 领取间隔(秒) --雪天缤纷",
    Default  = 1, Min = 0.5, Max = 5, Rounding = 0.5,
    Callback = function(v) getgenv().NNVN_ClaimDailyDelay = v end,
})

dailyQuestSec = Tabs.Quest:AddSection("◆ 每日任务(自动) --雪天缤纷")
dailyQuestSec:AddParagraph({
    Title   = "检测到的任务类型 --雪天缤纷",
    Content = "钓鱼 | 巨物任务 | 鱼饵 | 游戏时间\n巨物门票目标已跳过并通知。"
})
dailyQuestSec:AddButton({
    Title    = "▣ 领取所有每日任务奖励 --雪天缤纷",
    -- [PROX] TP near daily NPC first
    Callback = function()
        task.spawn(function()
            pcall(function()
                TPNearDailyNPC()
                local data  = ReplicatedStorage:FindFirstChild("Data")
                local pd    = data and data:FindFirstChild(tostring(LocalPlayer.UserId))
                local daily = pd and pd:FindFirstChild("Quest") and pd.Quest:FindFirstChild("Daily")
                if not daily then
                    if getgenv().NNVN_Notify then WindUI:Notify{Title="", Content="未找到每日任务", Duration=2} end
                    return
                end
                local claimed = 0
                for _, q in ipairs(daily:GetChildren()) do
                    pcall(function()
                        ReplicatedStorage.Events.DailyReward:FireServer(tonumber(q.Name))
                        claimed = claimed + 1
                    end)
                    task.wait(0.3)
                end
                if getgenv().NNVN_Notify then WindUI:Notify{Title="", Content="已发送 "..claimed.." 份每日奖励领取！", Duration=3} end
            end)
        end)
    end
})

-- God Spirit
godSec = Tabs.Quest:AddSection("◇ 神灵")
godStatusLabel = godSec:AddParagraph({ Title = "状态 --雪天缤纷", Content = "🔴 离线" })
godStatusCo    = nil
godSec:AddToggle("AutoCheckGodStatus", {
    Title    = "▶ 自动检查状态 --雪天缤纷",
    Default  = false,
    Callback = function(v)
        if v then
            if godStatusCo then coroutine.close(godStatusCo); godStatusCo = nil end
            godStatusCo = coroutine.create(function()
                while true do
                    local found = GodExists()
                    pcall(function()
                        godStatusLabel:SetDesc(found and "🟢 Online — God Spirit in this server!" or "🔴 Offline")
                    end)
                    task.wait(3)
                end
            end)
            coroutine.resume(godStatusCo)
        else
            if godStatusCo then coroutine.close(godStatusCo); godStatusCo = nil end
            pcall(function() godStatusLabel:SetDesc("🔴 Offline") end)
        end
    end,
})
GodSpiritCo = nil
godSec:AddToggle("AutoGodSpirit", {
    Title    = "▶ 自动神灵(传送+互动+祈祷) --雪天缤纷",
    Default  = false,
    Callback = function(v)
        getgenv().NNVN_AutoGodSpirit = v
        if v then
            if GodSpiritCo then coroutine.close(GodSpiritCo); GodSpiritCo = nil end
            GodSpiritCo = coroutine.create(function()
                while getgenv().NNVN_AutoGodSpirit do
                    local godFolder = Workspace:FindFirstChild("NPC") and Workspace.NPC:FindFirstChild("God")
                    if godFolder and #godFolder:GetChildren() > 0 then
                        for _, npc in ipairs(godFolder:GetChildren()) do
                            if not getgenv().NNVN_AutoGodSpirit then break end
                            if npc:IsA("Model") then
                                local data = ReplicatedStorage:FindFirstChild("Data")
                                local pd   = data and data:FindFirstChild(tostring(LocalPlayer.UserId))
                                local gs   = pd and pd:FindFirstChild("GodSpirit")
                                local alreadyPrayed = gs and gs:FindFirstChild(npc.Name)
                                    and gs[npc.Name]:IsA("BoolValue") and gs[npc.Name].Value
                                if not alreadyPrayed then
                                    -- [PROX] handled inside InteractWithGodNPC
                                    InteractWithGodNPC(npc)
                                    task.wait(1.5)
                                    if getgenv().NNVN_Notify then
                                        WindUI:Notify{Title="God Spirit --雪天缤纷", Content="已向 "..npc.Name, Duration=3}
                                    end
                                else
                                    if getgenv().NNVN_Notify then
                                        WindUI:Notify{Title="God Spirit --雪天缤纷", Content=npc.Name.." already prayed today", Duration=2}
                                    end
                                end
                                task.wait(0.5)
                            end
                        end
                        task.wait(5)
                    else
                        task.wait(5)
                    end
                end
            end)
            coroutine.resume(GodSpiritCo)
        else
            if GodSpiritCo then coroutine.close(GodSpiritCo); GodSpiritCo = nil end
        end
    end
})
godSec:AddButton({
    Title    = "▣ 立即向所有神灵祈祷 --雪天缤纷",
    Callback = function()
        task.spawn(function()
            local godFolder = Workspace:FindFirstChild("NPC") and Workspace.NPC:FindFirstChild("God")
            if not godFolder or #godFolder:GetChildren() == 0 then
                if getgenv().NNVN_Notify then WindUI:Notify{Title="", Content="此服务器没有神灵！", Duration=2} end
                return
            end
            for _, npc in ipairs(godFolder:GetChildren()) do
                if npc:IsA("Model") then
                    InteractWithGodNPC(npc)
                    task.wait(1)
                end
            end
            if getgenv().NNVN_Notify then WindUI:Notify{Title="", Content="已向所有神灵祈祷！", Duration=3} end
        end)
    end
})

-- ====================================================
-- 12. TAB: BANNER (Auto Gacha) — [PROX] TP near gacha NPC
-- ====================================================
bannerSec          = Tabs.Banner:AddSection("◆ 自动抽卡 --雪天缤纷")
gachaBannerOptions = {"Egoless Banner", "Celestial Banner"}
gachaAmountOptions = {"1", "10"}
selectedBanner     = gachaBannerOptions[1]
selectedGachaAmount = "1"

bannerSec:AddDropdown("NNVN_GachaBanner", {
    Title    = "◉ 选择卡池 --雪天缤纷",
    Values   = gachaBannerOptions,
    Default  = selectedBanner,
    Callback = function(v) getgenv().NNVN_GachaBanner = v; selectedBanner = v end
})
bannerSec:AddDropdown("NNVN_GachaAmount", {
    Title    = "◉ 每次抽取门票数 --雪天缤纷",
    Values   = gachaAmountOptions,
    Default  = "1",
    Callback = function(v) getgenv().NNVN_GachaAmount = tonumber(v) or 1; selectedGachaAmount = v end
})

gachaCo = nil
bannerSec:AddToggle("NNVN_AutoGacha", {
    Title    = "▶ 自动抽卡 --雪天缤纷",
    Default  = false,
    Callback = function(v)
        getgenv().NNVN_AutoGacha = v
        if v then
            if gachaCo then coroutine.close(gachaCo); gachaCo = nil end
            gachaCo = coroutine.create(function()
                while getgenv().NNVN_AutoGacha do
                    pcall(function()
                        local ticketCount  = GetTicketCount()
                        local needed       = getgenv().NNVN_GachaAmount or 1
                        local crystalCount = GetCrystals()
                        local canRoll      = false
                        if ticketCount >= needed then
                            canRoll = true
                        else
                            local missing        = needed - ticketCount
                            local crystalsNeeded = missing * 5
                            if crystalCount >= crystalsNeeded then
                                canRoll = true
                            else
                                WindUI:Notify{Title="Gacha --雪天缤纷", Content="门票/水晶不足！需要 "..crystalsNeeded.." (have "..crystalCount.."). Stopping.", Duration=4}
                                getgenv().NNVN_AutoGacha = false
                            end
                        end
                        if canRoll then
                            -- [PROX] TP near gacha NPC before rolling
                            TPNearGachaNPC()
                            local isTen = (selectedGachaAmount == "10")
                            ReplicatedStorage.Events.Gacha:FireServer(isTen, selectedBanner)
                            WindUI:Notify{Title="Gacha --雪天缤纷", Content="已抽取 "..selectedGachaAmount.."x on "..selectedBanner, Duration=2}
                        end
                    end)
                    task.wait(2)
                end
            end)
            coroutine.resume(gachaCo)
        else
            if gachaCo then coroutine.close(gachaCo); gachaCo = nil end
            WindUI:Notify{Title="Gacha --雪天缤纷", Content="已停止", Duration=2}
        end
    end
})

-- ====================================================
-- 13. TAB: UPGRADE (Auto Rebirth) — [PROX] TP near rebirth NPC
-- ====================================================
-- ====================================================
-- TeleportList (pre-declare for island/material features)
-- ====================================================
TeleportList = {
    {name="Beginning Isle",  cf=CFrame.new(-213.939972,6.76193953,33.2846527)},
    {name="Bamboo Isle",     cf=CFrame.new(-1184.15674,10.6356201,-84.3372498)},
    {name="Fallout Isle",    cf=CFrame.new(-6.55301952,6.24169779,1185.16528)},
    {name="Sovereign Isle",  cf=CFrame.new(-1248.17249,7.31857586,1208.54199)},
    {name="Perch Isle",      cf=CFrame.new(-61.9632416,-8.2120657,-1310.39124)},
    {name="Frost Isle",      cf=CFrame.new(-1328.79614,7.63562012,-1488.55383)},
    {name="Coconut Isle",    cf=CFrame.new(1429.93628,7.63562012,-1478.6311)},
    {name="Amber Isle",      cf=CFrame.new(1239.81299,10.6663065,1335.96521)},
    {name="Battlefield Isle",cf=CFrame.new(1394.1842,9.27561855,200.794785)},
    {name="Mistpeak Isle",   cf=CFrame.new(2611.62134,9.27561855,-81.6781845)},
}

-- ====================================================
-- 14. TAB: CRAFT BAIT
-- ====================================================
matSec = Tabs.Bait:AddSection("🧰 材料刷取 --雪天缤纷")
matSec:AddParagraph({ Title = "ℹ️ 信息 --雪天缤纷", Content = "刷取制作鱼饵所需的鱼类重量。" })

matBaitOptions  = {"Rainbow Bait", "Frost Bait", "Nameless Bait"}
selectedMatBait = getgenv().NNVN_MaterialBait or "Rainbow Bait"
matSec:AddDropdown("NNVN_MaterialBait", {
    Title    = "◉ 选择要制作的鱼饵 --雪天缤纷",
    Values   = matBaitOptions,
    Default  = selectedMatBait,
    Callback = function(v) getgenv().NNVN_MaterialBait = v; selectedMatBait = v end
})

BAIT_RECIPES = {
    ["Rainbow Bait"] = {
        {name = "Colossal Tigerfish",         minKg = 3000000, maxKg = 6000000},
        {name = "Heavenpiercer Turtle",        minKg = 3000000, maxKg = 6000000},
        {name = "Golden Guardian Fish",        minKg = 1000000, maxKg = 3000000},
        {name = "Crimson Electric Eel",        minKg = 3000000, maxKg = 4000000},
    },
    ["Frost Bait"] = {
        {name = "Frost Kingfish",              minKg = 4000000, maxKg = 7000000},
        {name = "Ascended Perch",              minKg = 900000,  maxKg = 1000000},
        {name = "Primordial Kunfish Overlord", minKg = 1000000, maxKg = 1600000},
        {name = "Warbringer Shark",            minKg = 500000,  maxKg = 800000},
    }
}

MAT_WEATHER_REQUIRED = {
    ["Frost Kingfish"]      = { weathers = { snowy = true, frost = true }, island = "Frost Isle",   label = "Snowy" },
    ["Heavenpiercer Turtle"]= { weathers = { foggy = true },               island = "Coconut Isle", label = "Foggy" },
    ["Crimson Electric Eel"]= { weathers = { thunderstorm = true },        island = "Bamboo Isle",  label = "Thunderstorm" },
}
MAT_FISH_CFRAME = {
    ["Crimson Electric Eel"]  = CFrame.new(-1311.6228, 9.27561855, -17.8612099),
    ["Heavenpiercer Turtle"]  = CFrame.new(1372.05164, 9.27561855, -1458.41187),
}
NAMELESS_BAIT_FARM_CFRAME = fixedPositions["Nameless Bait Farm"]

matIslandNameToIsland = {}
for _, island in ipairs(TeleportList) do matIslandNameToIsland[island.name] = island end

function matGetIslandsForFish(fishName)
    local result = {}
    local ok, areaRarity = pcall(require, ReplicatedStorage.Info.FishingAreaRarity)
    if not ok then return result end
    local islandOrder = {
        "Beginning Isle","Bamboo Isle","Fallout Isle","Sovereign Isle","Perch Isle","Frost Isle",
        "Coconut Isle","Amber Isle","Battlefield Isle","Mistpeak Isle"
    }
    for _, islandName in ipairs(islandOrder) do
        local fishList = areaRarity[islandName]
        if fishList and fishList[fishName] then table.insert(result, islandName) end
    end
    return result
end

function matGetMaterialCount(fishName, minKg, maxKg)
    local userData = ReplicatedStorage.Data:FindFirstChild(tostring(LocalPlayer.UserId))
    if not userData then return 0 end
    local inventory = userData:FindFirstChild("Inventory")
    if not inventory then return 0 end
    local count = 0
    for _, item in pairs(inventory:GetChildren()) do
        if item.Name == fishName then
            local weightString = nil
            if item:IsA("StringValue") then
                local parts = {}
                for part in string.gmatch(item.Value, "[^|]+") do table.insert(parts, part) end
                if #parts >= 2 then weightString = parts[2]:gsub("^%s+", ""):gsub("%s+$", "") end
            elseif item:IsA("NumberValue") or item:IsA("IntValue") then
                weightString = tostring(item.Value)
            end
            if weightString then
                local weight = tonumber(weightString)
                if weight and weight >= minKg and weight <= maxKg then count = count + 1 end
            end
        end
    end
    return count
end

function matTeleportToIsland(islandName)
    local island = matIslandNameToIsland[islandName]
    if not island then return false end
    local char = LocalPlayer.Character
    if not char then return false end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if hrp then
        hrp.CFrame = CFrame.new(island.cf.Position) + Vector3.new(0,5,0)
        return true
    end
    return false
end

function matCancelFishing()
    local char = LocalPlayer.Character
    if not char then return end
    if not char:GetAttribute("Fishing") then return end
    local root = char:FindFirstChild("HumanoidRootPart")
    if root then pcall(function() ReplicatedStorage.Events.Fishing:FireServer(root.CFrame) end) end
end

function matEnableFishing()
    if not getgenv().NNVN_MaterialPrevFlags then
        getgenv().NNVN_MaterialPrevFlags = {
            AutoCast = getgenv().NNVN_AutoCast,
            Anchor = getgenv().NNVN_Anchor,
            AutoSkill = getgenv().NNVN_AutoSkill,
        }
    end
    getgenv().NNVN_AutoCast  = true
    getgenv().NNVN_Anchor    = true
    getgenv().NNVN_AutoSkill = true
end

function matDisableFishing()
    local prev = getgenv().NNVN_MaterialPrevFlags
    if prev then
        getgenv().NNVN_AutoCast  = prev.AutoCast and true or false
        getgenv().NNVN_Anchor    = prev.Anchor and true or false
        getgenv().NNVN_AutoSkill = prev.AutoSkill and true or false
    else
        getgenv().NNVN_AutoCast  = false
        getgenv().NNVN_Anchor    = false
        getgenv().NNVN_AutoSkill = false
    end
    getgenv().NNVN_MaterialPrevFlags = nil
end

function getCurrentWeather()
    local info = MainGui:FindFirstChild("Info")
    if info then
        local infoFrame = info:FindFirstChild("Info")
        if infoFrame then
            local weatherFrame = infoFrame:FindFirstChild("Weather")
            if weatherFrame then
                local val = weatherFrame:FindFirstChild("Value")
                if val then
                    local text = val:IsA("TextLabel") and val.Text or val.Value
                    return text:gsub("Weather:%s*", "")
                end
            end
        end
    end
    return "Clear"
end

matCo = nil
materialCurrentTarget = nil
matSec:AddToggle("NNVN_MaterialFarming", {
    Title    = "▶ 自动刷材料 --雪天缤纷",
    Default  = false,
    Callback = function(v)
        getgenv().NNVN_MaterialFarming = v
        if v then
            if matCo then coroutine.close(matCo); matCo = nil end
            matCo = coroutine.create(function()
                while getgenv().NNVN_MaterialFarming do
                    pcall(function()
                        if selectedMatBait == "Nameless Bait" then
                            local char = LocalPlayer.Character
                            local hrp = char and char:FindFirstChild("HumanoidRootPart")
                            if hrp and NAMELESS_BAIT_FARM_CFRAME and (hrp.Position - NAMELESS_BAIT_FARM_CFRAME.Position).Magnitude > 5 then
                                if char:GetAttribute("Fishing") then matCancelFishing(); task.wait(0.1) end
                                hrp.CFrame = NAMELESS_BAIT_FARM_CFRAME
                            end
                            matEnableFishing()
                            materialCurrentTarget = "Nameless Bait"
                            return
                        end

                        local recipe = BAIT_RECIPES[selectedMatBait]
                        if not recipe or #recipe == 0 then return end
                        local targetReq, minCount = nil, math.huge
                        for _, req in ipairs(recipe) do
                            local c = matGetMaterialCount(req.name, req.minKg, req.maxKg)
                            if c < minCount then minCount = c; targetReq = req end
                        end
                        if not targetReq then return end
                        local fishName = targetReq.name
                        local weather  = string.lower(getCurrentWeather())
                        local req      = MAT_WEATHER_REQUIRED[fishName]
                        if req then
                            local ok = false
                            for w in pairs(req.weathers) do if weather == w then ok = true end end
                            if not ok then
                                materialCurrentTarget = nil
                                WindUI:Notify{Title="Material --雪天缤纷", Content=fishName.." requires "..req.label..". Waiting...", Duration=3}
                                task.wait(5)
                                return
                            end
                            local fishCF = MAT_FISH_CFRAME[fishName]
                            local char   = LocalPlayer.Character
                            local hrp    = char and char:FindFirstChild("HumanoidRootPart")
                            if fishCF and hrp then
                                if (hrp.Position - fishCF.Position).Magnitude > 5 then
                                    if char:GetAttribute("Fishing") then matCancelFishing(); task.wait(0.1) end
                                    hrp.CFrame = fishCF
                                end
                            else
                                matTeleportToIsland(req.island)
                            end
                            matEnableFishing()
                            materialCurrentTarget = fishName
                            return
                        end
                        local islandsForFish = matGetIslandsForFish(fishName)
                        if #islandsForFish == 0 then return end
                        local targetIsland = matIslandNameToIsland[islandsForFish[1]]
                        if not targetIsland then return end
                        local char = LocalPlayer.Character
                        local hrp  = char and char:FindFirstChild("HumanoidRootPart")
                        if not hrp then return end
                        if (hrp.Position - targetIsland.cf.Position).Magnitude > 5 then
                            if char:GetAttribute("Fishing") then matCancelFishing(); task.wait(0.1) end
                            matTeleportToIsland(islandsForFish[1])
                        end
                        matEnableFishing()
                        materialCurrentTarget = fishName
                    end)
                    task.wait(0.5)
                end
                matDisableFishing()
            end)
            coroutine.resume(matCo)
        else
            if matCo then coroutine.close(matCo); matCo = nil end
            matDisableFishing()
            materialCurrentTarget = nil
            WindUI:Notify{Title="Material --雪天缤纷", Content="已停止", Duration=2}
        end
    end
})

craftSec = Tabs.Bait:AddSection("🧪 制作鱼饵 --雪天缤纷")
craftSec:AddParagraph({ Title = "ℹ️ 信息 --雪天缤纷", Content = "在鱼饵商处制作所选鱼饵。数量限制为 1 到 100。" })

craftBaitOptions = {"Rainbow Bait", "Frost Bait", "Nameless Bait"}
selectedCraftBait = getgenv().NNVN_CraftBaitName or "Rainbow Bait"
craftSec:AddDropdown("NNVN_CraftBaitName", {
    Title    = "◉ 选择鱼饵 --雪天缤纷",
    Values   = craftBaitOptions,
    Default  = selectedCraftBait,
    Callback = function(v)
        selectedCraftBait = v or "Rainbow Bait"
        getgenv().NNVN_CraftBaitName = selectedCraftBait
    end,
})
craftSec:AddInput("NNVN_CraftBaitQuantityInput", {
    Title       = "• 制作数量 --雪天缤纷",
    Placeholder = "1 - 100",
    Default     = tostring(getgenv().NNVN_CraftBaitQuantity or 1),
    Callback    = function(value)
        craftAmount = math.clamp(math.floor(tonumber(value) or 1), 1, 100)
        getgenv().NNVN_CraftBaitQuantity = craftAmount
    end,
})

function CraftSelectedBait(amount)
    craftAmount = math.clamp(math.floor(tonumber(amount) or getgenv().NNVN_CraftBaitQuantity or 1), 1, 100)
    craftName = selectedCraftBait or getgenv().NNVN_CraftBaitName or "Rainbow Bait"
    WithSavedPosition(function()
        if not TPNearBaitSeller() then return end
        task.wait(0.25)
        ReplicatedStorage.Events.CraftBait:FireServer(craftName, craftAmount)
        task.wait(0.25)
    end)
end

craftSec:AddButton({
    Title    = "▸ 制作一次 --雪天缤纷",
    Callback = function()
        CraftSelectedBait(getgenv().NNVN_CraftBaitQuantity or 1)
        if getgenv().NNVN_Notify then
            WindUI:Notify{Title="制作鱼饵 --雪天缤纷", Content="已制作 "..tostring(getgenv().NNVN_CraftBaitQuantity or 1).."x "..tostring(selectedCraftBait or "Rainbow Bait"), Duration=2}
        end
    end,
})
craftSec:AddToggle("NNVN_AutoCraftBait", {
    Title   = "▶ 自动制作鱼饵 --雪天缤纷",
    Default = false,
    Callback = function(v)
        getgenv().NNVN_AutoCraftBait = v
        if getgenv().NNVN_Notify then
            WindUI:Notify{Title="制作鱼饵 --雪天缤纷", Content=v and "Auto craft enabled" or "Auto craft disabled", Duration=2}
        end
    end,
})

if not getgenv().NNVN_AutoCraftBaitLoop then
    getgenv().NNVN_AutoCraftBaitLoop = true
    task.spawn(function()
        while task.wait(3) do
            if getgenv().NNVN_AutoCraftBait then
                CraftSelectedBait(getgenv().NNVN_CraftBaitQuantity or 1)
            end
        end
    end)
end

-- ====================================================
-- 15. TAB: AUTO SELL — [PROX] TP near Nana before every sell
-- ====================================================
sellSec = Tabs.Sell:AddSection("◆ 自动出售鱼 --雪天缤纷")
sellSec:AddToggle("NNVN_AutoSell", {
    Title    = "▶ 自动出售所有鱼 --雪天缤纷",
    Default  = false,
    Callback = function(v)
        getgenv().NNVN_AutoSell = v
        if v and getgenv().NNVN_Notify then
            WindUI:Notify{Title="自动出售 --雪天缤纷", Content="已启用(每 "..(getgenv().NNVN_SellDelay or 5).."s)", Duration=2}
        end
    end,
})
sellSec:AddSlider("NNVN_SellDelay", {
    Title    = "◉ 出售间隔(秒) --雪天缤纷",
    Default  = 5, Min = 1, Max = 60, Rounding = 1,
    Callback = function(v) getgenv().NNVN_SellDelay = v end,
})
sellSec:AddButton({
    Title    = "▣ 立即出售所有鱼 --雪天缤纷",
    -- [PROX]
    Callback = function()
        task.spawn(function()
            TPNear("Nana")
            pcall(function() ReplicatedStorage.Events.SellFish:FireServer("All") end)
            if getgenv().NNVN_Notify then WindUI:Notify{Title="Sell --雪天缤纷", Content="已出售所有鱼！", Duration=2} end
        end)
    end,
})
sellSec:AddButton({
    Title    = "▣ 传送到娜娜(出售NPC) --雪天缤纷",
    Callback = function()
        pcall(function() TeleportToNPCWithFallback("Nana") end)
    end,
})

-- ====================================================
-- 16. TAB: TELEPORT
-- ====================================================
weatherIslands = {
    ["foggy"]       = "Coconut Isle",
    ["blazing sun"] = "Amber Isle",
    ["snowy"]       = "Frost Isle",
    ["windy"]       = "Perch Isle",
    ["rainy"]       = "Fallout Isle",
    ["thunderstorm"]= "Bamboo Isle",
}

islandTpSec = Tabs.Teleport:AddSection("岛屿传送 --雪天缤纷")
islandNames = {}
for _, island in ipairs(TeleportList) do
    table.insert(islandNames, island.name)
end
selectedIslandName = islandNames[1] or "Beginning Isle"
islandTpSec:AddDropdown("NNVN_IslandTeleport", {
    Title    = "选择岛屿 --雪天缤纷",
    Values   = islandNames,
    Default  = selectedIslandName,
    Callback = function(v)
        selectedIslandName = v or selectedIslandName
    end,
})
islandTpSec:AddButton({
    Title    = "传送到所选岛屿 --雪天缤纷",
    Callback = function()
        if not selectedIslandName then return end
        matTeleportToIsland(selectedIslandName)
        if getgenv().NNVN_Notify then
            WindUI:Notify{Title="传送 --雪天缤纷", Content="已传送到 "..selectedIslandName, Duration=2}
        end
    end,
})

Tabs.Teleport:AddButton({
    Title    = "▣ 传送到当前天气岛屿 --雪天缤纷",
    Callback = function()
        local weather    = getCurrentWeather()
        local targetName = weatherIslands[weather:lower()]
        if not targetName then
            WindUI:Notify{Title="", Content="当前没有特殊天气", Duration=2}
            return
        end
        for _, v in ipairs(TeleportList) do
            if v.name:lower() == targetName:lower() then
                TeleportToCFrame(v.cf)
                WindUI:Notify{Title="", Content="已传送到 "..targetName.." for "..weather, Duration=3}
                return
            end
        end
        WindUI:Notify{Title="", Content="未知天气映射", Duration=2}
    end
})

-- Join by Job ID
jobIdSec = Tabs.Teleport:AddSection("◆ 按服务器ID换服 --雪天缤纷")
lastHopAt = 0
jobIdSec:AddInput("NNVN_JobIdInput", {
    Title       = "输入服务器 ID --雪天缤纷",
    Placeholder = "Paste Job ID here...",
    Default     = "",
    Callback    = function(text)
        if not text or text == "" then return end
        local finalJobId = text
        local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
        local function b64decode(data)
            data = string.gsub(data, '[^'..b64chars..'=]', '')
            return (data:gsub('.', function(x)
                if x == '=' then return '' end
                local r, f = '', (b64chars:find(x, 1, true) - 1)
                for i = 6, 1, -1 do r = r .. (f % 2^i - f % 2^(i-1) > 0 and '1' or '0') end
                return r
            end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
                if #x ~= 8 then return '' end
                local c = 0
                for i = 1, 8 do c = c + (x:sub(i,i) == '1' and 2^(8-i) or 0) end
                return string.char(c)
            end))
        end
        local matchB64 = string.match(text, "NNVNHUB|([^%s]+)")
        if matchB64 then
            local ok, decoded = pcall(b64decode, matchB64)
            if ok and type(decoded) == "string" and decoded ~= "" then finalJobId = decoded end
        end
        if finalJobId == game.JobId then
            WindUI:Notify{Title="", Content="已在该服务器。", Duration=2}
            return
        end
        if tick() - lastHopAt < 30 then
            WindUI:Notify{Title="", Content="换服冷却(30秒)", Duration=2}
            return
        end
        lastHopAt = tick()
        WindUI:Notify{Title="", Content="正在加入服务器...", Duration=3}
        TeleportService:TeleportToPlaceInstance(PlaceId, finalJobId, LocalPlayer)
    end
})

-- Secret rod locations
secretRodData = {
    {name="Ascendant Bamboo Rod", price=15,  cf=CFrame.new(-1360.65027,140.561218,31.0494728)},
    {name="Blazeshark Rod",       price=35,  cf=CFrame.new(-8.43965149,53.8742065,6.65357065)},
    {name="Lifebloom Rod",        price=75,  cf=CFrame.new(-114.889297,74.8509827,-1533.19177)},
    {name="Anchorbound Rod",      price=200, cf=CFrame.new(-1208.55396,56.3270988,1646.20764)},
    {name="Demonic Rod",          price=300, cf=CFrame.new(1181.90454,82.8990021,-1243.75549)},
    {name="Kraken Rod",           price=500, cf=CFrame.new(1543.79529,73.4329834,1490.93457)},
}
secretRodTpSec = Tabs.Teleport:AddSection("◆ 隐藏鱼竿位置")
for _, rod in ipairs(secretRodData) do
    secretRodTpSec:AddButton({ Title = "▣ "..rod.name, Callback = function()
        pcall(function() TeleportToCFrame(rod.cf) end)
    end })
end

-- NPC teleport
npcSection = Tabs.Teleport:AddSection("◆ NPC 传送")
NPCGroups = {
    [" Spawn Boat"]      = { "Select...","ChuXin 1","ChuXin 2","ChuXin 3","ChuXin 4","ChuXin 5","ChuXin 6","ChuXin 7","ChuXin 8","ChuXin 9","ChuXin 10" },
    [" Buy Bait"]        = { "Select...","Ba Chang","AmberIsle's Ba Thuong","Ba Thuong","Bait Seller","Coconut Isle's Ba Thuong","Frost Isle's Ba Thuong","Perch Isle's Ba Thuong","Sovereign Isle's Ba Thuong" },
    [" Buy Fishing Rod"] = { "Select...","Amber Isle's Rod Seller","Bamboo Isle's Rod Seller","Beginning Isle's Rod Seller","Fallout Isle's Rod Seller","Sovereign Isle's Rod Seller","Coconut Isle's Rod Dealer","Frost Isle's Rod Dealer" },
    [" Sell Fish"]       = { "Select...","Nana" },
    [" Learning Skill"]  = { "Select...","Sage Yijiu" },
    [" Set Spawn"]       = { "Select...","SetSpawn","Battlefield Isle's Phi Thien","Mistpeak Isle's Phi Thien","Phi Thien 1","Phi Thien 2","Phi Thien 3","Phi Thien 4","Phi Thien 5","Phi Thien 6","Phi Thien 7","Phi Thien 8" },
    [" Misc NPCs"]       = { "Select...","Bac Minh","Battlefield Isle's Giang Lao","Blind Grand Angler","Giang Lao","Ha Dieu De","Lao Ngo","Nanjiang","Tang Thien Quoc","Taoist","Ticket Quest Giver","Phi Thien","Zeng Tianguo" },
}
selectedNPCs = {}

local function GetOtherPlayerNames()
    local names = {}
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then
            table.insert(names, plr.Name)
        end
    end
    table.sort(names, function(a, b)
        return string.lower(a) < string.lower(b)
    end)
    if #names == 0 then
        table.insert(names, "No Players")
    end
    return names
end

local function TeleportToPlayerByName(playerName)
    if not playerName or playerName == "" or playerName == "No Players" then
        return false
    end
    local targetPlayer = Players:FindFirstChild(playerName)
    local targetChar = targetPlayer and targetPlayer.Character
    local targetRoot = targetChar and targetChar:FindFirstChild("HumanoidRootPart")
    local myChar = LocalPlayer.Character
    local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
    if not myRoot or not targetRoot then
        return false
    end
    pcall(function()
        myRoot.CFrame = targetRoot.CFrame * CFrame.new(0, 0, 3) + Vector3.new(0, 2, 0)
    end)
    return true
end

for groupName, npcList in pairs(NPCGroups) do
    npcSection:AddDropdown("NPC_"..groupName, {
        Title    = "◉ "..groupName,
        Values   = npcList,
        Default  = "Select...",
        Callback = function(sel) selectedNPCs[groupName] = sel end,
    })
    npcSection:AddButton({
        Title    = "▣ 传送到所选 "..groupName,
        Callback = function()
            local sel = selectedNPCs[groupName]
            if sel and sel ~= "Select..." then
                pcall(function() TeleportToNPCWithFallback(sel) end)
            end
        end
    })
end

local playerTpSec = Tabs.Teleport:AddSection("◆ 玩家传送 --雪天缤纷")
local selectedTeleportPlayer = "No Players"
local playerDropdown = playerTpSec:AddDropdown("NNVN_TeleportPlayerTarget", {
    Title = "◉ 选择玩家 --雪天缤纷",
    Values = GetOtherPlayerNames(),
    Default = "No Players",
    Callback = function(value)
        selectedTeleportPlayer = value
    end,
})
playerTpSec:AddButton({
    Title = "刷新玩家列表 --雪天缤纷",
    Callback = function()
        local names = GetOtherPlayerNames()
        if playerDropdown and playerDropdown.Refresh then
            playerDropdown:Refresh(names)
        end
        if #names > 0 then
            selectedTeleportPlayer = names[1]
        end
    end
})
playerTpSec:AddButton({
    Title = "传送到所选玩家 --雪天缤纷",
    Callback = function()
        local ok = TeleportToPlayerByName(selectedTeleportPlayer)
        if getgenv().NNVN_Notify then
            WindUI:Notify{
                Title = "传送玩家 --雪天缤纷",
                Content = ok and ("Teleported to "..selectedTeleportPlayer) or "Could not teleport to that player",
                Duration = 3
            }
        end
    end
})

function addSpecialTeleportSection(tabRef, name, path)
    local sec         = tabRef:AddSection("◇ "..name.." Teleport")
    local statusLabel = sec:AddParagraph({ Title = "状态 --雪天缤纷", Content = "🔴 离线" })
    local co          = nil
    sec:AddToggle("AutoCheck"..name, {
        Title    = "▶ 自动检查状态 --雪天缤纷",
        Default  = false,
        Callback = function(v)
            if v then
                if co then coroutine.close(co); co = nil end
                co = coroutine.create(function()
                    while true do
                        local found = ObjectExists(path)
                        pcall(function()
                            statusLabel:SetDesc(found and ("🟢 Online — "..name.." is here!") or "🔴 Offline")
                        end)
                        task.wait(3)
                    end
                end)
                coroutine.resume(co)
            else
                if co then coroutine.close(co); co = nil end
                pcall(function() statusLabel:SetDesc("🔴 Offline") end)
            end
        end
    })
    sec:AddButton({ Title = "▣ 传送到 "..name, Callback = function()
        TeleportToNPCWithFallback(name)
    end })
end
addSpecialTeleportSection(Tabs.Teleport, "Maoshan", {"NPC","Function","Maoshan"})
addSpecialTeleportSection(Tabs.Teleport, "Taoist",  {"NPC","Function","Taoist"})

-- ====================================================
-- 17. TAB: BUY ROD — [PROX] TP near rod seller before buying
-- ====================================================
function formatPrice(p)
    local f = tostring(p):reverse():gsub("(%d%d%d)","%1,"):reverse()
    if f:sub(1,1) == "," then f = f:sub(2) end
    return f
end

rodData = {
    {name="Bamboo Rod",              price=100,       seller="Beginning Isle's Rod Seller"},
    {name="Iron Hook Rod",           price=500,       seller="Beginning Isle's Rod Seller"},
    {name="Steel Rod",               price=1000,      seller="Beginning Isle's Rod Seller"},
    {name="Enchanted Steel Rod",     price=2000,      seller="Beginning Isle's Rod Seller"},
    {name="Alloy Rod",               price=5000,      seller="Bamboo Isle's Rod Seller"},
    {name="Emerald Rod",             price=10000,     seller="Bamboo Isle's Rod Seller"},
    {name="Bloodfire Rod",           price=20000,     seller="Bamboo Isle's Rod Seller"},
    {name="Triple Steel Rod",        price=100000,    seller="Fallout Isle's Rod Seller"},
    {name="Golden Rod",              price=200000,    seller="Fallout Isle's Rod Seller"},
    {name="Grandmaster Steel Rod",   price=250000,    seller="Sovereign Isle's Rod Seller"},
    {name="Grandmaster Emerald Rod", price=500000,    seller="Sovereign Isle's Rod Seller"},
    {name="Grandmaster Golden Rod",  price=1000000,   seller="Sovereign Isle's Rod Seller"},
    {name="Inferno Rod",             price=1500000,   seller="Sovereign Isle's Rod Seller"},
    {name="Steel Spine Rod",         price=1500000,   seller="Frost Isle's Rod Seller"},
    {name="Golden Spine Rod",        price=2000000,   seller="Frost Isle's Rod Seller"},
    {name="Platinum Spine Rod",      price=3000000,   seller="Frost Isle's Rod Seller"},
    {name="Diamond Spine Rod",       price=4000000,   seller="Frost Isle's Rod Seller"},
    {name="Gravisteel Rod",          price=5000000,   seller="Frost Isle's Rod Seller"},
    {name="Auric Gravity Rod",       price=6000000,   seller="Frost Isle's Rod Seller"},
    {name="Inferno Gravity Rod",     price=7000000,   seller="Frost Isle's Rod Seller"},
    {name="Cryo Gravity Rod",        price=8000000,   seller="Frost Isle's Rod Seller"},
    {name="Thunder Thorn Rod",       price=10000000,  seller="Coconut Isle's Rod Dealer"},
    {name="Soul Thorn Rod",          price=20000000,  seller="Coconut Isle's Rod Dealer"},
    {name="Starlight Rod",           price=60000000,  seller="Amber Isle's Rod Seller"},
}
table.sort(rodData, function(a,b) return a.price < b.price end)

rodGroups = {}
for _, rod in ipairs(rodData) do
    if not rodGroups[rod.seller] then rodGroups[rod.seller] = {} end
    table.insert(rodGroups[rod.seller], rod)
end
sortedSellers = {}
for seller, rods in pairs(rodGroups) do
    table.sort(rods, function(a,b) return a.price < b.price end)
    table.insert(sortedSellers, {seller=seller, minPrice=rods[1].price})
end
table.sort(sortedSellers, function(a,b) return a.minPrice < b.minPrice end)

for _, si in ipairs(sortedSellers) do
    local sec = Tabs.BuyRod:AddSection("◆ "..si.seller)
    for _, rod in ipairs(rodGroups[si.seller]) do
        local rodRef = rod   -- capture
        sec:AddButton({
            Title    = "▣ "..rodRef.name.." - $"..formatPrice(rodRef.price),
            -- [PROX] TP to that island's rod seller before buying
            Callback = function()
                task.spawn(function()
                    TPNearRodSeller(rodRef.seller)
                    pcall(function() ReplicatedStorage.Events.BuyFishingRod:FireServer(rodRef.name) end)
                    if getgenv().NNVN_Notify then
                        WindUI:Notify{Title="购买鱼竿 --雪天缤纷", Content="已购买 "..rodRef.name, Duration=2}
                    end
                end)
            end
        })
    end
end

secSec = Tabs.BuyRod:AddSection("◆ 隐藏鱼竿")
for _, rod in ipairs(secretRodData) do
    local rodRef = rod
    secSec:AddButton({
        Title    = "▣ "..rodRef.name.." - "..formatPrice(rodRef.price).." gem",
        -- [PROX] TP to secret rod location first, then buy
        Callback = function()
            task.spawn(function()
                TeleportToCFrame(rodRef.cf)
                task.wait(PROX_WAIT)
                pcall(function() ReplicatedStorage.Events.BuyFishingRod:FireServer(rodRef.name) end)
                if getgenv().NNVN_Notify then
                    WindUI:Notify{Title="购买鱼竿 --雪天缤纷", Content="已购买 "..rodRef.name, Duration=2}
                end
            end)
        end
    })
end

-- ====================================================
-- 18. TAB: LEARN SKILL — [PROX] TP near Sage Yijiu before buying
-- ====================================================
skillData = {
    {name="Skyfall Stomp",          price=100},
    {name="Infinite Sky Ascension", price=500},
    {name="Unshake Stance",         price=1000},
    {name="Swift Reel",             price=1200},
    {name="Demonfall Technique",    price=1400},
    {name="Reel Machine",           price=1600},
    {name="Reel Sprint",            price=2000},
    {name="Dragonfish Vitality",    price=5000},
    {name="Skybreaker Technique",   price=16000},
    {name="Aerial Rod Throw",       price=35000},
    {name="Thousand Enemy Sweep",   price=40000},
    {name="One-Strike Heaven Gate", price=50000},
    {name="Rolling Chaos",          price=50000},
    {name="Rooster Strike",         price=60000},
    {name="Phoenix Strike Art",     price=100000},
}
skillDisplayNames = {}
for _, s in ipairs(skillData) do
    table.insert(skillDisplayNames, s.name.." - $"..formatPrice(s.price))
end
learnSec   = Tabs.Learn:AddSection("◆ 小道士大师兄")
selSkillName = skillData[1].name
learnSec:AddDropdown("SkillSelection", {
    Title    = "◉ 选择钓法 --雪天缤纷",
    Values   = skillDisplayNames,
    Default  = skillDisplayNames[1],
    Callback = function(v)
        for _, s in ipairs(skillData) do
            if v == s.name.." - $"..formatPrice(s.price) then selSkillName = s.name; break end
        end
    end
})
learnSec:AddButton({
    Title    = "▣ 购买所选钓法 --雪天缤纷",
    -- [PROX] TP near Sage Yijiu before buying
    Callback = function()
        task.spawn(function()
            TPNear("Sage Yijiu")
            pcall(function() ReplicatedStorage.Events.BuySkill:FireServer(selSkillName) end)
            if getgenv().NNVN_Notify then
                WindUI:Notify{Title="钓法 --雪天缤纷", Content="已购买 "..selSkillName, Duration=2}
            end
        end)
    end
})
learnSec:AddButton({ Title = "▣ 传送到小道士大师兄", Callback = function()
    TeleportToNPCWithFallback("Sage Yijiu")
end })

-- ====================================================
-- 19. TAB: BAIT — [PROX] TP near bait seller before every buy
-- ====================================================
baitData = {
    {name="Basic Bait",             price=100},
    {name="Crude Mash Bait",        price=10000},
    {name="Corrupted Essence Bait", price=15000},
    {name="Elite Bait",             price=50000},
    {name="Ancestral Bait",         price=100000},
}
baitDisplayNames = {}
for _, b in ipairs(baitData) do table.insert(baitDisplayNames, b.name.." - $"..formatPrice(b.price)) end
baitSec = Tabs.Bait:AddSection("🛒 购买鱼饵 --雪天缤纷")
baitSec:AddDropdown("BaitSelection", {
    Title    = "◉ 选择鱼饵类型 --雪天缤纷",
    Values   = baitDisplayNames,
    Default  = baitDisplayNames[1],
    Callback = function(v)
        for _, b in ipairs(baitData) do
            if v == b.name.." - $"..formatPrice(b.price) then getgenv().NNVN_SelectedBait = b.name; break end
        end
    end
})
baitSec:AddToggle("AutoBuyBait", {
    Title    = "▶ 自动购买鱼饵 --雪天缤纷",
    Default  = false,
    Callback = function(v) getgenv().NNVN_AutoBuyBait = v end,
})
baitSec:AddSlider("AutoBuyBaitDelay", {
    Title    = "• 购买延迟(秒) --雪天缤纷",
    Default  = 3, Min = 1, Max = 60, Rounding = 1,
    Callback = function(v) getgenv().NNVN_AutoBuyBaitDelay = v end,
})
baitSec:AddSlider("BaitQuantity", {
    Title    = "• 每次购买数量 --雪天缤纷",
    Default  = 10, Min = 1, Max = 100, Rounding = 1,
    Callback = function(v) getgenv().NNVN_BaitQuantity = v end,
})
baitSec:AddSlider("NNVN_AutoBuyBaitThreshold", {
    Title    = "⬇ 低于此数量时购买 --雪天缤纷",
    Default  = 5, Min = 0, Max = 50, Rounding = 1,
    Callback = function(v) getgenv().NNVN_AutoBuyBaitThreshold = v end,
})

-- ====================================================
-- 20. TAB: ESP (unchanged logic, same as original)
-- ====================================================
getgenv().NNVN_ESP = {
    GodSpirit = false, SecretRod = false, Boats = false,
    Maoshan   = false, Taoist = false, Boss      = false, Players = false,
}
espHighlights = {}

function clearESP(key)
    if espHighlights[key] then
        for _, h in ipairs(espHighlights[key]) do pcall(function() h:Destroy() end) end
        espHighlights[key] = nil
    end
end

function makeHighlight(parent, fillColor, outlineColor, fillTrans, outlineTrans)
    local h = Instance.new("Highlight")
    h.FillColor           = fillColor    or Color3.fromRGB(255,255,0)
    h.OutlineColor        = outlineColor or Color3.fromRGB(255,255,255)
    h.FillTransparency    = fillTrans    or 0.5
    h.OutlineTransparency = outlineTrans or 0
    h.Parent              = parent
    return h
end

function addBillboard(parent, text, color, offset)
    local bb = Instance.new("BillboardGui")
    bb.Size        = UDim2.new(0,200,0,40)
    bb.StudsOffset = offset or Vector3.new(0,3,0)
    bb.AlwaysOnTop = true
    bb.Parent      = parent
    local lbl = Instance.new("TextLabel", bb)
    lbl.Size = UDim2.fromScale(1,1)
    lbl.BackgroundTransparency = 1
    lbl.TextColor3             = color or Color3.new(1,1,1)
    lbl.TextStrokeTransparency = 0.5
    lbl.Text      = text
    lbl.Font      = Enum.Font.GothamBold
    lbl.TextScaled = true
    return bb
end

function applyESP_GodSpirit()
    clearESP("GodSpirit"); espHighlights["GodSpirit"] = {}
    local g = Workspace:FindFirstChild("NPC") and Workspace.NPC:FindFirstChild("God")
    if not g then return end
    for _, npc in ipairs(g:GetChildren()) do
        if npc:IsA("Model") then
            local h  = makeHighlight(npc, Color3.fromRGB(255,215,0), Color3.fromRGB(255,165,0), 0.4, 0)
            local bb = addBillboard(npc, "⭐ God Spirit: "..npc.Name, Color3.fromRGB(255,215,0), Vector3.new(0,5,0))
            table.insert(espHighlights["GodSpirit"], h)
            table.insert(espHighlights["GodSpirit"], bb)
        end
    end
end
function applyESP_SecretRod()
    clearESP("SecretRod"); espHighlights["SecretRod"] = {}
    local sr = Workspace:FindFirstChild("SecretRod")
    if not sr then return end
    for _, rod in ipairs(sr:GetChildren()) do
        local h  = makeHighlight(rod, Color3.fromRGB(255,50,50), Color3.fromRGB(255,200,0), 0.3, 0)
        local bb = addBillboard(rod, "🎣 "..rod.Name, Color3.fromRGB(255,200,0))
        table.insert(espHighlights["SecretRod"], h); table.insert(espHighlights["SecretRod"], bb)
    end
end
function applyESP_Boats()
    clearESP("Boats"); espHighlights["Boats"] = {}
    local boats = Workspace:FindFirstChild("Boat")
    if not boats then return end
    for _, loc in ipairs(boats:GetChildren()) do
        for _, boat in ipairs(loc:GetChildren()) do
            if boat:IsA("Model") then
                local h  = makeHighlight(boat, Color3.fromRGB(0,200,255), Color3.fromRGB(255,255,255), 0.5, 0)
                local bb = addBillboard(boat, "🚢 Boat @"..loc.Name, Color3.fromRGB(0,200,255))
                table.insert(espHighlights["Boats"], h); table.insert(espHighlights["Boats"], bb)
            end
        end
    end
end
function applyESP_Maoshan()
    clearESP("Maoshan"); espHighlights["Maoshan"] = {}
    local npc = Workspace:FindFirstChild("NPC") and Workspace.NPC:FindFirstChild("Function")
        and Workspace.NPC.Function:FindFirstChild("Maoshan")
    if not npc then return end
    local h  = makeHighlight(npc, Color3.fromRGB(180,0,255), Color3.fromRGB(255,255,255), 0.4, 0)
    local bb = addBillboard(npc, "🔮 Maoshan", Color3.fromRGB(180,0,255))
    table.insert(espHighlights["Maoshan"], h); table.insert(espHighlights["Maoshan"], bb)
end
function applyESP_Taoist()
    clearESP("Taoist"); espHighlights["Taoist"] = {}
    local npc = Workspace:FindFirstChild("NPC") and Workspace.NPC:FindFirstChild("Function")
        and Workspace.NPC.Function:FindFirstChild("Taoist")
    if not npc then return end
    local h  = makeHighlight(npc, Color3.fromRGB(255,120,0), Color3.fromRGB(255,255,255), 0.4, 0)
    local bb = addBillboard(npc, "☯️ Taoist", Color3.fromRGB(255,120,0))
    table.insert(espHighlights["Taoist"], h); table.insert(espHighlights["Taoist"], bb)
end
function applyESP_Boss()
    clearESP("Boss"); espHighlights["Boss"] = {}
    local bossFolder = Workspace:FindFirstChild("NPC") and Workspace.NPC:FindFirstChild("Boss")
    if not bossFolder then return end
    for _, b in ipairs(bossFolder:GetChildren()) do
        if b:IsA("Model") then
            local h  = makeHighlight(b, Color3.fromRGB(255,0,0), Color3.fromRGB(255,255,0), 0.3, 0)
            local bb = addBillboard(b, "⚔️ BOSS: "..b.Name, Color3.fromRGB(255,80,80), Vector3.new(0,7,0))
            table.insert(espHighlights["Boss"], h); table.insert(espHighlights["Boss"], bb)
        end
    end
end
function applyESP_Players()
    clearESP("Players"); espHighlights["Players"] = {}
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer and plr.Character then
            local h  = makeHighlight(plr.Character, Color3.fromRGB(0,255,100), Color3.fromRGB(255,255,255), 0.5, 0)
            local bb = addBillboard(plr.Character, "👤 "..plr.Name, Color3.fromRGB(0,255,100))
            table.insert(espHighlights["Players"], h); table.insert(espHighlights["Players"], bb)
        end
    end
end

espApplyFns = {
    GodSpirit = applyESP_GodSpirit,
    SecretRod = applyESP_SecretRod, Boats     = applyESP_Boats,
    Maoshan   = applyESP_Maoshan,   Taoist    = applyESP_Taoist,
    Boss      = applyESP_Boss,      Players   = applyESP_Players,
}

task.spawn(function()
    while true do
        task.wait(5)
        for key, enabled in pairs(getgenv().NNVN_ESP) do
            if enabled then pcall(espApplyFns[key] or function() end) end
        end
    end
end)

espSec  = Tabs.ESP:AddSection("◆ 透视对象")
espDefs = {
    { key="GodSpirit", title="⭐ God Spirit ESP",  desc="Gold highlight" },
    { key="SecretRod", title="🎣 Secret Rod ESP",  desc="Red highlight" },
    { key="Boats",     title="🚢 Boats ESP",        desc="Cyan highlight" },
    { key="Maoshan",   title="🔮 Maoshan ESP",     desc="Purple highlight" },
    { key="Taoist",    title="☯️ Taoist ESP",       desc="Orange highlight" },
    { key="Boss",      title="⚔️ Boss ESP",         desc="Red highlight" },
    { key="Players",   title="👤 Players ESP",      desc="Green highlight" },
}
for _, def in ipairs(espDefs) do
    espSec:AddToggle("ESP_"..def.key, {
        Title = def.title, Description = def.desc, Default = false,
        Callback = function(v)
            getgenv().NNVN_ESP[def.key] = v
            if v then pcall(espApplyFns[def.key] or function() end) else clearESP(def.key) end
        end,
    })
end
espSec:AddButton({ Title = "▣ 刷新所有透视 --雪天缤纷", Callback = function()
    for key, enabled in pairs(getgenv().NNVN_ESP) do
        if enabled then pcall(espApplyFns[key] or function() end) end
    end
    if getgenv().NNVN_Notify then WindUI:Notify{Title="", Content="透视已刷新！", Duration=2} end
end })
espSec:AddButton({ Title = "▣ 清除所有透视 --雪天缤纷", Callback = function()
    for key in pairs(getgenv().NNVN_ESP) do
        getgenv().NNVN_ESP[key] = false; clearESP(key)
    end
    if getgenv().NNVN_Notify then WindUI:Notify{Title="", Content="已清除所有透视！", Duration=2} end
end })

local function GetIndexRemoteCandidates()
    local events = ReplicatedStorage:FindFirstChild("Events")
    if not events then return {} end

    local matches = {}
    for _, obj in ipairs(events:GetDescendants()) do
        local lowerName = string.lower(obj.Name or "")
        if (obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction")) and (
            lowerName:find("index") or
            lowerName:find("unlock") or
            lowerName:find("discover") or
            lowerName:find("journal") or
            lowerName:find("bestiary") or
            lowerName:find("collection")
        ) then
            table.insert(matches, obj)
        end
    end

    return matches
end

local function TryUnlockAllIndexRisk()
    local fishNames = GetAllFishNames()
    local remotes = GetIndexRemoteCandidates()
    if #fishNames == 0 then
        return false, "No fish/index names found in client."
    end
    if #remotes == 0 then
        return false, "No unlock/index remote exposed to client."
    end

    local fired = 0
    for _, remote in ipairs(remotes) do
        for _, fishName in ipairs(fishNames) do
            pcall(function()
                if remote:IsA("RemoteEvent") then
                    remote:FireServer(fishName)
                    remote:FireServer("Fish", fishName)
                    remote:FireServer({ Name = fishName })
                else
                    remote:InvokeServer(fishName)
                    remote:InvokeServer("Fish", fishName)
                    remote:InvokeServer({ Name = fishName })
                end
            end)
            fired = fired + 1
            task.wait(0.05)
        end
    end

    return fired > 0, "Tried " .. tostring(fired) .. " index unlock calls on " .. tostring(#remotes) .. " remote(s)."
end

-- ====================================================
-- 21. TAB: EXTRA
-- ====================================================
afkSec = Tabs.Extra:AddSection("◆ 防挂机 --雪天缤纷")
afkSec:AddToggle("NNVN_AntiAFK", {
    Title = "▶ 防挂机 --雪天缤纷", Default = false,
    Callback = function(v) getgenv().NNVN_AntiAFK = v end,
})

utilSec = Tabs.Extra:AddSection("◆ 工具 --雪天缤纷")
utilSec:AddToggle("NNVN_AutoRejoin", { Title = "▶ 自动重进 --雪天缤纷",    Default = false, Callback = function(v) getgenv().NNVN_AutoRejoin = v end })
utilSec:AddToggle("NNVN_Notify",     { Title = "▶ 通知 --雪天缤纷",  Default = true,  Callback = function(v) getgenv().NNVN_Notify    = v end })
utilSec:AddToggle("NNVN_Watermark",  { Title = "▶ 水印 --雪天缤纷",      Default = true,  Callback = function(v)
    getgenv().NNVN_Watermark = v
    if getgenv().WMK then getgenv().WMK.Visible = v end
end })
utilSec:AddSlider("NNVN_WalkSpeed", {
    Title = "◉ 移动速度 --雪天缤纷", Default = 16, Min = 8, Max = 100, Rounding = 1,
    Callback = function(v)
        getgenv().NNVN_WalkSpeed = v
        local char = LocalPlayer.Character
        if char then
            local hum = char:FindFirstChild("Humanoid")
            if hum then hum.WalkSpeed = v end
        end
    end
})
utilSec:AddButton({ Title = "▣ 兑换所有代码 --雪天缤纷", Callback = function()
    task.spawn(function()
        local codes = {
            "UIBUG", "45KLikes", "44KLikes", "43KLikes", "42KLikes", "41KLikes",
            "26MVisits", "25MVisits", "24MVisits", "23MVisits"
        }
        for _, code in ipairs(codes) do
            -- RedeemCode is server-side lookup, no proximity needed
            pcall(function() ReplicatedStorage.Events.RedeemCode:FireServer(code) end)
            task.wait(0.3)
        end
        if getgenv().NNVN_Notify then WindUI:Notify{Title="", Content="已发送 "..#codes.." code(s)!", Duration=3} end
    end)
end })
utilSec:AddButton({ Title = "▣ 重进 --雪天缤纷", Callback = function()
    if getgenv().NNVN_Notify then WindUI:Notify{Title="", Content="3 秒后重新加入...", Duration=3} end
    task.wait(3)
    TeleportService:TeleportToPlaceInstance(PlaceId, game.JobId, LocalPlayer)
end })

indexRiskSec = Tabs.Extra:AddSection("◆ 索引风险 --雪天缤纷")
indexRiskSec:AddButton({
    Title = "▣ 解锁全部索引(风险) --雪天缤纷",
    Callback = function()
        task.spawn(function()
            local ok, message = TryUnlockAllIndexRisk()
            if getgenv().NNVN_Notify then
                WindUI:Notify{
                    Title = "解锁全部索引 --雪天缤纷",
                    Content = message or (ok and "Done." or "Failed."),
                    Duration = 5
                }
            end
        end)
    end
})

-- Fly Mode
flyState = { flying = false, bg = nil, bv = nil, flyKeys = {Up=false, Down=false}, speed = 50 }
function startFly()
    local c = LocalPlayer.Character
    if not c or not c:FindFirstChild("HumanoidRootPart") then return end
    if flyState.flying then return end
    if flyState.bg then flyState.bg:Destroy() end
    if flyState.bv then flyState.bv:Destroy() end
    local h      = c.HumanoidRootPart
    flyState.bg  = Instance.new("BodyGyro", h)
    flyState.bg.P = 9e4; flyState.bg.maxTorque = Vector3.new(9e9,9e9,9e9); flyState.bg.cframe = h.CFrame
    flyState.bv  = Instance.new("BodyVelocity", h)
    flyState.bv.velocity = Vector3.new(0,0,0); flyState.bv.maxForce = Vector3.new(9e9,9e9,9e9)
    flyState.flying = true
    local hum = c:FindFirstChildOfClass("Humanoid")
    if hum then hum.PlatformStand = true end
end
function stopFly()
    flyState.flying = false; flyState.flyKeys.Up = false; flyState.flyKeys.Down = false
    if flyState.bg then flyState.bg:Destroy(); flyState.bg = nil end
    if flyState.bv then flyState.bv:Destroy(); flyState.bv = nil end
    local c = LocalPlayer.Character
    if c then
        local hum = c:FindFirstChildOfClass("Humanoid")
        if hum then hum.PlatformStand = false end
    end
end
flyInputCon, flyInputEndCon = nil, nil
utilSec:AddToggle("NNVN_FlyMode", {
    Title = "▶ 飞行模式 --雪天缤纷", Default = false,
    Callback = function(v)
        getgenv().NNVN_FlyMode = v
        if v then
            startFly()
            if flyInputCon    then flyInputCon:Disconnect()    end
            if flyInputEndCon then flyInputEndCon:Disconnect() end
            flyInputCon    = UserInputService.InputBegan:Connect(function(input)
                if input.KeyCode == Enum.KeyCode.Space       then flyState.flyKeys.Up   = true end
                if input.KeyCode == Enum.KeyCode.LeftControl then flyState.flyKeys.Down = true end
            end)
            flyInputEndCon = UserInputService.InputEnded:Connect(function(input)
                if input.KeyCode == Enum.KeyCode.Space       then flyState.flyKeys.Up   = false end
                if input.KeyCode == Enum.KeyCode.LeftControl then flyState.flyKeys.Down = false end
            end)
        else
            stopFly()
            if flyInputCon    then flyInputCon:Disconnect();    flyInputCon    = nil end
            if flyInputEndCon then flyInputEndCon:Disconnect(); flyInputEndCon = nil end
        end
    end
})
utilSec:AddSlider("NNVN_FlySpeed", {
    Title = "◉ 飞行速度 --雪天缤纷", Default = 50, Min = 10, Max = 200, Rounding = 1,
    Callback = function(v) getgenv().NNVN_FlySpeed = v; flyState.speed = v end
})

-- Infinite Jump
utilSec:AddToggle("NNVN_InfiniteJump", {
    Title = "▶ 无限跳跃 --雪天缤纷", Default = false,
    Callback = function(v) getgenv().NNVN_InfiniteJump = v end
})

-- Walk on Water
waterWalk = { enabled = false, waterPart = nil, waterY = 0, connection = nil, waterPartsList = {} }
function findWaterParts()
    local parts = {}
    for _, v in pairs(Workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            local name = v.Name:lower()
            if name:match("water") or name:match("ocean") or v.Material == Enum.Material.Water then
                table.insert(parts, v)
            end
        end
    end
    return parts
end
function enableWaterWalk()
    if waterWalk.enabled then return end
    waterWalk.enabled          = true
    waterWalk.waterPartsList   = findWaterParts()
    for _, part in ipairs(waterWalk.waterPartsList) do part.CanCollide = true end
    waterWalk.waterPart        = Instance.new("Part")
    waterWalk.waterPart.Size   = Vector3.new(16,1,16)
    waterWalk.waterPart.Transparency = 1
    waterWalk.waterPart.Anchored     = true
    waterWalk.waterPart.CanCollide   = true
    waterWalk.waterPart.Name         = "WaterWalkPart"
    waterWalk.waterPart.Parent       = Workspace
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        waterWalk.waterY = char.HumanoidRootPart.Position.Y - 3.2
    else
        waterWalk.waterY = 0
    end
    if waterWalk.connection then waterWalk.connection:Disconnect() end
    waterWalk.connection = RunService.RenderStepped:Connect(function()
        if not waterWalk.enabled then return end
        local char2 = LocalPlayer.Character
        if not char2 then return end
        local root = char2:FindFirstChild("HumanoidRootPart")
        if not root then return end
        if waterWalk.waterPart then
            waterWalk.waterPart.Position = Vector3.new(root.Position.X, waterWalk.waterY, root.Position.Z)
        end
    end)
end
function disableWaterWalk()
    if not waterWalk.enabled then return end
    waterWalk.enabled = false
    if waterWalk.connection then waterWalk.connection:Disconnect(); waterWalk.connection = nil end
    if waterWalk.waterPart  then waterWalk.waterPart:Destroy();    waterWalk.waterPart  = nil end
    for _, part in ipairs(waterWalk.waterPartsList) do
        if part and part.Parent then part.CanCollide = false end
    end
    waterWalk.waterPartsList = {}
end
utilSec:AddToggle("NNVN_WalkOnWater", {
    Title = "▶ 水上行走 --雪天缤纷", Default = false,
    Callback = function(v)
        getgenv().NNVN_WalkOnWater = v
        if v then enableWaterWalk() else disableWaterWalk() end
    end
})

worldSec = Tabs.Extra:AddSection("◆ 世界 --雪天缤纷")
worldSec:AddToggle("NNVN_NoClip", {
    Title = "▶ 穿墙 --雪天缤纷", Default = false,
    Callback = function(v)
        getgenv().NNVN_NoClip = v
        local char = LocalPlayer.Character
        if not char then return end
        for _, part in ipairs(char:GetChildren()) do
            if part:IsA("BasePart") then part.CanCollide = not v; part.CanTouch = not v end
        end
    end
})
origFogEnd   = Lighting.FogEnd
origFogStart = Lighting.FogStart
worldSec:AddToggle("NNVN_NoFog", {
    Title = "▶ 去除雾 --雪天缤纷", Default = false,
    Callback = function(v)
        getgenv().NNVN_NoFog = v
        pcall(function()
            if v then
                Lighting.FogEnd = 100000; Lighting.FogStart = 0
                local atmos = Lighting:FindFirstChild("Atmosphere")
                if atmos then atmos.FogDensity = 0; atmos.Density = 0 end
            else
                Lighting.FogEnd = origFogEnd; Lighting.FogStart = origFogStart
            end
        end)
    end
})
origA, origB, origT, origBr, origOA =
    Lighting.Ambient, Lighting.ColorShift_Bottom, Lighting.ColorShift_Top,
    Lighting.Brightness, Lighting.OutdoorAmbient
worldSec:AddToggle("NNVN_FullBright", {
    Title = "▶ 全亮 --雪天缤纷", Default = false,
    Callback = function(v)
        getgenv().NNVN_FullBright = v
        if not v then
            Lighting.Ambient          = origA
            Lighting.ColorShift_Bottom = origB
            Lighting.ColorShift_Top   = origT
            Lighting.Brightness       = origBr
            Lighting.OutdoorAmbient   = origOA
        end
    end
})
worldSec:AddButton({
    Title = "▣ 性能优化 --雪天缤纷",
    Callback = function()
        pcall(function()
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            local t = Workspace:FindFirstChildOfClass("Terrain")
            if t then t.WaterWaveSize=0; t.WaterWaveSpeed=0; t.WaterReflectance=0; t.WaterTransparency=1 end
            Lighting.GlobalShadows = false; Lighting.FogEnd = 9e9; Lighting.ShadowSoftness = 0
            Lighting.EnvironmentDiffuseScale = 0; Lighting.EnvironmentSpecularScale = 0
            for _, v in pairs(Lighting:GetChildren()) do
                if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect")
                   or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then v:Destroy() end
            end
            for _, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.Material = Enum.Material.SmoothPlastic; v.Reflectance = 0; v.CastShadow = false
                elseif v:IsA("Decal") or v:IsA("Texture") or v:IsA("ParticleEmitter")
                    or v:IsA("Trail") or v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v:Destroy()
                end
            end
            WindUI:Notify{Title="", Content="性能已优化！", Duration=2}
        end)
    end
})

-- Screen overlay
screenOverlay = CoreGui:FindFirstChild("NNVN_PerformanceOverlay")
if screenOverlay then screenOverlay:Destroy() end
screenOverlay                     = Instance.new("ScreenGui")
screenOverlay.Name                = "NNVN_PerformanceOverlay"
screenOverlay.IgnoreGuiInset      = true
screenOverlay.ResetOnSpawn        = false
screenOverlay.DisplayOrder        = 0
screenOverlay.Enabled             = false
screenOverlay.Parent              = CoreGui
screenFrame                 = Instance.new("Frame", screenOverlay)
screenFrame.Size                  = UDim2.fromScale(1,1)
screenFrame.BackgroundTransparency = 0
screenFrame.BorderSizePixel       = 0
screenFrame.Active                = false

displaySec = Tabs.Extra:AddSection("◆ 显示 --雪天缤纷")
whiteToggle, darkToggle = nil, nil
function updateScreenOverlay()
    if getgenv().NNVN_WhiteScreen then
        screenFrame.BackgroundColor3 = Color3.new(1,1,1); screenOverlay.Enabled = true
    elseif getgenv().NNVN_DarkScreen then
        screenFrame.BackgroundColor3 = Color3.new(0,0,0); screenOverlay.Enabled = true
    else
        screenOverlay.Enabled = false
    end
end
whiteToggle = displaySec:AddToggle("NNVN_WhiteScreen", {
    Title = "▶ 白屏 --雪天缤纷", Default = false,
    Callback = function(v)
        getgenv().NNVN_WhiteScreen = v
        if v and darkToggle then darkToggle:SetValue(false) end
        updateScreenOverlay()
    end,
})
darkToggle = displaySec:AddToggle("NNVN_DarkScreen", {
    Title = "▶ 黑屏 --雪天缤纷", Default = false,
    Callback = function(v)
        getgenv().NNVN_DarkScreen = v
        if v and whiteToggle then whiteToggle:SetValue(false) end
        updateScreenOverlay()
    end,
})
displaySec:AddToggle("NNVN_HideUI", {
    Title = "▶ 隐藏游戏UI --雪天缤纷", Default = false,
    Callback = function(v) if v then RequestHideUI() else RequestShowUI() end end,
})

startupSec = Tabs.Extra:AddSection("◆ 启动 --雪天缤纷")
startupSec:AddToggle("NNVN_AutoExecuteScript", {
    Title = "▶ 加入时自动执行脚本 --雪天缤纷", Default = true,
    Callback = function(v) getgenv().NNVN_AutoExecuteScript = v end,
})

-- ====================================================
-- 22. TAB: SERVER HOP
-- ====================================================
AllIDs       = {}
foundAnything = ""
actualHour   = os.date("!*t").hour
pcall(function() AllIDs = HttpService:JSONDecode(readfile("server-hop-temp.json")) end)
if #AllIDs == 0 then
    table.insert(AllIDs, actualHour)
    pcall(function() writefile("server-hop-temp.json", HttpService:JSONEncode(AllIDs)) end)
end

function TPReturner(placeId)
    local success, result = pcall(function()
        local Site
        if foundAnything == "" then
            Site = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..placeId.."/servers/Public?sortOrder=Asc&limit=100"))
        else
            Site = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..placeId.."/servers/Public?sortOrder=Asc&limit=100&cursor="..foundAnything))
        end
        if not Site or not Site.data then return false end
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0
        for _, v in pairs(Site.data) do
            local Possible = true
            local ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _, Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then Possible = false end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            pcall(function() delfile("server-hop-temp.json"); AllIDs = {}; table.insert(AllIDs, actualHour) end)
                        end
                    end
                    num = num + 1
                end
                if Possible then
                    table.insert(AllIDs, ID)
                    pcall(function()
                        writefile("server-hop-temp.json", HttpService:JSONEncode(AllIDs))
                        TeleportService:TeleportToPlaceInstance(placeId, ID, LocalPlayer)
                    end)
                    task.wait(4)
                    return true
                end
            end
        end
        return false
    end)
    return success and result or false
end

ServerHop = {}
function ServerHop:Teleport(placeId)
    local found = false
    while not found do
        found = TPReturner(placeId)
        if not found then task.wait(1) end
    end
end

function addHopSection(tabRef, name, checkFn)
    local sec         = tabRef:AddSection("◇ "..name)
    local statusLabel = sec:AddParagraph({ Title = "状态 --雪天缤纷", Content = "🔴 离线" })
    local checkCo, hopCo = nil, nil
    local hopToggle

    sec:AddToggle("AutoCheck"..name.."Hop", {
        Title    = "▶ 自动检查状态 --雪天缤纷",
        Default  = false,
        Callback = function(v)
            if v then
                if checkCo then coroutine.close(checkCo); checkCo = nil end
                checkCo = coroutine.create(function()
                    while true do
                        local found = checkFn()
                        pcall(function()
                            statusLabel:SetDesc(found and ("🟢 Online — "..name.." in this server!") or "🔴 Offline")
                        end)
                        task.wait(3)
                    end
                end)
                coroutine.resume(checkCo)
            else
                if checkCo then coroutine.close(checkCo); checkCo = nil end
                pcall(function() statusLabel:SetDesc("🔴 Offline") end)
            end
        end
    })

    hopToggle = sec:AddToggle("AutoHop"..name, {
        Title    = "▶ 自动换服到 "..name.." Server",
        Default  = false,
        Callback = function(v)
            if v then
                if hopCo then coroutine.close(hopCo); hopCo = nil end
                hopCo = coroutine.create(function()
                    while true do
                        if checkFn() then
                            pcall(function() hopToggle:SetValue(false) end)
                            if getgenv().NNVN_Notify then
                                WindUI:Notify{Title=name.." Found!", Content="自动换服已停止 — "..name.." is here!", Duration=6}
                            end
                            break
                        else
                            if getgenv().NNVN_Notify then
                                WindUI:Notify{Title="", Content=name.." not found. Hopping...", Duration=2}
                            end
                            pcall(function() ServerHop:Teleport(PlaceId) end)
                            break
                        end
                    end
                end)
                coroutine.resume(hopCo)
            else
                if hopCo then coroutine.close(hopCo); hopCo = nil end
            end
        end
    })

    sec:AddButton({
        Title    = "▣ 立即换服( --雪天缤纷"..name..")",
        Callback = function()
            if not checkFn() then
                pcall(function() ServerHop:Teleport(PlaceId) end)
            else
                if getgenv().NNVN_Notify then WindUI:Notify{Title="", Content=name.." already here!", Duration=2} end
            end
        end
    })
end

addHopSection(Tabs.Hop, "God Spirit", GodExists)
addHopSection(Tabs.Hop, "Maoshan",    function() return ObjectExists({"NPC","Function","Maoshan"}) end)
addHopSection(Tabs.Hop, "Taoist",     function() return ObjectExists({"NPC","Function","Taoist"})  end)

-- ====================================================
-- 23. TAB: INFO
-- ====================================================
DISCORD_INVITE = "https://discord.gg/5JJAuHRUgJ"
DISCORD_CODE = "5JJAuHRUgJ"
infoSec = Tabs.Info:AddSection("雪天缤纷ProMax --雪天缤纷")
infoSec:AddParagraph({ Title = "作者 --雪天缤纷", Content = "脚本作者 雪天缤纷Pro" })
discordStatus = infoSec:AddParagraph({ Title = "Discord --雪天缤纷", Content = "正在加载邀请信息..." })
function UpdateDiscordInfo()
    task.spawn(function()
        local ok, data = pcall(function()
            local raw = game:HttpGet("https://discord.com/api/v10/invites/"..DISCORD_CODE.."?with_counts=true&with_expiration=true")
            return HttpService:JSONDecode(raw)
        end)
        if ok and data then
            local guildName = data.guild and data.guild.name or "NNVN Discord"
            local members = tonumber(data.approximate_member_count) or 0
            local online = tonumber(data.approximate_presence_count) or 0
            discordStatus:SetDesc(string.format("%s\nMember Count: %d\nOnline Count: %d\nInvite: %s", guildName, members, online, DISCORD_INVITE))
        else
            discordStatus:SetDesc("Unable to fetch live info right now.\nInvite: "..DISCORD_INVITE)
        end
    end)
end
infoSec:AddButton({ Title = "更新 Discord 信息 --雪天缤纷", Icon = "refresh-cw", Callback = UpdateDiscordInfo })
infoSec:AddButton({ Title = "复制 Discord 邀请 --雪天缤纷", Icon = "copy", Callback = function()
    pcall(function() setclipboard(DISCORD_INVITE) end)
    if getgenv().NNVN_Notify then WindUI:Notify{Title="Discord --雪天缤纷", Content="邀请已复制！", Duration=2} end
end })
infoSec:AddParagraph({ Title = "版本 --雪天缤纷", Content = "v3.0 + WindUI | 更新日期："..os.date("%d/%m/%Y") })
infoSec:AddParagraph({ Title = "阶段 2 --雪天缤纷", Content = "仅客户端点击计时。自动阶段 2 不触发远程。" })
UpdateDiscordInfo()
task.spawn(function()
    while task.wait(60) do
        UpdateDiscordInfo()
    end
end)
-- ====================================================
-- 24. TAB: SETTINGS
-- ====================================================
SettingsTab = Tabs.Settings
ConfigSection = SettingsTab:Section({
    Title = "配置 --雪天缤纷",
    Icon = "database",
    Opened = true,
})

ConfigName = "default"
SelectedConfigName = "default"
AutoLoadConfig = false
AutoSaveConfig = true

function NotifySettings(title, content)
    if getgenv().NNVN_Notify then
        WindUI:Notify({ Title = title or "Settings", Content = content or "", Duration = 3, Icon = "settings" })
    end
end

local ConfigFolder = "NNVN_HeavyweightFishing/configs"
local AutoLoadMetaPath = "NNVN_HeavyweightFishing/autoload.txt"

local function executorFilesReady()
    return type(writefile) == "function" and type(readfile) == "function" and type(isfile) == "function"
end

local function ensureConfigFolder()
    if type(makefolder) == "function" then
        pcall(function()
            if type(isfolder) ~= "function" or not isfolder("NNVN_HeavyweightFishing") then
                makefolder("NNVN_HeavyweightFishing")
            end
            if type(isfolder) ~= "function" or not isfolder(ConfigFolder) then
                makefolder(ConfigFolder)
            end
        end)
    end
end

local function cleanConfigName(name)
    name = tostring(name or "default")
    name = name:gsub("[^%w%-%_ ]", ""):gsub("^%s+", ""):gsub("%s+$", "")
    if name == "" then name = "default" end
    return name
end

local function configPath(name)
    return ConfigFolder .. "/" .. cleanConfigName(name) .. ".json"
end

local function listConfigs()
    ensureConfigFolder()
    local result = {}
    if type(listfiles) == "function" then
        local ok, files = pcall(function() return listfiles(ConfigFolder) end)
        if ok and type(files) == "table" then
            for _, path in ipairs(files) do
                local fileName = tostring(path):match("([^/\\]+)%.json$")
                if fileName then
                    table.insert(result, fileName)
                end
            end
        end
    end
    table.sort(result)
    if #result == 0 then
        table.insert(result, "-- no config --")
    end
    return result
end

local function captureConfig()
    local data = {
        __theme = SelectedTheme or "Dark",
        __background = BackgroundInputValue or "rbxassetid://112266995522505",
        __auto_load = AutoLoadConfig,
        __auto_save = AutoSaveConfig,
    }
    for flag, control in pairs(NNVNControls) do
        local value = control and control.Value
        if type(value) ~= "function" and type(value) ~= "userdata" and type(value) ~= "thread" then
            data[flag] = value
        end
    end
    return data
end

local function applySavedConfig(data)
    if type(data) ~= "table" then return false end
    for flag, value in pairs(data) do
        local control = NNVNControls[flag]
        if control and control.SetValue then
            pcall(function() control:SetValue(value) end)
        elseif control then
            control.Value = value
        end
    end
    if data.__theme then
        SelectedTheme = data.__theme
        pcall(function() WindUI:SetTheme(SelectedTheme) end)
    end
    if data.__background then
        BackgroundInputValue = data.__background
        if Window.SetBackgroundImage then
            pcall(function() Window:SetBackgroundImage(BackgroundInputValue) end)
        end
    end
    if type(data.__auto_load) == "boolean" then AutoLoadConfig = data.__auto_load end
    if type(data.__auto_save) == "boolean" then AutoSaveConfig = data.__auto_save end
    return true
end

local function saveConfig(name)
    if not executorFilesReady() then
        return false, "Executor file APIs are not available."
    end
    ensureConfigFolder()
    local ok, encoded = pcall(function()
        return HttpService:JSONEncode(captureConfig())
    end)
    if not ok then
        return false, "Could not encode config."
    end
    local wrote = pcall(function()
        writefile(configPath(name), encoded)
    end)
    return wrote, wrote and nil or "Could not write config file."
end

local function saveAutoLoadMeta()
    if not executorFilesReady() then return end
    ensureConfigFolder()
    if AutoLoadConfig and SelectedConfigName and SelectedConfigName ~= "-- no config --" then
        pcall(function()
            writefile(AutoLoadMetaPath, cleanConfigName(SelectedConfigName))
        end)
    elseif type(delfile) == "function" and type(isfile) == "function" and isfile(AutoLoadMetaPath) then
        pcall(function()
            delfile(AutoLoadMetaPath)
        end)
    end
end

local function readAutoLoadMeta()
    if not executorFilesReady() then return nil end
    if type(isfile) == "function" and isfile(AutoLoadMetaPath) then
        local ok, raw = pcall(function()
            return readfile(AutoLoadMetaPath)
        end)
        if ok and raw and raw ~= "" then
            return cleanConfigName(raw)
        end
    end
    return nil
end

local function loadConfig(name)
    if not executorFilesReady() then
        return false, "Executor file APIs are not available."
    end
    local path = configPath(name)
    if not isfile(path) then
        return false, "Config file does not exist."
    end
    local okRead, raw = pcall(function()
        return readfile(path)
    end)
    if not okRead then
        return false, "Could not read config file."
    end
    local okDecode, data = pcall(function()
        return HttpService:JSONDecode(raw)
    end)
    if not okDecode then
        return false, "Config file is not valid JSON."
    end
    return applySavedConfig(data), nil
end

local function deleteConfig(name)
    if type(delfile) ~= "function" then
        return false, "Executor delfile API is not available."
    end
    local path = configPath(name)
    if type(isfile) == "function" and not isfile(path) then
        return false, "Config file does not exist."
    end
    local ok = pcall(function()
        delfile(path)
    end)
    return ok, ok and nil or "Could not delete config file."
end

AllConfigNames = listConfigs()

function RefreshConfigDropdown()
    AllConfigNames = listConfigs()
    if ConfigDropdown and ConfigDropdown.Refresh then
        ConfigDropdown:Refresh(AllConfigNames)
    end
end

ConfigNameInput = ConfigSection:Input({
    Title = "配置名称 --雪天缤纷",
    Placeholder = "Type config name",
    Value = ConfigName,
    Callback = function(value)
        ConfigName = (value and value ~= "") and value or "default"
    end,
})

ConfigSection:Button({
    Title = "创建配置 --雪天缤纷",
    Icon = "sparkles",
    Callback = function()
        ConfigName = cleanConfigName(ConfigName)
        local ok, msg = saveConfig(ConfigName)
        if ok then
            SelectedConfigName = ConfigName
            saveAutoLoadMeta()
        end
        NotifySettings("Config", ok and ("Created config: " .. ConfigName) or (msg or "Create failed"))
        RefreshConfigDropdown()
    end,
})

ConfigDropdown = ConfigSection:Dropdown({
    Title = "选择配置 --雪天缤纷",
    Values = AllConfigNames,
    Value = AllConfigNames[1],
    Callback = function(value)
        if value and value ~= "-- no config --" then
            SelectedConfigName = value
            ConfigName = value
            if ConfigNameInput and ConfigNameInput.Set then ConfigNameInput:Set(value) end
            saveAutoLoadMeta()
        end
    end,
})

ConfigSection:Toggle({
    Title = "自动加载配置 --雪天缤纷",
    Value = false,
    Callback = function(value)
        AutoLoadConfig = value
        saveAutoLoadMeta()
    end,
})

ConfigSection:Toggle({
    Title = "自动保存配置 --雪天缤纷",
    Value = true,
    Callback = function(value)
        AutoSaveConfig = value
    end,
})

ConfigSection:Button({
    Title = "加载配置 --雪天缤纷",
    Icon = "sparkles",
    Callback = function()
        local name = SelectedConfigName ~= "-- no config --" and SelectedConfigName or ConfigName
        local ok, msg = loadConfig(name)
        NotifySettings("Config", ok and ("Loaded config: " .. name) or (msg or ("Could not load config: " .. tostring(name))))
    end,
})

ConfigSection:Button({
    Title = "覆盖配置 --雪天缤纷",
    Icon = "sparkles",
    Callback = function()
        local name = SelectedConfigName ~= "-- no config --" and SelectedConfigName or ConfigName
        local ok, msg = saveConfig(name)
        if ok then saveAutoLoadMeta() end
        NotifySettings("Config", ok and ("Overwrote config: " .. name) or (msg or "Overwrite failed"))
        RefreshConfigDropdown()
    end,
})

ConfigSection:Button({
    Title = "删除配置 --雪天缤纷",
    Icon = "sparkles",
    Callback = function()
        local name = SelectedConfigName ~= "-- no config --" and SelectedConfigName or ConfigName
        local ok, msg = deleteConfig(name)
        NotifySettings("Config", ok and ("Deleted config: " .. name) or (msg or "Delete failed"))
        if ok and SelectedConfigName == name then
            SelectedConfigName = "default"
            saveAutoLoadMeta()
        end
        RefreshConfigDropdown()
    end,
})

ConfigSection:Button({
    Title = "刷新配置列表 --雪天缤纷",
    Icon = "sparkles",
    Callback = function()
        RefreshConfigDropdown()
        NotifySettings("Config", "Config list refreshed.")
    end,
})

SettingsTab:Section({
    Title = "背景选择 --雪天缤纷",
    TextXAlignment = "Center",
    TextSize = 15,
    FontWeight = Enum.FontWeight.SemiBold,
    Opened = true,
})

BackgroundSection = SettingsTab

SelectedTheme = "Dark"
BackgroundInputValue = "rbxassetid://112266995522505"

BackgroundSection:Dropdown({
    Title = "选择主题 --雪天缤纷",
    Values = {"Emerald", "Dark", "Light", "Rose", "Plant", "Indigo", "Sky", "Violet", "Amber"},
    Value = SelectedTheme,
    Callback = function(value)
        SelectedTheme = value or SelectedTheme
    end,
})

BackgroundSection:Button({
    Title = "应用主题 --雪天缤纷",
    Icon = "sparkles",
    Callback = function()
        pcall(function() WindUI:SetTheme(SelectedTheme) end)
        NotifySettings("Theme", "Applied theme: " .. tostring(SelectedTheme))
    end,
})

BackgroundSection:Input({
    Title = "背景 ID / 链接 --雪天缤纷",
    Placeholder = "rbxassetid://...",
    Value = BackgroundInputValue,
    Callback = function(value)
        BackgroundInputValue = value or BackgroundInputValue
    end,
})

BackgroundSection:Button({
    Title = "应用背景 --雪天缤纷",
    Icon = "sparkles",
    Callback = function()
        if Window.SetBackgroundImage then
            Window:SetBackgroundImage(BackgroundInputValue)
            NotifySettings("Background", "Applied background.")
        else
            NotifySettings("Background", "This WindUI build cannot change background at runtime.")
        end
    end,
})

pcall(function() WindUI:SetTheme("Dark") end)
task.defer(function()
    local autoloadName = readAutoLoadMeta()
    if autoloadName then
        AutoLoadConfig = true
        SelectedConfigName = autoloadName
        ConfigName = autoloadName
        pcall(function()
            loadConfig(autoloadName)
        end)
    end
end)
if not getgenv().NNVN_ConfigAutoSaveLoop then
    getgenv().NNVN_ConfigAutoSaveLoop = true
    task.spawn(function()
        while task.wait(15) do
            if AutoSaveConfig then
                pcall(function()
                    saveConfig(SelectedConfigName ~= "-- no config --" and SelectedConfigName or ConfigName)
                end)
            end
        end
    end)
end
-- ====================================================
-- 25. Watermark
-- ====================================================
WMK = Instance.new("ScreenGui")
WMK.Name = "NNVN_Watermark"; WMK.ResetOnSpawn = false; WMK.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
WMK.Parent = LocalPlayer.PlayerGui
getgenv().WMK = WMK
Wf = Instance.new("TextLabel", WMK)
Wf.Size = UDim2.new(0,300,0,28); Wf.Position = UDim2.new(0,10,0,10)
Wf.BackgroundColor3 = Color3.fromRGB(20,20,28); Wf.BackgroundTransparency = 0.3
Wf.TextColor3 = Color3.fromRGB(205,180,255); Wf.Text = " ◆ NNVN Hub v3 [WindUI]  N0NAMEVN"
Wf.Font = Enum.Font.Gotham; Wf.TextSize = 13
Instance.new("UICorner", Wf).CornerRadius = UDim.new(0,8)
Uis = Instance.new("UIStroke", Wf)
Uis.Color = Color3.fromRGB(140,100,220); Uis.Thickness = 1; Uis.Transparency = 0.4

-- ====================================================
-- 27. Background Logic (all with [PROX] wrappers)
-- ====================================================

-- Auto Cast (fishing remote — no NPC needed, player is already at spot)
task.spawn(function()
    while task.wait(1) do
        if not getgenv().NNVN_AutoCast then continue end
        pcall(function()
            local char = LocalPlayer.Character
            if char and not char:GetAttribute("Fishing") and not MainGui.Fishing.Visible then
                ReplicatedStorage.Events.Fishing:FireServer()
            end
        end)
    end
end)

-- ====================================================
-- Auto Equip Rod (from NNVN Hub) — continuous check via ToggleHotbar "1"
-- ====================================================
task.spawn(function()
    local ToggleHotbar = ReplicatedStorage:FindFirstChild("Events")
        and ReplicatedStorage.Events:FindFirstChild("ToggleHotbar")
    if not ToggleHotbar then return end
    while task.wait(1) do
        if getgenv().NNVN_AutoEquipRod then
            pcall(function()
                if not isHoldingFishingRod() then
                    ToggleHotbar:InvokeServer("1", nil)
                end
            end)
        end
    end
end)

-- ====================================================
-- Auto Farm Boss / Secret Boss (ported into NNVN Hub)
-- Skip normal fish, only fight boss / secret boss targets
-- ====================================================
local BossFarmState = getgenv().NNVN_BossFarmState

local BossKeywords       = { "boss", "raid", "giant", "king", "lord" }
local SecretBossKeywords = { "secret", "hidden", "mythic", "event", "rare" }
local BossNameSet        = {}
local SecretBossNameSet  = {}

local function loadBossNameSets()
    table.clear(BossNameSet)
    table.clear(SecretBossNameSet)
    local infoFolder = ReplicatedStorage:FindFirstChild("Info")
    if not infoFolder then return end
    pcall(function()
        local areaRarity = infoFolder:FindFirstChild("FishingAreaRarity")
        if areaRarity then
            local rarityData = require(areaRarity)
            if type(rarityData) == "table" and type(rarityData["Secret Boss"]) == "table" then
                for fishName in pairs(rarityData["Secret Boss"]) do
                    local name = string.lower(tostring(fishName))
                    SecretBossNameSet[name] = true
                    BossNameSet[name] = true
                end
            end
        end
    end)
    pcall(function()
        local inventory = infoFolder:FindFirstChild("Inventory")
        if inventory then
            for _, module in pairs(inventory:GetChildren()) do
                if module:IsA("ModuleScript") then
                    local ok, itemData = pcall(require, module)
                    if ok and type(itemData) == "table" then
                        local name = string.lower(tostring(itemData.FishName or module.Name))
                        if itemData.Boss == true or itemData.SpecialBoss == true or itemData.SecretBoss == true then
                            BossNameSet[name] = true
                        end
                        if itemData.SecretBoss == true then
                            SecretBossNameSet[name] = true
                        end
                    end
                end
            end
        end
    end)
end
loadBossNameSets()
task.spawn(function()
    while task.wait(30) do loadBossNameSets() end
end)

local function bossFarmEnabled()
    return getgenv().NNVN_AutoBossFishing or getgenv().NNVN_AutoFarmSecretBoss
end

local function textHasKeyword(text, keywords)
    text = string.lower(tostring(text or ""))
    for _, keyword in ipairs(keywords) do
        if string.find(text, keyword, 1, true) then return true end
    end
    return false
end

local function getCurrentHookTarget()
    local target = BossFarmState.CurrentTarget
    local info = { Name = nil, Data = nil, Instance = nil, Boss = false, SecretBoss = false }
    if type(target) == "table" then
        info.Data = target
        info.Name = target.FishName or target.Name or target.fishName
        info.Boss = target.Boss == true or target.SpecialBoss == true or target.SecretBoss == true
        info.SecretBoss = target.SecretBoss == true
    elseif typeof and typeof(target) == "Instance" then
        info.Instance = target
        info.Name = target:GetAttribute("FishName") or target.Name
        info.Boss = target:GetAttribute("Boss") == true or target:GetAttribute("SpecialBoss") == true or target:GetAttribute("SecretBoss") == true
        info.SecretBoss = target:GetAttribute("SecretBoss") == true
    elseif type(target) == "string" then
        info.Name = target
    end
    local fishId = LocalPlayer:GetAttribute("FishID")
    local fishes = Workspace:FindFirstChild("Fishes")
    local fishInstance = fishId and fishes and fishes:FindFirstChild(tostring(fishId))
    if fishInstance then
        info.Instance = fishInstance
        info.Name = info.Name or fishInstance:GetAttribute("FishName") or fishInstance.Name
        info.Boss = info.Boss or fishInstance:GetAttribute("Boss") == true or fishInstance:GetAttribute("SpecialBoss") == true or fishInstance:GetAttribute("SecretBoss") == true
        info.SecretBoss = info.SecretBoss or fishInstance:GetAttribute("SecretBoss") == true
    end
    local fishingGui = MainGui:FindFirstChild("Fishing")
    local progression = fishingGui and fishingGui:FindFirstChild("ProgressionBar")
    local fishNameLabel = progression and progression:FindFirstChild("FishName")
    if (not info.Name or info.Name == "" or info.Name == "???") and fishNameLabel and fishNameLabel.Text ~= "" then
        info.Name = fishNameLabel.Text
    end
    return info
end

local function isSecretBossTarget(target)
    local current = target or getCurrentHookTarget()
    local name = string.lower(tostring(current.Name or ""))
    return current.SecretBoss or SecretBossNameSet[name] or textHasKeyword(name, SecretBossKeywords)
end

local function isBossTarget(target)
    local current = target or getCurrentHookTarget()
    local name = string.lower(tostring(current.Name or ""))
    if isSecretBossTarget(current) then return true end
    return current.Boss or BossNameSet[name] or textHasKeyword(name, BossKeywords)
end

local function shouldFarmBossTarget(target)
    local current = target or getCurrentHookTarget()
    if isSecretBossTarget(current) then return true, "Secret Boss" end
    if getgenv().NNVN_AutoFarmSecretBoss and not getgenv().NNVN_AutoBossFishing then
        return false, "Normal"
    end
    if getgenv().NNVN_AutoBossFishing and isBossTarget(current) then
        return true, "Boss"
    end
    return false, "Normal"
end

local function resetBossFarmTarget()
    BossFarmState.CurrentTarget  = nil
    BossFarmState.CurrentType    = nil
    BossFarmState.CurrentToken   = nil
    BossFarmState.HasHooked      = false
    BossFarmState.PendingCancel  = false
end

local function castRodBossFarm()
    if not bossFarmEnabled() or tick() - BossFarmState.LastCast < 0.35 then return false end
    local character = LocalPlayer.Character
    if not character then return false end
    if character:GetAttribute("Fishing") and not character:GetAttribute("Retractable") then return false end
    BossFarmState.LastCast = tick()
    resetBossFarmTarget()
    pcall(function()
        local root = character:FindFirstChild("HumanoidRootPart")
        if root then
            ReplicatedStorage.Events.Fishing:FireServer(root.CFrame)
        else
            ReplicatedStorage.Events.Fishing:FireServer()
        end
    end)
    return true
end

local function cancelOrReleaseNormalFish()
    if not bossFarmEnabled() then return false end
    local character = LocalPlayer.Character
    if not character then return false end
    if not character:GetAttribute("Fishing") then
        resetBossFarmTarget()
        return true
    end
    BossFarmState.PendingCancel = true
    pcall(function()
        local fishingGui = MainGui:FindFirstChild("Fishing")
        local barFrame = fishingGui and fishingGui:FindFirstChild("BarFrame")
        local bar = barFrame and barFrame:FindFirstChild("Bar")
        if bar then
            bar.Position = UDim2.new(-0.15, 0, bar.Position.Y.Scale, bar.Position.Y.Offset)
        end
    end)
    if BossFarmState.CurrentToken and tick() - BossFarmState.LastFastCancel > 0.5 then
        BossFarmState.LastFastCancel = tick()
        pcall(function()
            ReplicatedStorage.Events.FishingMinigame:FireServer(false, BossFarmState.CurrentToken)
        end)
    end
    if not character:GetAttribute("Retractable") then return false end
    if tick() - BossFarmState.LastCancel < 0.35 then return false end
    BossFarmState.LastCancel = tick()
    pcall(function()
        local root = character:FindFirstChild("HumanoidRootPart")
        if root then
            ReplicatedStorage.Events.Fishing:FireServer(root.CFrame)
        else
            ReplicatedStorage.Events.Fishing:FireServer()
        end
    end)
    return false
end

local function farmHookedBoss(target)
    if not bossFarmEnabled() then return end
    local shouldFarm, targetType = shouldFarmBossTarget(target)
    if not shouldFarm then return end
    BossFarmState.CurrentType = targetType
    local notifyKey = targetType .. tostring(target.Name)
    if BossFarmState.LastNotify ~= notifyKey then
        BossFarmState.LastNotify = notifyKey
        if getgenv().NNVN_Notify and WindUI then
            WindUI:Notify{
                Title   = "巨物刷取 --雪天缤纷",
                Content = "正在刷 " .. targetType .. ": " .. tostring(target.Name or "Unknown"),
                Duration = 3,
            }
        end
    end
    if tick() - BossFarmState.LastProgress > 0.04 then
        BossFarmState.LastProgress = tick()
        pcall(function()
            ReplicatedStorage.Events.UpdateFishProgression:FireServer()
        end)
    end
end

-- Main boss-farm loop
task.spawn(function()
    while task.wait(0.2) do
        if not bossFarmEnabled() then continue end
        pcall(function()
            local character = LocalPlayer.Character
            local fishingGui = MainGui:FindFirstChild("Fishing")
            if character and character:GetAttribute("Fishing") then
                if BossFarmState.PendingCancel then
                    cancelOrReleaseNormalFish()
                elseif BossFarmState.HasHooked and fishingGui and fishingGui.Visible then
                    local target = getCurrentHookTarget()
                    local shouldFarm = shouldFarmBossTarget(target)
                    if shouldFarm then
                        BossFarmState.PendingCancel = false
                        farmHookedBoss(target)
                    elseif target.Name and target.Name ~= "???" then
                        BossFarmState.PendingCancel = true
                        cancelOrReleaseNormalFish()
                    end
                end
            else
                resetBossFarmTarget()
                if not isHoldingFishingRod() then
                    ToggleHotbarSlot1()
                    task.wait(0.15)
                end
                castRodBossFarm()
            end
        end)
    end
end)

-- Hook FishingMinigame event (NNVN Hub style)
pcall(function()
    local fm = ReplicatedStorage.Events:FindFirstChild("FishingMinigame")
    if not fm then return end
    fm.OnClientEvent:Connect(function(p1, p2, p3)
        if not p1 or not p2 then return end
        BossFarmState.CurrentTarget  = p1
        BossFarmState.CurrentToken   = p3
        BossFarmState.HasHooked      = true
        BossFarmState.PendingCancel  = false
        BossFarmState.CurrentRunId   = BossFarmState.CurrentRunId + 1
        local runId = BossFarmState.CurrentRunId
        local target = getCurrentHookTarget()
        local shouldFarm = shouldFarmBossTarget(target)
        if bossFarmEnabled() and not shouldFarm then
            BossFarmState.PendingCancel = true
            task.delay(0.15, cancelOrReleaseNormalFish)
            return
        end
        if getgenv().NNVN_AutoCast or (bossFarmEnabled() and shouldFarm) then
            task.spawn(function()
                local minigameActive = true
                local connection
                local fishingGui = MainGui:FindFirstChild("Fishing")
                if fishingGui then
                    connection = fishingGui:GetPropertyChangedSignal("Visible"):Connect(function()
                        if not fishingGui.Visible then
                            minigameActive = false
                            if connection then connection:Disconnect() end
                        end
                    end)
                end
                while minigameActive do
                    if bossFarmEnabled() then
                        if runId ~= BossFarmState.CurrentRunId then break end
                        target = getCurrentHookTarget()
                        shouldFarm = shouldFarmBossTarget(target)
                        if not shouldFarm then
                            BossFarmState.PendingCancel = true
                            cancelOrReleaseNormalFish()
                            break
                        end
                        farmHookedBoss(target)
                        task.wait(0.05)
                    else
                        pcall(function()
                            ReplicatedStorage.Events.UpdateFishProgression:FireServer()
                        end)
                        task.wait(0.05)
                    end
                end
                if bossFarmEnabled() and runId == BossFarmState.CurrentRunId then
                    resetBossFarmTarget()
                end
            end)
        end
    end)
end)

-- Auto Sell — [PROX] TP near Nana before every sell tick
task.spawn(function()
    while true do
        task.wait(getgenv().NNVN_SellDelay or 5)
        if not getgenv().NNVN_AutoSell then continue end
        pcall(function()
            TPNear("Nana")
            ReplicatedStorage.Events.SellFish:FireServer("All")
        end)
    end
end)

-- Auto Skill (key presses — no remote, no proximity needed)
task.spawn(function()
    while task.wait(0.5) do
        if not getgenv().NNVN_AutoSkill then continue end
        for _, keycode in ipairs({Enum.KeyCode.Z, Enum.KeyCode.X, Enum.KeyCode.C, Enum.KeyCode.V}) do
            local keyName = string.upper(string.sub(tostring(keycode), -1))
            if getgenv().NNVN_Skills[keyName] then
                VirtualInput:SendKeyEvent(true,  keycode, false, game)
                task.wait(0.1)
                VirtualInput:SendKeyEvent(false, keycode, false, game)
            end
        end
    end
end)

-- Anchor Bar (client-side UI manipulation, no proximity needed)
RunService.RenderStepped:Connect(function()
    if not getgenv().NNVN_Anchor then return end
    pcall(function()
        local fb = MainGui.Fishing
        if fb.Visible then
            local bar = fb.BarFrame.Bar
            bar.Position = UDim2.new(0.5, 0, bar.Position.Y.Scale, 0)
            ReplicatedStorage.Fishing:FireServer("1")
        end
    end)
end)

local namelessKeyLastPress = { A = 0, S = 0, D = 0 }
local namelessLaneMap = {
    ProgressionA = "A",
    ProgressionS = "S",
    ProgressionD = "D",
}
local namelessNextScanAt = 0
local namelessNextRemoteAt = 0

local function clickGuiButton(guiObject)
    if not guiObject or not guiObject.Visible then return false end
    local ok = pcall(function()
        if guiObject.Activate then
            guiObject:Activate()
        end
        local x = guiObject.AbsolutePosition.X + (guiObject.AbsoluteSize.X * 0.5)
        local y = guiObject.AbsolutePosition.Y + (guiObject.AbsoluteSize.Y * 0.5)
        VirtualInput:SendMouseButtonEvent(x, y, 0, true, game, 0)
        VirtualInput:SendMouseButtonEvent(x, y, 0, false, game, 0)
    end)
    return ok
end

local function pressRhythmKey(letter)
    local keyMap = {
        A = Enum.KeyCode.A,
        S = Enum.KeyCode.S,
        D = Enum.KeyCode.D,
    }
    local keyCode = keyMap[letter]
    if not keyCode then return end
    local now = os.clock()
    if now - (namelessKeyLastPress[letter] or 0) < 0.06 then return end
    namelessKeyLastPress[letter] = now
    VirtualInput:SendKeyEvent(true, keyCode, false, game)
    task.wait(0.02)
    VirtualInput:SendKeyEvent(false, keyCode, false, game)
end

local function handleNamelessRhythmMinigame()
    if not getgenv().NNVN_AutoNamelessMinigame then return end

    local now = os.clock()
    if now < namelessNextScanAt then return end
    namelessNextScanAt = now + 0.03

    local fishing = MainGui and MainGui:FindFirstChild("Fishing")
    local rhythm = fishing and fishing:FindFirstChild("Rhythm")
    if not rhythm or not rhythm.Visible then return end

    for laneName, keyLetter in pairs(namelessLaneMap) do
        local lane = rhythm:FindFirstChild(laneName)
        local noteFrame = lane and lane:FindFirstChild("NoteFrame")
        local button = lane and lane:FindFirstChild("Button")

        if noteFrame and button and noteFrame.Visible and button.Visible then
            local buttonCenterY = button.AbsolutePosition.Y + (button.AbsoluteSize.Y * 0.5)
            local hitWindow = math.max(24, math.floor(button.AbsoluteSize.Y * 0.7))

            for _, child in ipairs(noteFrame:GetChildren()) do
                if child:IsA("GuiObject") and child.Visible then
                    local noteCenterY = child.AbsolutePosition.Y + (child.AbsoluteSize.Y * 0.5)
                    if math.abs(noteCenterY - buttonCenterY) <= hitWindow then
                        pressRhythmKey(keyLetter)
                        clickGuiButton(button)
                        break
                    end
                end
            end
        end
    end

    if now >= namelessNextRemoteAt then
        namelessNextRemoteAt = now + 0.08
        pcall(function()
            ReplicatedStorage.Events.RhythmHit:FireServer("hit")
        end)
    end
end

RunService.RenderStepped:Connect(function()
    handleNamelessRhythmMinigame()
end)

-- CharacterAdded
LocalPlayer.CharacterAdded:Connect(function(char)
    task.wait(0.5)
    local hum = char:FindFirstChild("Humanoid")
    if hum then hum.WalkSpeed = getgenv().NNVN_WalkSpeed end
    if getgenv().NNVN_AutoCast and not HasFishingRod() then pcall(EquipSlot1) end
    if getgenv().NNVN_NoClip then
        for _, part in ipairs(char:GetChildren()) do
            if part:IsA("BasePart") then part.CanCollide = false; part.CanTouch = false end
        end
    end
    if getgenv().NNVN_AutoEquipRod then pcall(EquipSlot1) end
end)

-- Anti AFK
task.spawn(function()
    while task.wait(240) do
        if not getgenv().NNVN_AntiAFK then continue end
        pcall(function()
            local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")
            if hum then hum:MoveTo(hum.RootPart.Position + Vector3.new(0,0,0.5)) end
        end)
    end
end)

-- Auto Rejoin
LocalPlayer.CharacterRemoving:Connect(function()
    if not getgenv().NNVN_AutoRejoin then return end
    task.delay(3, function()
        pcall(function() TeleportService:TeleportToPlaceInstance(PlaceId, game.JobId, LocalPlayer) end)
    end)
end)

-- Auto Boss — [PROX] TP near Enzo before every fire
task.spawn(function()
    while task.wait(5) do
        if not getgenv().NNVN_AutoBoss then continue end
        pcall(function()
            -- [PROX] find Enzo dynamically each tick (respawns between phases)
            local enzoNPC = FindNPCByName("Enzo")
                or FindNPCByName("Boss NPC")
                or FindNPCByName("BossNPC")
            if enzoNPC then TPNear(enzoNPC, PROX_OFFSET) end
            ReplicatedStorage.Events.StartBossFight:FireServer("Enzo", getgenv().NNVN_BossDifficulty)
        end)
    end
end)

-- Auto Phase 2 (client-side click timing only; does not fire any RemoteEvent)
p2ClickCo = nil
enzoLastClick = 0
enzoLastBarX = nil
enzoLastBarAt = 0

function getGuiCenter(guiObject)
    local pos, size = guiObject.AbsolutePosition, guiObject.AbsoluteSize
    return math.floor(pos.X + size.X * 0.5), math.floor(pos.Y + size.Y * 0.5)
end

function p2ClickLoop()
    local fishing = MainGui:FindFirstChild("Fishing")
    if not fishing then return end
    local bossBar = fishing:FindFirstChild("BossFightBar")
    if not bossBar then return end
    local bar     = bossBar:FindFirstChild("Bar")
    local hitbox  = bossBar:FindFirstChild("Hitbox")
    if not bar or not hitbox then return end

    while getgenv().NNVN_AutoPhase2 do
        if bossBar.Visible and bar.Visible and hitbox.Visible then
            local now = os.clock()
            local barCenterX = bar.AbsolutePosition.X + bar.AbsoluteSize.X * 0.5
            local hbLeft     = hitbox.AbsolutePosition.X
            local hbRight    = hbLeft + hitbox.AbsoluteSize.X
            local margin     = math.max(5, math.floor(hitbox.AbsoluteSize.X * 0.04))

            local velocity = 0
            if enzoLastBarX and enzoLastBarAt > 0 then
                local dt = math.max(0.0001, now - enzoLastBarAt)
                velocity = math.abs(barCenterX - enzoLastBarX) / dt
            end
            enzoLastBarX = barCenterX
            enzoLastBarAt = now

            if barCenterX >= (hbLeft - margin) and barCenterX <= (hbRight + margin) then
                local clickInterval = velocity >= 900 and 0.014 or velocity >= 550 and 0.018 or 0.024
                if now - enzoLastClick >= clickInterval then
                    enzoLastClick = now
                    pcall(function()
                        local x, y = getGuiCenter(hitbox)
                        VirtualInput:SendMouseButtonEvent(x, y, 0, true, game, 0)
                        VirtualInput:SendMouseButtonEvent(x, y, 0, false, game, 0)
                    end)
                end
            end
        end
        RunService.RenderStepped:Wait()
    end
end

-- Tự động khởi tạo/dừng khi toggle thay đổi
p2OldState = false
RunService.RenderStepped:Connect(function()
    local cur = getgenv().NNVN_AutoPhase2
    if cur == p2OldState then return end
    p2OldState = cur
    if cur then
        if not p2ClickCo then
            p2ClickCo = coroutine.create(p2ClickLoop)
            coroutine.resume(p2ClickCo)
        end
    else
        if p2ClickCo then coroutine.close(p2ClickCo); p2ClickCo = nil end
        enzoLastClick = 0
        enzoLastBarX = nil
        enzoLastBarAt = 0
    end
end)

-- Auto Equip Best Bait — [PROX] no NPC needed for equip (inventory remote)
task.spawn(function()
    while task.wait(3) do
        if not getgenv().NNVN_AutoEquipBestBait then continue end
        pcall(function()
            local userData = GetPlayerData()
            if not userData then return end
            local equipped = userData:FindFirstChild("EquippedBait")
            if not equipped then return end
            local current  = equipped.Value or ""
            local best     = GetBestBait()
            if best and best ~= current then
                EquipBait(best)
                WindUI:Notify{Title="自动装备 --雪天缤纷", Content="最佳鱼饵："..best, Duration=2}
            end
        end)
    end
end)

-- Auto Equip Best Orb
task.spawn(function()
    while task.wait(5) do
        if not getgenv().NNVN_AutoEquipBestOrb then continue end
        pcall(function()
            local best = GetBestOrb()
            if best then EquipOrb(best) end
        end)
    end
end)

-- Auto Buy Bait with threshold — [PROX] TP near seller on each purchase
task.spawn(function()
    while task.wait(1) do
        if not getgenv().NNVN_AutoBuyBait then continue end
        local threshold = getgenv().NNVN_AutoBuyBaitThreshold or 5
        local baitName  = getgenv().NNVN_SelectedBait or "Basic Bait"
        local userData  = GetPlayerData()
        if not userData then continue end
        local baitFolder = userData:FindFirstChild("Bait")
        if not baitFolder then continue end
        local bait = baitFolder:FindFirstChild(baitName)
        if bait and bait:IsA("NumberValue") and bait.Value < threshold then
            pcall(function()
                -- [PROX] TP near bait seller before buying
                TPNearBaitSeller()
                ReplicatedStorage.Events.BuyBait:FireServer(baitName, getgenv().NNVN_BaitQuantity or 10)
                WindUI:Notify{Title="自动购买 --雪天缤纷", Content="已购买 "..(getgenv().NNVN_BaitQuantity or 10).."x "..baitName, Duration=2}
            end)
        end
        task.wait(getgenv().NNVN_AutoBuyBaitDelay or 3)
    end
end)

-- Infinite Jump
UserInputService.JumpRequest:Connect(function()
    if getgenv().NNVN_InfiniteJump and LocalPlayer.Character then
        local h = LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
        if h then h:ChangeState(Enum.HumanoidStateType.Jumping) end
    end
end)

-- Fly mode update
RunService.RenderStepped:Connect(function()
    if getgenv().NNVN_FlyMode and flyState.flying and flyState.bg and flyState.bv and LocalPlayer.Character then
        local h = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if h then
            local move     = LocalPlayer.Character.Humanoid.MoveDirection
            local horizontal = Vector3.new(move.X, 0, move.Z)
            local vertical   = (flyState.flyKeys.Up and 1 or 0) - (flyState.flyKeys.Down and 1 or 0)
            flyState.bv.Velocity = horizontal * flyState.speed + Vector3.new(0, vertical * flyState.speed, 0)
            local look = Vector3.new(Camera.CFrame.LookVector.X, 0, Camera.CFrame.LookVector.Z)
            if look.Magnitude > 0.01 then flyState.bg.CFrame = CFrame.lookAt(h.Position, h.Position + look.Unit) end
        end
    end
    if getgenv().NNVN_FullBright then
        Lighting.Ambient           = Color3.new(1,1,1)
        Lighting.ColorShift_Bottom = Color3.new(1,1,1)
        Lighting.ColorShift_Top    = Color3.new(1,1,1)
        Lighting.Brightness        = 2
        Lighting.OutdoorAmbient    = Color3.new(1,1,1)
    end
end)

-- NoClip
RunService.Stepped:Connect(function()
    if not getgenv().NNVN_NoClip then return end
    if LocalPlayer.Character then
        for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") and v.CanCollide then v.CanCollide = false end
        end
    end
end)

-- ====================================================
-- 28. FINALIZE
-- ====================================================
Window:SelectTab(1)
if getgenv().NNVN_Notify then
    WindUI:Notify{
        Title    = "雪天缤纷ProMax v3 [WindUI] --雪天缤纷",
        Content  = T.loaded.."\ndiscord.gg/5JJAuHRUgJ\nWindUI loaded",
        Duration = 6
    }
end

getgenv().NNVN_Loaded = true

-- Auto-reload on teleport
queueteleport = queue_on_teleport
    or (rawget(_G,"syn") and rawget(_G,"syn").queue_on_teleport)
    or (rawget(_G,"fluxus") and rawget(_G,"fluxus").queue_on_teleport)
if queueteleport and SCRIPT_URL ~= "" then
    local isTeleporting = false
    LocalPlayer.OnTeleport:Connect(function()
        if not isTeleporting then
            isTeleporting = true
            queueteleport([[
                _G.SCRIPT_LOADED = nil
                loadstring(game:HttpGet(']] .. SCRIPT_URL .. [['))()
            ]])
        end
    end)
end

print(ProtectionConfig.HubName .. " Loaded Successfully!")
