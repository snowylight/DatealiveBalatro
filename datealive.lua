--- STEAMODDED HEADER
--- MOD_NAME: datealive
--- MOD_ID: datealive
--- MOD_AUTHOR: [sishui]
--- MOD_DESCRIPTION: jokers from datealive
--- BADGE_COLOUR: B26CBB

----------------------------------------------
------------MOD CODE -------------------------

local config = {
    j_shixiang = true,
    j_meijiu = true,
    j_yejushi = true,
    j_xixian = true,
    j_qizui = true,
    j_liucan = true,
    j_qinli = true,
    j_sixinai = true,
    j_kuangsan = true,
    j_erya = true,
    j_zhezhi = true,
    j_wanyouli = true,
    j_chonggongling = true,
}
local function init_joker(joker, no_sprite)
    no_sprite = no_sprite or false

    local joker = SMODS.Joker:new(
        joker.ability_name,
        joker.slug,
        joker.ability,
        joker.pos,
        joker.loc,
        joker.rarity,
        joker.cost,
        joker.unlocked,
        joker.discovered,
        joker.blueprint_compat,
        joker.eternal_compat,
        joker.effect,
        joker.atlas,
        joker.soul_pos
    )
    joker:register()
    if not no_sprite then
        local sprite = SMODS.Sprite:new(
            joker.slug,
            SMODS.findModByID("datealive").path,
            "datealive.png",
            71,
            95,
            "asset_atli"
        )
        sprite:register()
    end
end


