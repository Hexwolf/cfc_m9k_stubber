CFC_M9k_Stubber = {}

local stubQueue = {}

function CFC_M9k_Stubber.registerStub( stub )
    table.insert( stubQueue, stub )
end

-- Load our sweps
local packs = { "m9k_heavy_weapons", "m9k_small_arms_pack", "m9k_specialties", "m9k_assault_rifles"}

for _, pack in pairs(packs) do
    local packPath = "m9k_stubber/sweps/" .. pack .. "/"

    -- List all sweps in the packs folder, sorted by names ascending
    local sweps, _ = file.Find( packPath .. "*.lua", "LUA", "nameasc" )

    for _, swep in next, sweps do
        if swep then
            local swepPath = packPath .. swep .. ".lua"

            include( swepPath )
        end
    end
end

local function m9kIsLoaded()
    -- "m9k_winchester73" is the last weapon listed alphabetically in the last pack defined, so it'll likely be the last one loaded?
    return weapons.GetStored("m9k_winchester73") != nil
end

local function runStubs()
    for _, stub in pairs(stubQueue) do
        stub()
    end
end

local function handleWaiterTimeout()
    print("oops")
end

local waiterLoaded = Waiter

if waiterLoaded then
    Waiter.waitFor( m9kIsLoaded, runStubs, handleWaiterTimeout )
else
    WaiterQueue = WaiterQueue or {}

    local struct = {}
    struct["waitingFor"] = m9kIsLoaded
    struct["onSuccess"] = runStubs
    struct["onTimeout"] = handleWaiterTimeout

    table.insert( WaiterQueue, struct )
end
