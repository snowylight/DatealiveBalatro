
SMODS.Atlas{
    key = 'datealive',
    px = 71,
    py = 95,
    path = 'datealive.png'
}

SMODS.Atlas{
    key = 'nibeelcole',
    px = 71,
    py = 95,
    path = 'nibeelcole.png'
}

SMODS.Atlas{
    key = 'inversesixinai',
    px = 71,
    py = 95,
    path = 'inversesixinai.png'
}

SMODS.Joker{
    key = 'shixiang',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {mult = 10} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.other_card:get_id() == 10 then
            return {
                mult = card.ability.extra.mult,
                card = card
            }
        end

        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 10 then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
    end
}

SMODS.Joker{
    key = 'inverseshixiang',
    rarity = 3,
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 5, y = 1 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {mult = 10} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.other_card:get_id() == 10 then
            return {
                mult = card.ability.extra.mult,
                card = card
            }
        end
        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 10 then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
        if context.cardarea == G.hand and context.individual and not context.end_of_round then
            if context.other_card:is_suit('Spades') then
                return {
                    h_mult = card.ability.extra.mult,
                    card = card
                }
            end
        end
    end
}

SMODS.Joker{
    key = 'meijiu',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 5, y = 0 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {chips = 99} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.other_card:get_id() == 9 then
            return {
                chips = card.ability.extra.chips,
                card = card
            }
        end

        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 9 then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
    end
}

SMODS.Joker{
    key = 'yejushi',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 1, y = 1 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.before and not context.blueprint then
            for k, v in ipairs(context.scoring_hand) do
                if v:get_id() == 8 then 
                    v:set_ability(G.P_CENTERS.m_gold, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            return true
                        end
                    })) 
                end
            end
        end

        if context.individual and context.cardarea == G.play and
        context.other_card:get_id() == 8 then
            context.other_card:set_ability(G.P_CENTERS.m_gold, nil, true)
        end

        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 8 then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
    end
}

SMODS.Joker{
    key = 'xixian',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 2, y = 1 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.before and not context.blueprint then
            for k, v in ipairs(context.scoring_hand) do
                if v:get_id() == 8 then 
                    v:set_ability(G.P_CENTERS.m_steel, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            return true
                        end
                    })) 
                end
            end
        end

        if context.individual and context.cardarea == G.play and
        context.other_card:get_id() == 8 then
            context.other_card:set_ability(G.P_CENTERS.m_steel, nil, true)
        end

        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 8 then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
    end
}

SMODS.Joker{
    key = 'qizui',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 6, y = 0 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {dollars = 7} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.dollars} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.other_card:get_id() == 7 then
            ease_dollars(card.ability.extra.dollars)
        end

        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 7 then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
    end
}

SMODS.Joker{
    key = 'liucan',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 7, y = 0 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {odds = 6} },
    loc_vars = function(self, info_queue, card)
        return { vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.other_card:get_id() == 6 then
            if pseudorandom('liucan') < (G.GAME and G.GAME.probabilities.normal or 1)/card.ability.extra.odds then
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    local card_type = 'Planet'
                    G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                    G.E_MANAGER:add_event(Event({
                        trigger = 'before',
                        delay = 0.0,
                        func = (function()
                            if G.GAME.last_hand_played then
                                local _planet = 0
                                for k, v in pairs(G.P_CENTER_POOLS.Planet) do
                                    if v.config.hand_type == G.GAME.last_hand_played then
                                        _planet = v.key
                                    end
                                end
                                local card = create_card(card_type,G.consumeables, nil, nil, nil, nil, _planet, 'pliucan')
                                card:add_to_deck()
                                G.consumeables:emplace(card)
                                G.GAME.consumeable_buffer = 0
                            end
                            return true
                        end)}))                        
                end
            end
        end

        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 6 then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
    end
}

SMODS.Joker{
    key = 'qinli',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 2, y = 0 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.other_card:get_id() == 5 then
            ease_discard(1)
        end

        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 5 then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
    end
}

SMODS.Joker{
    key = 'sixinai',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 3, y = 0 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {repetitions = 4} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.repetitions} }
    end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 4 then
            return {
                message = localize('k_again_ex'),
                repetitions = card.ability.extra.repetitions,
                card = card
            }
        end
    end
}

SMODS.Joker{
    key = 'inversesixinai',
    rarity = 3,
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = 'inversesixinai',
    config = { extra = {repetitions = 4} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.repetitions} }
    end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 4 then
            return {
                message = localize('k_again_ex'),
                repetitions = card.ability.extra.repetitions,
                card = card,
                swap = true
            }
        end
    end
}

SMODS.Joker{
    key = 'kuangsan',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 4, y = 0 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {odds = 33} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.odds} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.other_card:get_id() == 3 then
            if pseudorandom('kuangsan') < 1/card.ability.extra.odds then
                ease_ante(-1)
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante-1
            end
        end

        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 3 then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
    end
}

