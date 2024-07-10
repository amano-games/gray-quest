import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/timer"


local pd <const> = playdate
local gfx <const> = pd.graphics

local imgs = gfx.imagetable.new("imgs/test")
assert(imgs)

local function init()
	pd.display.setRefreshRate(50)
end

init()

local t = 0
function pd.update()
	local frame = (t % 2) + 1
	pd.timer.updateTimers()
	imgs:drawImage(frame, 0, 0)
	pd.drawFPS(0, 0)
	t += 1
end