function SMODS.INIT.datealive()
    init_localization()

    -- 10
    if config.j_shixiang then
        local shixiang = {
            loc = {
                name = "Yatogami Toka",
        text = {
            "All scored",
            "{C:attention}10-point{} cards",
            "will {C:attention}Retrigger{}",
            "and give {C:mult}+10{} mult"
        }
            },
            ability_name = "shixiang",
            slug = "shixiang",
            ability = {
                extra = {
                    mult = 10,
                },
            },
            pos = { x = 0, y = 0 },
            rarity = 2,
            cost = 6,
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
        }
        -- Initialize Joker
        init_joker(shixiang)
        -- Set local variables
        function SMODS.Jokers.j_shixiang.loc_def(card)
            return {card.ability.extra.mult}
        end
        -- Calculate
        SMODS.Jokers.j_shixiang.calculate = function(card, context)
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
    end


    -- 9
    if config.j_meijiu then
        local meijiu = {
            loc = {
                name = "Izayoi Miku",
        text = {
            "All scored",
            "{C:attention}9-point{} cards",
            "will {C:attention}Retrigger{}",
            "and give {C:chips}+99{} chips"
        }
            },
            ability_name = "meijiu",
            slug = "meijiu",
            ability = {
                extra = {
                    chips = 99,
                },
            },
            pos = { x = 5, y = 0 },
            rarity = 2,
            cost = 6,
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
        }
        -- Initialize Joker
        init_joker(meijiu)
        -- Set local variables
        function SMODS.Jokers.j_meijiu.loc_def(card)
            return {card.ability.extra.chips}
        end
        -- Calculate
        SMODS.Jokers.j_meijiu.calculate = function(card, context)
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
    end

    -- 8.1
    if config.j_yejushi then
        local yejushi = {
            loc = {
                name = "Yamai Kaguya",
        text = {
            "All scored",
            "{C:attention}8-point{} cards",
            "will {C:attention}Retrigger{}",
            "and enhanced to {C:attention}Lucky cards{}"
        }
            },
            ability_name = "yejushi",
            slug = "yejushi",
            ability = {
                extra = {
                },
            },
            pos = { x = 1, y = 1 },
            rarity = 2,
            cost = 6,
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
        }
        -- Initialize Joker
        init_joker(yejushi)
        -- Set local variables
        function SMODS.Jokers.j_yejushi.loc_def(card)
            return {}
        end
        -- Calculate
        SMODS.Jokers.j_yejushi.calculate = function(card, context)
            if context.individual and context.cardarea == G.play and
            context.other_card:get_id() == 8 then
                context.other_card:set_ability(G.P_CENTERS.m_lucky, nil, true)
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
    end

    -- 8.2
    if config.j_xixian then
        local xixian = {
            loc = {
                name = "Yamai Yuzuru",
        text = {
            "All scored",
            "{C:attention}8-point{} cards",
            "will {C:attention}Retrigger{}",
            "and enhanced to {C:attention}steel cards{}"
        }
            },
            ability_name = "xixian",
            slug = "xixian",
            ability = {
                extra = {
                },
            },
            pos = { x = 2, y = 1 },
            rarity = 2,
            cost = 6,
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
        }
        -- Initialize Joker
        init_joker(xixian)
        -- Set local variables
        function SMODS.Jokers.j_xixian.loc_def(card)
            return {}
        end
        -- Calculate
        SMODS.Jokers.j_xixian.calculate = function(card, context)
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
    end

    -- 7
    if config.j_qizui then
        local qizui = {
            loc = {
                name = "Kyono Natsumi",
        text = {
            "All scored",
            "{C:attention}7-point{} cards",
            "will {C:attention}Retrigger{}",
            "and give {C:money}$7{}"
        }
            },
            ability_name = "qizui",
            slug = "qizui",
            ability = {
                extra = {
                },
            },
            pos = { x = 6, y = 0 },
            rarity = 2,
            cost = 6,
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
        }
        -- Initialize Joker
        init_joker(qizui)
        -- Set local variables
        function SMODS.Jokers.j_qizui.loc_def(card)
            return {}
        end
        -- Calculate
        SMODS.Jokers.j_qizui.calculate = function(card, context)
            if context.individual and context.cardarea == G.play and
            context.other_card:get_id() == 7 then
                ease_dollars(7)
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
    end

    -- 6
    if config.j_liucan then
        local liucan = {
            loc = {
                name = "Hoshimiya Mukuro",
        text = {
            "All scored",
            "{C:attention}6-point{} cards",
            "will {C:attention}Retrigger{}",
            "and have {C:green}#1# in #2#{} chance to upgrade",
            "the level of played {C:attention}poker hand{}"
        }
            },
            ability_name = "liucan",
            slug = "liucan",
            ability = {
                extra = {odds=6
                },
            },
            pos = { x = 7, y = 0 },
            rarity = 2,
            cost = 6,
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
        }
        -- Initialize Joker
        init_joker(liucan)
        -- Set local variables
        function SMODS.Jokers.j_liucan.loc_def(card)
            return {''..(G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds}
        end
        -- Calculate
        SMODS.Jokers.j_liucan.calculate = function(card, context)
            if context.individual and context.cardarea == G.play and
            context.other_card:get_id() == 6 then
                if pseudorandom('liucan') < G.GAME.probabilities.normal/card.ability.extra.odds then
                    level_up_hand(nil,context.scoring_name, nil,1)
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
    end

    -- 5
    if config.j_qinli then
        local qinli = {
            loc = {
                name = "Itsuka Kotori",
        text = {
            "All scored",
            "{C:attention}5-point{} cards",
            "will {C:attention}Retrigger{}",
            "and give {C:red}+1 discard{} temporarily"
        }
            },
            ability_name = "qinli",
            slug = "qinli",
            ability = {
                extra = {
                },
            },
            pos = { x = 2, y = 0 },
            rarity = 2,
            cost = 6,
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
        }
        -- Initialize Joker
        init_joker(qinli)
        -- Set local variables
        function SMODS.Jokers.j_qinli.loc_def(card)
            return {}
        end
        -- Calculate
        SMODS.Jokers.j_qinli.calculate = function(card, context)
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
    end

    -- 4
    if config.j_sixinai then
        local sixinai = {
            loc = {
                name = "Himekawa Yoshino",
        text = {
            "All scored",
            "{C:attention}4-point{} cards",
            "will {C:attention}Retrigger{}",
            "{C:attention}4{} extra times"
        }
            },
            ability_name = "sixinai",
            slug = "sixinai",
            ability = {
                extra = {
                },
            },
            pos = { x = 3, y = 0 },
            rarity = 2,
            cost = 6,
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
        }
        -- Initialize Joker
        init_joker(sixinai)
        -- Set local variables
        function SMODS.Jokers.j_sixinai.loc_def(card)
            return {}
        end
        -- Calculate
        SMODS.Jokers.j_sixinai.calculate = function(card, context)
            if context.repetition and context.cardarea == G.play and
            context.other_card:get_id() == 4 then
				return {
					message = localize('k_again_ex'),
					repetitions = 4,
					card = card
				}
			end
        end
    end

    -- 3
    if config.j_kuangsan then
        local kuangsan = {
            loc = {
                name = "Tokisaki Kurumi",
        text = {
            "All scored",
            "{C:attention}3-point{} cards",
            "will {C:attention}Retrigger{}",
            "and have {C:green}1 in #2#{} fixed chance",
            "to reduce {C:attention}ante{}"
        }
            },
            ability_name = "kuangsan",
            slug = "kuangsan",
            ability = {
                extra = {odds=33
                },
            },
            pos = { x = 4, y = 0 },
            rarity = 2,
            cost = 6,
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
        }
        -- Initialize Joker
        init_joker(kuangsan)
        -- Set local variables
        function SMODS.Jokers.j_kuangsan.loc_def(card)
            return {''..(G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds}
        end
        -- Calculate
        SMODS.Jokers.j_kuangsan.calculate = function(card, context)
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
    end

    -- 2
    if config.j_erya then
        local erya = {
            loc = {
                name = "Honjo Nia",
        text = {
            "All scored",
            "{C:attention}2-point{} cards",
            "will {C:attention}Retrigger{}",
            "and have {C:green}1 in #3#{} fixed chance",
            "to give {X:mult,C:white} X2 {} mult"
        }
            },
            ability_name = "erya",
            slug = "erya",
            ability = {
                extra = {
                    Xmult = 2,
                    odds = 2
                },
            },
            pos = { x = 0, y = 1 },
            rarity = 2,
            cost = 6,
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
        }
        -- Initialize Joker
        init_joker(erya)
        -- Set local variables
        function SMODS.Jokers.j_erya.loc_def(card)
            return {card.ability.extra.Xmult,''..(G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds}
        end
        -- Calculate
        SMODS.Jokers.j_erya.calculate = function(card, context)
            if context.individual and context.cardarea == G.play and
            context.other_card:get_id() == 2 then
                if pseudorandom('erya') < 1/card.ability.extra.odds then
                return {
                    x_mult = card.ability.extra.Xmult,
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
    end

    -- 1
    if config.j_zhezhi then
        local zhezhi = {
            loc = {
                name = "Tobiichi Origami",
        text = {
            "All scored",
            "{C:attention}A{} cards",
            "will {C:attention}Retrigger{}",
            "and make all the {C:attention}A{} in your deck",
            "gain {C:chips}+11{} chips"
        }
            },
            ability_name = "zhezhi",
            slug = "zhezhi",
            ability = {
                extra = {
                },
            },
            pos = { x = 1, y = 0 },
            rarity = 2,
            cost = 6,
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
        }
        -- Initialize Joker
        init_joker(zhezhi)
        -- Set local variables
        function SMODS.Jokers.j_zhezhi.loc_def(card)
            return {}
        end
        -- Calculate
        SMODS.Jokers.j_zhezhi.calculate = function(card, context)
            if context.individual and context.cardarea == G.play and
            context.other_card:get_id() == 14 then
                for k, v in pairs(G.playing_cards) do
                    if v:get_id() == 14 then
                        v.ability.perma_bonus = v.ability.perma_bonus or 0
                        v.ability.perma_bonus = v.ability.perma_bonus + 11
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
    end

    -- wan
    if config.j_wanyouli then
        local wanyouli = {
            loc = {
                name = "Mayuri",
        text = {
            "All scored",
            "{C:attention}wild{} cards",
            "will {C:attention}Retrigger{}",
            "and create a {C:tarot}tarot{} card",
            "{C:inactive}(Must have room){}",
        }
            },
            ability_name = "wanyouli",
            slug = "wanyouli",
            ability = {
                extra = {
                },
            },
            pos = { x = 3, y = 1 },
            rarity = 2,
            cost = 6,
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
        }
        -- Initialize Joker
        init_joker(wanyouli)
        -- Set local variables
        function SMODS.Jokers.j_wanyouli.loc_def(card)
            return {}
        end
        -- Calculate
        SMODS.Jokers.j_wanyouli.calculate = function(card, context)
            if context.individual and context.cardarea == G.play and
            context.other_card.ability.effect == "Wild Card" then
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                        G.E_MANAGER:add_event(Event({
                            func = (function()
                                G.E_MANAGER:add_event(Event({
                                    func = function() 
                                        local card = create_card('Tarot',G.consumeables, nil, nil, nil, nil, nil, 'car')
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
    end

    -- 0
    if config.j_chonggongling then
        local chonggongling = {
            loc = {
                name = "Deus",
        text = {
            "Retrigger {C:attention}number{} Cards",
            "that are played or",
            "held in hand",
        }
            },
            ability_name = "chonggongling",
            slug = "chonggongling",
            ability = {
                extra = {
                    loop_amount = 1,
                },
            },
            pos = { x = 4, y = 1 },
            rarity = 3,
            cost = 8,
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
            --soul_pos = { x = 1, y = 0 }
        }
        -- Initialize Joker
        init_joker(chonggongling)
        -- Set local variables
        function SMODS.Jokers.j_chonggongling.loc_def(card)
            return { card.ability.extra.loop_amount }
        end
        -- Calculate
        SMODS.Jokers.j_chonggongling.calculate = function(self, context)
            if context.repetition and context.cardarea == G.play then
                if not (context.other_card:is_face()) and not context.other_card.debuff then
                    return {
                        message = localize('k_again_ex'),
                        repetitions = 1,
                        card = self
                    }
                end
            end
            if context.repetition and context.cardarea == G.hand then
                if not (context.other_card:is_face()) and (next(context.card_effects[1]) or #context.card_effects > 1) and not context.other_card.debuff then
                    return {
                        message = localize('k_again_ex'),
                        repetitions = 1,
                        card = self
                    }
                end
            end
        end
    end
end