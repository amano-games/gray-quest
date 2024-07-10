import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"


local pd <const> = playdate
local gfx <const> = pd.graphics

local function init()
	pd.display.setRefreshRate(50)
	local bg_img = gfx.image.new("imgs/bg")
	assert(bg_img)

	gfx.sprite.setBackgroundDrawingCallback(
		function()
			bg_img:draw(0, 0)
		end
	)
end


init()


function pd.update()
	gfx.sprite.update()
	pd.timer.updateTimers()
	pd.drawFPS(0, 0)
end
