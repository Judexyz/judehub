if game.PlaceId == 6911148748 then 

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Car Driving Indonesia Script",
   LoadingTitle = "iconic_legnd's Hub",
   LoadingSubtitle = "by Sirius",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "CDID Script"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "CDID Grind",
      Subtitle = "CDID | Key",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/S7z7zPZV"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("CDID", 4483362458) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "Good UI",
   Content = "Subscribe.",
   Duration = 0.9,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
}) 

local Button = Tab:CreateButton({
   Name = "Vehicle Speed",
   Callback = function()
                -- Toggles infinite speed between on or off on every script run
_G.infinspeed = not _G.infinspeed
  
if _G.infinSpeedStarted == nil then
    --Ensures this only runs once to save resources
    _G.infinSpeedStarted = true
    
    --Notifies readiness
    game.StarterGui:Setcore("SendNotification", {Title= "Youtube Hub" ; Text= "Infinite Speed Activated!"; Duration=5;})
    
    
   end,
})