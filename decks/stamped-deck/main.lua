-- Stamped Deck: every playing card starts with a random seal
local L = SMODS

-- Register a single-tile atlas. Since your 1x image is 71x95 and 2x is 142x190,
-- px/py = 71/95 means the sheet has exactly ONE cell at (x=0,y=0).
SMODS.Atlas{
  key  = "sd_front_atlas",
  path = "stamped-deck/sprites/stamped-front.png",
  px   = 71,
  py   = 95
}

local deck = L.Back({
  key = "b_sd_stamped",
  loc_txt = {
    name = "Stamped Deck",
    text = { "All playing cards start", "with a random {C:attention}Seal{}." }
  },

  -- Some UIs read these:
  atlas = "sd_front_atlas",
  pos   = { x = 0, y = 0 },

  -- And the card face uses this:
  front = { atlas = "sd_front_atlas", pos = { x = 0, y = 0 } }
})

local SEALS = { "Red", "Blue", "Gold", "Purple" }

local function apply_random_seals_to_area(area)
  if not (area and area.cards) then return end
  for i, card in ipairs(area.cards) do
    if card and card.set_seal then
      local seal = pseudorandom_element(SEALS, pseudoseed("sd_seal_" .. i))
      card:set_seal(seal, true)
    end
  end
end

function deck:apply(_)
  G.E_MANAGER:add_event(Event({
    func = function()
      apply_random_seals_to_area(G.deck)
      apply_random_seals_to_area(G.hand)
      apply_random_seals_to_area(G.discard)
      return true
    end
  }))
end

function deck:check_for_unlock(_) return true end
print("[stamped-deck] Atlas + Back registered (px=71, py=95)")
