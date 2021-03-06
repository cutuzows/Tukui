-- reposition capture bar to top/center of the screen

local function CaptureUpdate()
	if NUM_EXTENDED_UI_FRAMES then
		local captureBar
		for i=1, NUM_EXTENDED_UI_FRAMES do
			captureBar = getglobal("WorldStateCaptureBar" .. i)

			if captureBar and captureBar:IsVisible() then
				captureBar:ClearAllPoints()
				
				if( i == 1 ) then
					captureBar:SetPoint("TOP", UIParent, "TOP", 0, TukuiDB.Scale(-170))
				else
					captureBar:SetPoint("TOPLEFT", getglobal("WorldStateCaptureBar" .. i - 1 ), "TOPLEFT", 0, TukuiDB.Scale(-45))
				end
			end	
		end	
	end
end
hooksecurefunc("UIParent_ManageFramePositions", CaptureUpdate)