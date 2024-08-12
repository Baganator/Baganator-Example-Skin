local function ConvertTags(tags)
  local res = {}
  for _, tag in ipairs(tags) do
    res[tag] = true
  end
  return res
end

local skinners = {
  ItemButton = function(frame)
  end,
  IconButton = function(button, tags)
    if tags.sort then
      -- do something
    elseif tags.bank then
      -- do something
    elseif tags.guildBank then
      -- do something
    elseif tags.allCharacters then
      -- do something
    elseif tags.customise then
      -- do something
    elseif tags.bagSlots then
      -- do something
    else
      -- generic
    end
  end,
  Button = function(frame)
  end,
  ButtonFrame = function(frame, tags)
    if tags.backpack then
      -- do something
    elseif tags.bank then
      -- do something
    elseif tags.guild then
      -- do something
    else
      -- generic
    end
  end,
  SearchBox = function(frame)
  end,
  EditBox = function(frame)
  end,
  TabButton = function(frame)
  end,
  TopTabButton = function(frame)
  end,
  SideTabButton = function(frame)
  end,
  TrimScrollBar = function(frame)
  end,
  CheckBox = function(frame)
  end,
  Slider = function(frame)
  end,
  InsetFrame = function(frame)
  end,
  Divider = function(tex)
  end,
  CategoryLabel = function(btn)
  end,
  CategorySectionHeader = function(btn)
  end,
  CornerWidget = function(frame, tags)
    -- Example widget
    if frame:IsObjectType("FontString") then
      -- modify the scale/font size
    end
  end,
  DropDownWithPopout = function(button)
  end,
}

local function SkinFrame(details)
  local func = skinners[details.regionType]
  if func then
    func(details.region, details.tags and ConvertTags(details.tags) or {})
  end
end

Baganator.API.Skins.RegisterListener(SkinFrame)

for _, details in ipairs(Baganator.API.Skins.GetAllFrames()) do
  SkinFrame(details)
end