SMODS.Joker{
    key = 'inversekuangsan',
    rarity = 3,
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 6, y = 1 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {odds = 33} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.odds} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.other_card:get_id() == 3 then
            if pseudorandom('whitekuangsan') < 1/card.ability.extra.odds then
                ease_ante(1)
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante+1
        G.jokers.config.card_limit = G.jokers.config.card_limit + 3
            end
        end

        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 3 then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
    end
}

SMODS.Joker{
    key = 'erya',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 1 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {xmult = 2, odds = 2} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.xmult, ''..(G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.other_card:get_id() == 2 then
            if pseudorandom('erya') < (G.GAME and G.GAME.probabilities.normal or 1)/card.ability.extra.odds then
            return {
                x_mult = card.ability.extra.xmult,
                card = card
            }
            end
        end

        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 2 then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
    end
}

SMODS.Joker{
    key = 'inverseerya',
    rarity = 3,
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 7, y = 1 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {xmult = 0.2} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.xmult} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.other_card:get_id() == 2 then
            for k, v in pairs(G.hand.cards) do
                if v:get_id() == 2 then
                    v.ability.perma_x_mult = v.ability.perma_x_mult or 0
                    v.ability.perma_x_mult = v.ability.perma_x_mult + card.ability.extra.xmult
                end
            end
        end

        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 2 then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
    end
}

SMODS.Joker{
    key = 'zhezhi',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 1, y = 0 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {hchips = 11} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.hchips} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.other_card:get_id() == 14 then
            for k, v in pairs(G.hand.cards) do
                if v:get_id() == 14 then
                    v.ability.perma_h_chips = v.ability.perma_h_chips or 0
                    v.ability.perma_h_chips = v.ability.perma_h_chips + card.ability.extra.hchips
                end
            end
        end

        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 14 then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
    end
}

SMODS.Joker{
    key = 'inversezhezhi',
    rarity = 3,
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 2 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {hxchips = 0.1} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.hxchips} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.other_card:get_id() == 14 then
            for k, v in pairs(G.hand.cards) do
                if v:get_id() == 14 then
                    v.ability.perma_h_x_chips = v.ability.perma_h_x_chips or 0
                    v.ability.perma_h_x_chips = v.ability.perma_h_x_chips + card.ability.extra.hxchips
                end
            end
        end

        if context.repetition and context.cardarea == G.play and
        context.other_card:get_id() == 14 then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
    end
}

SMODS.Joker{
    key = 'wanyouli',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 3, y = 1 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.other_card.ability.effect == "Wild Card" then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                    G.E_MANAGER:add_event(Event({
                        func = (function()
                            G.E_MANAGER:add_event(Event({
                                func = function() 
                                    local card = create_card('Tarot',G.consumeables, nil, nil, nil, nil, nil, 'twanyouli')
                                    card:add_to_deck()
                                    G.consumeables:emplace(card)
                                    G.GAME.consumeable_buffer = 0
                                    return true
                                end}))                          
                            return true
                        end)}))
            end
        end

        if context.repetition and context.cardarea == G.play and
        context.other_card.ability.effect == "Wild Card" then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
    end
}

SMODS.Joker{
    key = 'chonggongling',
    rarity = 3,
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 4, y = 1 },
    loc_txt = {},
    atlas = 'datealive',
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play then
            if not (context.other_card:is_face()) then
                return {
                    message = localize('k_again_ex'),
                    repetitions = 1,
                    card = card
                }
            end
        end
        if context.repetition and context.cardarea == G.hand then
            if not (context.other_card:is_face()) and (next(context.card_effects[1]) or #context.card_effects > 1) and not context.other_card.debuff then
                return {
                    message = localize('k_again_ex'),
                    repetitions = 1,
                    card = card
                }
            end
        end
    end
}

SMODS.Joker{
    key = 'nibeelcole',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = 'nibeelcole',
    config = { extra = {xmult = 1.618} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.xmult} }
    end,
    calculate = function(self, card, context)
        if context.before and not context.blueprint then
            local notfaces = {}
                for k, v in ipairs(context.full_hand) do
                    if not(v:is_face()) then 
                    notfaces[#notfaces+1] = v
                    v:set_debuff(true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            return true
                        end
                    })) 
                    G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                    local _card = copy_card(v, nil, nil, G.playing_card)
                    _card:add_to_deck()
                    G.deck.config.card_limit = G.deck.config.card_limit + 1
                    table.insert(G.playing_cards, _card)
                    G.hand:emplace(_card)
                    _card.states.visible = nil

                    G.E_MANAGER:add_event(Event({
                        func = function()
                            _card:start_materialize()
                            return true
                        end
                    })) 
                    end
                end
            if #notfaces > 0 then 
                return {
                message = localize('k_copied_ex'),
                colour = G.C.CHIPS,
                card = card,
                playing_cards_created = {true}
                }
            end
        end

        if context.individual and context.cardarea == G.play and
        context.other_card:is_face() then
            return {
                x_mult = card.ability.extra.xmult,
                card = card
            }
        end

        if context.repetition and context.cardarea == G.play and
        context.other_card:is_face() then
            return {
                message = localize('k_again_ex'),
                repetitions = 1,
                card = card
            }
        end
    end
}