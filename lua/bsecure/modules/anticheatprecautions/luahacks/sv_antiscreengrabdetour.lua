util.AddNetworkString("bSecure.DetouredScreengrabDetected")
net.Receive("bSecure.DetouredScreengrabDetected", function(_,pPlayer)
    bSecure.PrintDetection(pPlayer:Nick() .. " - " .. bSecure:GetPhrase("screengrab_detour_detected"))
    hook.Run("bSecure.DetectedDetouredScreengrab", pPlayer)
    bSecure.BanPlayer(pPlayer,"Detoured screengrab", 0)
end)