local username = game.Players.LocalPlayer.Name

if username == "XxSparkC0dexX2003" or username == "baohan_200" then
    getgenv().Config = {
        ["Shoot Heart When Ice Spike Breaks"] = true,
        ["Drive Boat To Tiki"] = true,
        ["No Frog"] = true,
        ["Random Devil Fruit"] = false,
        ["Use skill fast dont hold"] = true,
        ["Select Sea Events"] = {},
        ["Select Rarity Scroll "] = { [1] = "Mythical" },
        ["Webhook Shoot Heart Leviathan"] = false,
        ["Auto Farm Material Sanguine Art"] = false,
        ["Webhook Unlock Draco v4"] = false,
        ["Auto light the torch"] = false,
        ["Webhook Destroy IDK"] = false,
        ["Use Click M1 Fruit"] = true,
        ["Ping Discord"] = false,
        ["Drive Boat To Hydra"] = false,
        ["Boost Fps"] = false,
        ["Webhook Drive To Tiki/Hydra"] = false,
        ["Auto Chest Hop"] = false,
        ["Webhook Find Leviathan"] = false,
        ["Auto Craft Scroll"] = false,
        ["Account Buy Boat"] = true,
        ["Auto Store Fruit"] = false,
        ["Start Hunt Leviathan"] = true
    }
else
    getgenv().Config = {
	["Shoot Heart When Ice Spike Breaks"] = true,
	["Select Rarity Scroll "] = {
		[1] = "Mythical"
	},
	["Webhook Destroy IDK"] = false,
	["Drive Boat To Tiki"] = true,
	["Use Click M1 Fruit"] = false,
	["No Frog"] = true,
	["Use New Method Shoot Heart"] = false,
	["Random Devil Fruit"] = false,
	["Use skill fast dont hold"] = false,
	["Select Sea Events"] = {

	},
	["Select Skills Blox Fruit"] = {

	},
	["Webhook Shoot Heart Leviathan"] = false,
	["Webhook Find Leviathan"] = false,
	["Auto Chest Hop"] = false,
	["Auto Farm Material Sanguine Art"] = false,
	["Webhook Unlock Draco v4"] = false,
	["Auto light the torch"] = false,
	["Webhook Drive To Tiki/Hydra"] = false,
	["Select Skills Sword"] = {

	},
	["Select Skills Melee"] = {

	},
	["Boost Fps"] = true,
	["Select Skills Gun"] = {

	},
	["Ping Discord"] = false,
	["Use New  Method Drive"] = false,
	["Drive Boat To Hydra"] = false,
	["Select Owner Boat Beast Hunter"] = "XxSparkC0dexX2003",
	["Auto Craft Scroll"] = false,
	["Account Buy Boat"] = false,
	["Auto Store Fruit"] = false,
	["Start Hunt Leviathan"] = true
}
end

repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Key = "1fac947ad1d37c7fc21830fd"
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/BananaCat-KaitunLevi.lua"))()
