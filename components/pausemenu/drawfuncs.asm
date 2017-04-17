INCLUDE "telefang.inc"

SECTION "Pause Menu Draw Functions", ROMX[$649A], BANK[$4]
PauseMenu_DrawCenteredNameBuffer::
    ld b, 0
    ld c, $30
    ld d, $C
    call Banked_MainScript_InitializeMenuText
    call Banked_MainScriptMachine
    jp Banked_MainScriptMachine
    
SECTION "Pause Menu Draw Functions 2", ROMX[$7EF6], BANK[$4]
PauseMenu_CallsMenuDrawDenjuuNickname::
    call Banked_SaveClock_LoadDenjuuNicknameByIndex
    
    ld hl, W_SaveClock_NicknameStaging
    ld de, W_MainScript_CenteredNameBuffer
    call Banked_StringTable_PadCopyBuffer
    
    ld hl, $9400
    ld b, 6
    call PauseMenu_ClearInputTiles
    
    ld de, (W_MainScript_CenteredNameBuffer + 1)
    ld b, M_SaveClock_DenjuuNicknameSize
    ld hl, $9400
    jp Banked_MainScript_DrawStatusText

PauseMenu_ContactsMenuDrawDenjuuNickname::
    call PauseMenu_IndexContactArray
    
    ld c, a
    call Banked_SaveClock_LoadDenjuuNicknameByIndex
    
    ld hl, W_SaveClock_NicknameStaging
    ld de, W_MainScript_CenteredNameBuffer
    call Banked_StringTable_PadCopyBuffer
    
    ld hl, $9780
    ld b, 6
    call PauseMenu_ClearScreenTiles
    
    ld de, (W_MainScript_CenteredNameBuffer + 1)
    ld b, M_SaveClock_DenjuuNicknameSize
    ld hl, $9780
    jp Banked_MainScript_DrawStatusText
