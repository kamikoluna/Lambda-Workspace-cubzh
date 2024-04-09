--ui = require("uikit")
Modules = {
    openui = 'github.com/FabberXD/openui/core:05e2430'
  }
  local menuBar = require("ui_container"):createVerticalContainer(Color.DarkGrey)
  --local hugebackground = ui:createFrame(Color(0,0,0))
  local eConfig = {
      debug = false,
      cameraLayer = 11,
      maxLayers = 500,
      layerStep = -0.1,
      collisionGroup = 12,
      buttonPadding = 4,
      buttonBorder = 3,
      buttonUnderline = 1,
  }
  
  -- Define the parentDidResize method for hugebackground
  --[[function hugebackground:parentDidResize()
      self.Width = 1024
      self.Height = 1024
  end]]--
  function title()
      local uiInstance = openui.init(eConfig)
      if uiInstance then
          local HugeBlackScreen = uiInstance:Frame()
          HugeBlackScreen.Color = Color(0, 0, 0, math.huge)
          HugeBlackScreen.parentDidResize = function(_)
              HugeBlackScreen.Width = Screen.Width
              HugeBlackScreen.Height = Screen.Height
              HugeBlackScreen.Position = Number2(Screen.Width/2 - HugeBlackScreen.Width/2, Screen.Height/2 - HugeBlackScreen.Height/2)
          end
          HugeBlackScreen:parentDidResize()
          local WhiteBanner = uiInstance:Frame()
          WhiteBanner.Color = Color(255, 255, 255, 5000)
          WhiteBanner.parentDidResize = function(_)
              WhiteBanner.Width = Screen.Width/0.5
              WhiteBanner.Height = Screen.Height/10
              WhiteBanner.Position = Number2(-10,Screen.Width/2 - HugeBlackScreen.Height/2)
          end
          WhiteBanner:parentDidResize()
          local SponserTxt = uiInstance:Text("Sponser by sysfab.")
          SponserTxt.Color = Color(0, 0, 0, 255)
          SponserTxt:SetParent(WhiteBanner)
          SponserTxt.FontSize = 100
          SponserTxt.parentDidResize = function()
              SponserTxt.Position = Number2(Screen.Width/5,10)
          end
          SponserTxt:parentDidResize()
          local slogan = uiInstance:Text("(just kidding)")
          HugeBlackScreen.Color = Color(0, 0, 0, 255)
          slogan:SetParent(WhiteBanner2)
          slogan.FontSize = 50
          slogan.parentDidResize = function()
              slogan.Position = Number2(Screen.Width/5,-20)
          end
          slogan:parentDidResize()
      else
          error("Failed to initialize openui with the provided configuration.")
      end
  end
  
  
  Client.OnStart = function()
      title()
      error
  end