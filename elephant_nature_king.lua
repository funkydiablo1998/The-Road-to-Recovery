-- 'The Road to Recovery' --

--Step 1--
-- Establishing the Foundation--

-- Global Variables --

local timeForHealing = 0
local happinessLevel = 0

-- Functions --

-- function to calculate time for healing 
function calcTimeForHealing(time) 
  timeForHealing = timeForHealing + time
end

-- function to increase happiness
function increaseHappinessLevel(level)
  happinessLevel = happinessLevel + level
end

--Step 2--
-- Healing the Wounds-- 

-- Global Variables --

local roadToRecovery = false

-- Functions --

-- function to start the healing 
function startHealing() 
  if (timeForHealing > 0 and happinessLevel > 0) then
    roadToRecovery = true
  else 
    roadToRecovery = false
  end
end

--Step 3--
-- Celebrate the Success--

-- Global Variables --

local celebrationEvent = false

-- Functions --

-- function to plan a celebration 
function planCelebration()
  if (roadToRecovery) then
    celebrationEvent = true
  else 
    celebrationEvent = false
  end
end

--Step 4--
-- Sustaining the Change--

-- Global Variables --

local sustainedChange = false

-- Functions --

-- function to sustain the change 
function sustainChange()
  if (celebrationEvent) then
    sustainedChange = true
  else 
    sustainedChange = false
  end
end

--Step 5--
-- Reflecting on the Journey--

-- Global Variables --

local reflection = false

-- Functions --

-- function to reflect on the journey
function reflect()
  if (sustainedChange) then
    reflection = true
  else
    reflection = false
  end
end