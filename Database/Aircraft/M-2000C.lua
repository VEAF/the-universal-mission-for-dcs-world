Library.aircraft["M-2000C"] = {
    altitude = DCSEx.converter.feetToMeters(20000),
    speed = DCSEx.converter.knotsToMps(300),
    payload = { chaff = 112,flare = 16,fuel = 3165,gun = 100 },
    properties = { ForceINSRules = false, LaserCode100 = 6, NoDDMSensor = false, LaserCode1 = 8, WpBullseye = 0, LoadNVGCase = false, RocketBurst = 6, LaserCode10 = 8, GunBurst = 1 },
    pylons = {
        default = {
         [1] = { CLSID = "{MMagicII}" },
         [2] = { CLSID = "{Matra_S530D}" },
         [5] = { CLSID = "{M2KC_RPL_522}" },
         [8] = { CLSID = "{Matra_S530D}" },
         [9] = { CLSID = "{MMagicII}" },
         -- Payload.Decade2000.Task.AirToGround.Pylon01={MMagicII}
         -- Payload.Decade2000.Task.AirToGround.Pylon02={M2KC_RAFAUT_MK82}
         -- Payload.Decade2000.Task.AirToGround.Pylon03={BCE4E030-38E9-423E-98ED-24BE3DA87C32}
         -- Payload.Decade2000.Task.AirToGround.Pylon04={BCE4E030-38E9-423E-98ED-24BE3DA87C32}
         -- Payload.Decade2000.Task.AirToGround.Pylon05={M2KC_RPL_522}
         -- Payload.Decade2000.Task.AirToGround.Pylon06={BCE4E030-38E9-423E-98ED-24BE3DA87C32}
         -- Payload.Decade2000.Task.AirToGround.Pylon07={BCE4E030-38E9-423E-98ED-24BE3DA87C32}
         -- Payload.Decade2000.Task.AirToGround.Pylon08={M2KC_RAFAUT_MK82}
         -- Payload.Decade2000.Task.AirToGround.Pylon09={MMagicII}
         -- Payload.Decade2000.Task.AntiShip.Pylon01={MMagicII}
         -- Payload.Decade2000.Task.AntiShip.Pylon02={M2KC_RAFAUT_MK82}
         -- Payload.Decade2000.Task.AntiShip.Pylon03={BCE4E030-38E9-423E-98ED-24BE3DA87C32}
         -- Payload.Decade2000.Task.AntiShip.Pylon04={BCE4E030-38E9-423E-98ED-24BE3DA87C32}
         -- Payload.Decade2000.Task.AntiShip.Pylon05={M2KC_RPL_522}
         -- Payload.Decade2000.Task.AntiShip.Pylon06={BCE4E030-38E9-423E-98ED-24BE3DA87C32}
         -- Payload.Decade2000.Task.AntiShip.Pylon07={BCE4E030-38E9-423E-98ED-24BE3DA87C32}
         -- Payload.Decade2000.Task.AntiShip.Pylon08={M2KC_RAFAUT_MK82}
         -- Payload.Decade2000.Task.AntiShip.Pylon09={MMagicII}
         -- Payload.Decade2000.Task.SEAD.Pylon01={MMagicII}
         -- Payload.Decade2000.Task.SEAD.Pylon02={M2KC_RAFAUT_MK82}
         -- Payload.Decade2000.Task.SEAD.Pylon03={BCE4E030-38E9-423E-98ED-24BE3DA87C32}
         -- Payload.Decade2000.Task.SEAD.Pylon04={BCE4E030-38E9-423E-98ED-24BE3DA87C32}
         -- Payload.Decade2000.Task.SEAD.Pylon05={M2KC_RPL_522}
         -- Payload.Decade2000.Task.SEAD.Pylon06={BCE4E030-38E9-423E-98ED-24BE3DA87C32}
         -- Payload.Decade2000.Task.SEAD.Pylon07={BCE4E030-38E9-423E-98ED-24BE3DA87C32}
         -- Payload.Decade2000.Task.SEAD.Pylon08={M2KC_RAFAUT_MK82}
         -- Payload.Decade2000.Task.SEAD.Pylon09={MMagicII}
        }
    }
}
