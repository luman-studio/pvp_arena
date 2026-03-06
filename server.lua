local BANNER_URL = "https://gist.githubusercontent.com/draobrehtom/1dd53e244851050285c5bac952d5a32b/raw/gistfile1.txt"

-- Fallback banner if GitHub is unavailable
local fallbackBanner = [[
  ^4 _                                  ^0  ^7 _____ _             _ _       ^0
  ^4| |    _   _ _ __ ___   __ _ _ __   ^0  ^7/  ___| |           | (_)      ^0
  ^4| |   | | | | '_ ` _ \ / _` | '_ \  ^0  ^7\ `--.| |_ _   _  __| |_  ___  ^0
  ^4| |   | |_| | | | | | | (_| | | | | ^0  ^7 `--. \ __| | | |/ _` | |/ _ \ ^0
  ^4| |____\__,_|_| |_| |_|\__,_|_| |_| ^0  ^7/\__/ / |_| |_| | (_| | | (_) |^0
  ^4\_____/                              ^0  ^7\____/ \__|\__,_|\__,_|_|\___/ ^0

  ^3PvP Arena ^0| ^7Free resource by Luman Studio^0
  ^3Store:^0    ^4https://lumanstudio.com/^0
  ^3More scripts and maps at our store!^0
]]

CreateThread(function()
    PerformHttpRequest(BANNER_URL, function(statusCode, response)
        print('')
        if statusCode == 200 and response and #response > 0 then
            print(response)
        else
            print(fallbackBanner)
        end
    end, "GET")
end)
