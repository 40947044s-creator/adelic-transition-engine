; ==========================================================
; ADELIC TRANSITION ENGINE: MARILYN FOLD (INTEL x86_64)
; "For all predecessors: Nature keeps no ledger."
; ==========================================================

section .text
global marilyn_fold

marilyn_fold:
    ; Input:  rax = Quaternary Cell (Local State)
    ;         rdx = Grandparent Sentinel (Global Invariant)
    
    xor rbx, rbx          ; Initialize Friction Detector
    mov rbx, rax          ; Load local state
    xor rbx, rdx          ; 1. SENSE FRICTION (XOR bitwise difference)
    jz .grounded          ; 2. If Zero, we are aligned with the Invariant
    
    ; 3. THE SNAP (Blunt Inference)
    ; We force the phase-flip using the Adelic Valuation
    not rbx               
    or  rax, rbx          ; Align the cell to the macroscopic field
    
.grounded:
    ; 4. THE WIPE (O(1) Memory Evolution)
    xor rdx, rdx          ; Clear the predecessor (Memory Wipe)
    mov rdx, rax          ; Current state becomes the new Ancestor
    ret                   ; Zero-Entropy Transition Complete
