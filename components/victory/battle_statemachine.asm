SECTION "Victory On Battle Screen State Machine", ROMX[$4243], BANK[$1D]
Victory_BattleScreenStateMachine::
    ld a, [W_Battle_4thOrderSubState]
    ld hl, .stateTable
    call System_IndexWordList
    jp [hl]
    
.stateTable
    dw $4291,$42C4,$42F6,$47D7,$4827,Victory_SubStateStatWindowPalette,$4F3D,$4F80
    dw $4FC2,$4FD4,$4FE8,$449F,Victory_SubStateStatWindowIdle,Victory_SubStateDrawStatWindow,$4942,Victory_SubStateCheckMoveUnlocks
    dw Victory_SubStateNewMoveMessage,$47E6,$4813,$4D96,$4E64,$4E89,$4F27,$4C3A

;Spd - $427D
Victory_BattleScreenPrivateStrings_speed::
    db "Spd "
    
;Atk - $4281
Victory_BattleScreenPrivateStrings_attack::
    db "Atk "
    
;Def - $4285
Victory_BattleScreenPrivateStrings_defense::
    db "Def "
    
;D.Atk - $4289
Victory_BattleScreenPrivateStrings_denmaAtk::
    db $F, "Atk"
    
;D.Def - $428D
Victory_BattleScreenPrivateStrings_denmaDef::
    db $F, "Def"