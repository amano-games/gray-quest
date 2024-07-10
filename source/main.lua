import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/crank"


local pd <const> = playdate
local gfx <const> = pd.graphics

local ticks_per_rev = 6
local fps = 50
local imgs = gfx.imagetable.new("imgs/test")
assert(imgs)

local function clamp(value, min, max)
	return math.max(math.min(value, max), min)
end


local function init()
	pd.display.setRefreshRate(fps)
end

init()

local t = 0
function pd.update()
	local ticks = pd.getCrankTicks(ticks_per_rev)

	if ticks ~= 0 then
		fps = clamp(fps + ticks, 20, 200)
		pd.display.setRefreshRate(fps)
	end

	local frame = (t % 2) + 1
	imgs:drawImage(frame, 0, 0)
	pd.drawFPS(0, 0)
	t += 1
end
