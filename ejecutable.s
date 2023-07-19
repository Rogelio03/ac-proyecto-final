    .file   "prueba.cpp"
    .text
    .section    .text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
    .align 2
    .p2align 4
    .weak   _ZNKSt5ctypeIcE8do_widenEc
    .type   _ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1565:
    .cfi_startproc
    movl    %esi, %eax
    ret
    .cfi_endproc
.LFE1565:
    .size   _ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
    .section    .text._ZNSt14priority_queueISt4pairIiiESt6vectorIS1_SaIS1_EE3cmpED2Ev,"axG",@progbits,_ZNSt14priority_queueISt4pairIiiESt6vectorIS1_SaIS1_EE3cmpED5Ev,comdat
    .align 2
    .p2align 4
    .weak   _ZNSt14priority_queueISt4pairIiiESt6vectorIS1_SaIS1_EE3cmpED2Ev
    .type   _ZNSt14priority_queueISt4pairIiiESt6vectorIS1_SaIS1_EE3cmpED2Ev, @function
_ZNSt14priority_queueISt4pairIiiESt6vectorIS1_SaIS1_EE3cmpED2Ev:
.LFB3075:
    .cfi_startproc
    movq    (%rdi), %r8
    testq   %r8, %r8
    je  .L3
    movq    16(%rdi), %rsi
    movq    %r8, %rdi
    subq    %r8, %rsi
    jmp _ZdlPvm@PLT
    .p2align 4,,10
    .p2align 3
.L3:
    ret
    .cfi_endproc
.LFE3075:
    .size   _ZNSt14priority_queueISt4pairIiiESt6vectorIS1_SaIS1_EE3cmpED2Ev, .-_ZNSt14priority_queueISt4pairIiiESt6vectorIS1_SaIS1_EE3cmpED2Ev
    .weak   _ZNSt14priority_queueISt4pairIiiESt6vectorIS1_SaIS1_EE3cmpED1Ev
    .set    _ZNSt14priority_queueISt4pairIiiESt6vectorIS1_SaIS1_EE3cmpED1Ev,_ZNSt14priority_queueISt4pairIiiESt6vectorIS1_SaIS1_EE3cmpED2Ev
    .text
    .p2align 4
    .type   _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB3081:
    .cfi_startproc
    pushq   %r12
    .cfi_def_cfa_offset 16
    .cfi_offset 12, -16
    pushq   %rbp
    .cfi_def_cfa_offset 24
    .cfi_offset 6, -24
    subq    $8, %rsp
    .cfi_def_cfa_offset 32
    movq    (%rdi), %rax
    movq    -24(%rax), %rax
    movq    240(%rdi,%rax), %r12
    testq   %r12, %r12
    je  .L11
    cmpb    $0, 56(%r12)
    movq    %rdi, %rbp
    je  .L7
    movsbl  67(%r12), %esi
.L8:
    movq    %rbp, %rdi
    call    _ZNSo3putEc@PLT
    addq    $8, %rsp
    .cfi_remember_state
    .cfi_def_cfa_offset 24
    popq    %rbp
    .cfi_def_cfa_offset 16
    movq    %rax, %rdi
    popq    %r12
    .cfi_def_cfa_offset 8
    jmp _ZNSo5flushEv@PLT
.L7:
    .cfi_restore_state
    movq    %r12, %rdi
    call    _ZNKSt5ctypeIcE13_M_widen_initEv@PLT
    movq    (%r12), %rax
    movl    $10, %esi
    movq    48(%rax), %rax
    cmpq    _ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
    je  .L8
    movl    $10, %esi
    movq    %r12, %rdi
    call    *%rax
    movsbl  %al, %esi
    jmp .L8
.L11:
    call    _ZSt16__throw_bad_castv@PLT
    .cfi_endproc
.LFE3081:
    .size   _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
    .p2align 4
    .type   __tcf_0, @function
__tcf_0:
.LFB3073:
    .cfi_startproc
    pushq   %rbp
    .cfi_def_cfa_offset 16
    .cfi_offset 6, -16
    pushq   %rbx
    .cfi_def_cfa_offset 24
    .cfi_offset 3, -24
    subq    $8, %rsp
    .cfi_def_cfa_offset 32
    movq    ady@GOTPCREL(%rip), %rbp
    leaq    240096(%rbp), %rbx
    jmp .L14
    .p2align 4,,10
    .p2align 3
.L15:
    movq    %rax, %rbx
.L14:
    movq    (%rbx), %rdi
    testq   %rdi, %rdi
    je  .L13
    movq    16(%rbx), %rsi
    subq    %rdi, %rsi
    call    _ZdlPvm@PLT
.L13:
    leaq    -24(%rbx), %rax
    cmpq    %rbp, %rbx
    jne .L15
    addq    $8, %rsp
    .cfi_def_cfa_offset 24
    popq    %rbx
    .cfi_def_cfa_offset 16
    popq    %rbp
    .cfi_def_cfa_offset 8
    ret
    .cfi_endproc
.LFE3073:
    .size   __tcf_0, .-__tcf_0
    .p2align 4
    .globl  _Z4initv
    .type   _Z4initv, @function
_Z4initv:
.LFB2444:
    .cfi_startproc
    movq    V@GOTPCREL(%rip), %rax
    movl    (%rax), %eax
    testl   %eax, %eax
    js  .L20
    movq    distancia@GOTPCREL(%rip), %rcx
    pushq   %rbx
    .cfi_def_cfa_offset 16
    .cfi_offset 3, -16
    movslq  %eax, %rbx
    leaq    4(%rcx), %rax
    leaq    (%rax,%rbx,4), %rdx
    jmp .L22
    .p2align 4,,10
    .p2align 3
.L28:
    addq    $4, %rax
.L22:
    movl    $1073741824, (%rcx)
    movq    %rax, %rcx
    cmpq    %rdx, %rax
    jne .L28
    addq    $1, %rbx
    movq    visitado@GOTPCREL(%rip), %rdi
    xorl    %esi, %esi
    movq    %rbx, %rdx
    call    memset@PLT
    movq    previo@GOTPCREL(%rip), %rdi
    movl    $255, %esi
    leaq    0(,%rbx,4), %rdx
    popq    %rbx
    .cfi_restore 3
    .cfi_def_cfa_offset 8
    jmp memset@PLT
    .p2align 4,,10
    .p2align 3
.L20:
    ret
    .cfi_endproc
.LFE2444:
    .size   _Z4initv, .-_Z4initv
    .section    .rodata.str1.1,"aMS",@progbits,1
.LC0:
    .string "%d "
    .text
    .p2align 4
    .globl  _Z5printi
    .type   _Z5printi, @function
_Z5printi:
.LFB2455:
    .cfi_startproc
    movq    previo@GOTPCREL(%rip), %rax
    movslq  %edi, %rdx
    pushq   %r15
    .cfi_def_cfa_offset 16
    .cfi_offset 15, -16
    pushq   %r14
    .cfi_def_cfa_offset 24
    .cfi_offset 14, -24
    pushq   %r13
    .cfi_def_cfa_offset 32
    .cfi_offset 13, -32
    pushq   %r12
    .cfi_def_cfa_offset 40
    .cfi_offset 12, -40
    movq    %rdx, %r12
    pushq   %rbp
    .cfi_def_cfa_offset 48
    .cfi_offset 6, -48
    movl    (%rax,%rdx,4), %r13d
    leaq    .LC0(%rip), %rbp
    cmpl    $-1, %r13d
    jne .L47
.L30:
    movl    %r12d, %edx
    movq    %rbp, %rsi
    movl    $1, %edi
    popq    %rbp
    .cfi_remember_state
    .cfi_def_cfa_offset 40
    xorl    %eax, %eax
    popq    %r12
    .cfi_def_cfa_offset 32
    popq    %r13
    .cfi_def_cfa_offset 24
    popq    %r14
    .cfi_def_cfa_offset 16
    popq    %r15
    .cfi_def_cfa_offset 8
    jmp __printf_chk@PLT
    .p2align 4,,10
    .p2align 3
.L47:
    .cfi_restore_state
    movslq  %r13d, %rdx
    movl    (%rax,%rdx,4), %r14d
    cmpl    $-1, %r14d
    je  .L31
    movslq  %r14d, %rdx
    movl    (%rax,%rdx,4), %r15d
    cmpl    $-1, %r15d
    jne .L48
.L32:
    movl    %r14d, %edx
    movq    %rbp, %rsi
    movl    $1, %edi
    xorl    %eax, %eax
    call    __printf_chk@PLT
.L31:
    movl    %r13d, %edx
    movq    %rbp, %rsi
    movl    $1, %edi
    xorl    %eax, %eax
    call    __printf_chk@PLT
    jmp .L30
    .p2align 4,,10
    .p2align 3
.L48:
    movslq  %r15d, %rdx
    movl    (%rax,%rdx,4), %edi
    cmpl    $-1, %edi
    je  .L33
    call    _Z5printi.localalias
.L33:
    leaq    .LC0(%rip), %rbp
    movl    %r15d, %edx
    movl    $1, %edi
    xorl    %eax, %eax
    movq    %rbp, %rsi
    call    __printf_chk@PLT
    jmp .L32
    .cfi_endproc
.LFE2455:
    .size   _Z5printi, .-_Z5printi
    .set    _Z5printi.localalias,_Z5printi
    .section    .rodata._ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.str1.1,"aMS",@progbits,1
.LC1:
    .string "vector::_M_realloc_insert"
    .section    .text._ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
    .align 2
    .p2align 4
    .weak   _ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
    .type   _ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, @function
_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB2915:
    .cfi_startproc
    movabsq $1152921504606846975, %rcx
    pushq   %r15
    .cfi_def_cfa_offset 16
    .cfi_offset 15, -16
    pushq   %r14
    .cfi_def_cfa_offset 24
    .cfi_offset 14, -24
    pushq   %r13
    .cfi_def_cfa_offset 32
    .cfi_offset 13, -32
    pushq   %r12
    .cfi_def_cfa_offset 40
    .cfi_offset 12, -40
    pushq   %rbp
    .cfi_def_cfa_offset 48
    .cfi_offset 6, -48
    pushq   %rbx
    .cfi_def_cfa_offset 56
    .cfi_offset 3, -56
    subq    $40, %rsp
    .cfi_def_cfa_offset 96
    movq    8(%rdi), %r14
    movq    (%rdi), %r13
    movq    %r14, %rax
    subq    %r13, %rax
    sarq    $3, %rax
    cmpq    %rcx, %rax
    je  .L67
    testq   %rax, %rax
    movl    $1, %ecx
    movq    %rsi, %rbp
    movq    %rdi, %r12
    cmovne  %rax, %rcx
    addq    %rcx, %rax
    setc    %cl
    subq    %r13, %rsi
    movzbl  %cl, %ecx
    testq   %rcx, %rcx
    jne .L60
    testq   %rax, %rax
    jne .L54
    movq    $0, 8(%rsp)
    movl    $8, %ebx
    xorl    %r15d, %r15d
.L59:
    movq    (%rdx), %rax
    movq    %rax, (%r15,%rsi)
    cmpq    %r13, %rbp
    je  .L55
    movq    %rbp, %rsi
    movq    %r15, %rdx
    movq    %r13, %rax
    subq    %r13, %rsi
    .p2align 4,,10
    .p2align 3
.L56:
    movq    (%rax), %rcx
    addq    $8, %rax
    addq    $8, %rdx
    movq    %rcx, -8(%rdx)
    cmpq    %rbp, %rax
    jne .L56
    leaq    8(%r15,%rsi), %rbx
.L55:
    cmpq    %r14, %rbp
    je  .L57
    subq    %rbp, %r14
    movq    %rbx, %rdi
    movq    %rbp, %rsi
    movq    %r14, %rdx
    addq    %r14, %rbx
    call    memcpy@PLT
.L57:
    testq   %r13, %r13
    je  .L58
    movq    16(%r12), %rsi
    movq    %r13, %rdi
    subq    %r13, %rsi
    call    _ZdlPvm@PLT
.L58:
    movq    8(%rsp), %rax
    movq    %r15, (%r12)
    movq    %rbx, 8(%r12)
    movq    %rax, 16(%r12)
    addq    $40, %rsp
    .cfi_remember_state
    .cfi_def_cfa_offset 56
    popq    %rbx
    .cfi_def_cfa_offset 48
    popq    %rbp
    .cfi_def_cfa_offset 40
    popq    %r12
    .cfi_def_cfa_offset 32
    popq    %r13
    .cfi_def_cfa_offset 24
    popq    %r14
    .cfi_def_cfa_offset 16
    popq    %r15
    .cfi_def_cfa_offset 8
    ret
    .p2align 4,,10
    .p2align 3
.L60:
    .cfi_restore_state
    movabsq $9223372036854775800, %rbx
.L53:
    movq    %rbx, %rdi
    movq    %rdx, 24(%rsp)
    movq    %rsi, 16(%rsp)
    call    _Znwm@PLT
    movq    16(%rsp), %rsi
    movq    24(%rsp), %rdx
    movq    %rax, %r15
    leaq    (%rax,%rbx), %rax
    movq    %rax, 8(%rsp)
    leaq    8(%r15), %rbx
    jmp .L59
.L54:
    movabsq $1152921504606846975, %rcx
    cmpq    %rcx, %rax
    cmova   %rcx, %rax
    leaq    0(,%rax,8), %rbx
    jmp .L53
.L67:
    leaq    .LC1(%rip), %rdi
    call    _ZSt20__throw_length_errorPKc@PLT
    .cfi_endproc
.LFE2915:
    .size   _ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
    .text
    .p2align 4
    .globl  _Z12minimizacioniii
    .type   _Z12minimizacioniii, @function
_Z12minimizacioniii:
.LFB2445:
    .cfi_startproc
    pushq   %rbx
    .cfi_def_cfa_offset 16
    .cfi_offset 3, -16
    movslq  %edi, %rcx
    subq    $16, %rsp
    .cfi_def_cfa_offset 32
    movq    %fs:40, %rax
    movq    %rax, 8(%rsp)
    movq    distancia@GOTPCREL(%rip), %rax
    addl    (%rax,%rcx,4), %edx
    movslq  %esi, %rcx
    cmpl    (%rax,%rcx,4), %edx
    jl  .L74
.L68:
    movq    8(%rsp), %rax
    subq    %fs:40, %rax
    jne .L75
    addq    $16, %rsp
    .cfi_remember_state
    .cfi_def_cfa_offset 16
    popq    %rbx
    .cfi_def_cfa_offset 8
    ret
    .p2align 4,,10
    .p2align 3
.L74:
    .cfi_restore_state
    movl    %edx, (%rax,%rcx,4)
    movq    Q@GOTPCREL(%rip), %rbx
    movq    previo@GOTPCREL(%rip), %rax
    movl    %esi, (%rsp)
    movl    %edx, 4(%rsp)
    movq    8(%rbx), %rsi
    movl    %edi, (%rax,%rcx,4)
    cmpq    16(%rbx), %rsi
    je  .L70
    movq    (%rsp), %rax
    addq    $8, %rsi
    movq    %rax, -8(%rsi)
    movq    %rsi, 8(%rbx)
    jmp .L68
    .p2align 4,,10
    .p2align 3
.L70:
    movq    %rsp, %rdx
    movq    %rbx, %rdi
    call    _ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_@PLT
    jmp .L68
.L75:
    call    __stack_chk_fail@PLT
    .cfi_endproc
.LFE2445:
    .size   _Z12minimizacioniii, .-_Z12minimizacioniii
    .section    .rodata.str1.8,"aMS",@progbits,1
    .align 8
.LC2:
    .string "\tDistancias mas cortas iniciando en vertice %d\n"
    .align 8
.LC3:
    .string "\tPara hallar el camino mas corto del vertice de origen al vertice destino,"
    .section    .rodata.str1.1
.LC4:
    .string "\tIngrese el vertice destino: "
.LC5:
    .string "%d"
    .section    .rodata.str1.8
    .align 8
.LC6:
    .string "\tVertice %d , distancia mas corta = %d\n"
    .text
    .p2align 4
    .globl  _Z5cortoi
    .type   _Z5cortoi, @function
_Z5cortoi:
.LFB2456:
    .cfi_startproc
    pushq   %r15
    .cfi_def_cfa_offset 16
    .cfi_offset 15, -16
    pushq   %r14
    .cfi_def_cfa_offset 24
    .cfi_offset 14, -24
    pushq   %r13
    .cfi_def_cfa_offset 32
    .cfi_offset 13, -32
    pushq   %r12
    .cfi_def_cfa_offset 40
    .cfi_offset 12, -40
    pushq   %rbp
    .cfi_def_cfa_offset 48
    .cfi_offset 6, -48
    pushq   %rbx
    .cfi_def_cfa_offset 56
    .cfi_offset 3, -56
    movl    %edi, %ebx
    subq    $40, %rsp
    .cfi_def_cfa_offset 96
    movl    %edi, 12(%rsp)
    movq    %fs:40, %rax
    movq    %rax, 24(%rsp)
    xorl    %eax, %eax
    call    _Z4initv@PLT
    movl    %ebx, 16(%rsp)
    movq    Q@GOTPCREL(%rip), %rbx
    movl    $0, 20(%rsp)
    movq    8(%rbx), %rsi
    cmpq    16(%rbx), %rsi
    je  .L77
    movq    16(%rsp), %rax
    movq    %rax, (%rsi)
    leaq    8(%rsi), %rax
    movq    %rax, 8(%rbx)
.L78:
    movq    distancia@GOTPCREL(%rip), %rbp
    movslq  12(%rsp), %rdx
    movq    (%rbx), %rcx
    movl    $0, 0(%rbp,%rdx,4)
    .p2align 4,,10
    .p2align 3
.L81:
    cmpq    %rcx, %rax
    je  .L97
.L85:
    movq    %rax, %rdx
    movl    (%rcx), %r12d
    subq    $8, %rax
    subq    %rcx, %rdx
    cmpq    $8, %rdx
    jg  .L98
.L79:
    movq    visitado@GOTPCREL(%rip), %r15
    movslq  %r12d, %rdx
    movq    %rax, 8(%rbx)
    cmpb    $0, (%r15,%rdx)
    jne .L81
    leaq    (%rdx,%rdx,2), %r14
    movb    $1, (%r15,%rdx)
    movq    ady@GOTPCREL(%rip), %rdx
    leaq    (%rdx,%r14,8), %r14
    movq    (%r14), %rdx
    cmpq    %rdx, 8(%r14)
    je  .L81
    xorl    %r13d, %r13d
    xorl    %ecx, %ecx
    jmp .L84
    .p2align 4,,10
    .p2align 3
.L83:
    movq    (%r14), %rdx
    movq    8(%r14), %rax
    addl    $1, %r13d
    movslq  %r13d, %rcx
    subq    %rdx, %rax
    sarq    $3, %rax
    cmpq    %rax, %rcx
    jnb .L99
.L84:
    leaq    (%rdx,%rcx,8), %rax
    movslq  (%rax), %rdx
    cmpb    $0, (%r15,%rdx)
    movq    %rdx, %rsi
    jne .L83
    movl    4(%rax), %edx
    movl    %r12d, %edi
    call    _Z12minimizacioniii@PLT
    jmp .L83
    .p2align 4,,10
    .p2align 3
.L99:
    movq    (%rbx), %rcx
    movq    8(%rbx), %rax
    cmpq    %rcx, %rax
    jne .L85
.L97:
    movl    12(%rsp), %edx
    movl    $1, %edi
    xorl    %eax, %eax
    movl    $1, %ebx
    leaq    .LC2(%rip), %rsi
    leaq    .LC6(%rip), %r13
    call    __printf_chk@PLT
    movq    V@GOTPCREL(%rip), %r12
    movl    (%r12), %eax
    testl   %eax, %eax
    jle .L87
    .p2align 4,,10
    .p2align 3
.L86:
    movl    0(%rbp,%rbx,4), %ecx
    movl    %ebx, %edx
    movq    %r13, %rsi
    movl    $1, %edi
    xorl    %eax, %eax
    addq    $1, %rbx
    call    __printf_chk@PLT
    cmpl    %ebx, (%r12)
    jge .L86
.L87:
    leaq    .LC3(%rip), %rdi
    call    puts@PLT
    leaq    .LC4(%rip), %rsi
    movl    $1, %edi
    xorl    %eax, %eax
    call    __printf_chk@PLT
    leaq    16(%rsp), %rsi
    leaq    .LC5(%rip), %rdi
    xorl    %eax, %eax
    call    __isoc99_scanf@PLT
    movl    16(%rsp), %edi
    call    _Z5printi@PLT
    movl    $10, %edi
    call    putchar@PLT
    movq    24(%rsp), %rax
    subq    %fs:40, %rax
    jne .L100
    addq    $40, %rsp
    .cfi_remember_state
    .cfi_def_cfa_offset 56
    popq    %rbx
    .cfi_def_cfa_offset 48
    popq    %rbp
    .cfi_def_cfa_offset 40
    popq    %r12
    .cfi_def_cfa_offset 32
    popq    %r13
    .cfi_def_cfa_offset 24
    popq    %r14
    .cfi_def_cfa_offset 16
    popq    %r15
    .cfi_def_cfa_offset 8
    ret
    .p2align 4,,10
    .p2align 3
.L98:
    .cfi_restore_state
    movl    (%rax), %r9d
    movl    4(%rax), %r8d
    movl    %r12d, (%rax)
    movl    4(%rcx), %edx
    movl    %edx, 4(%rax)
    movq    %rax, %rdx
    subq    %rcx, %rdx
    movq    %rdx, %rsi
    sarq    $3, %rsi
    andl    $8, %edx
    jne .L80
    subq    $1, %rsi
    cmpq    $2, %rsi
    jbe .L101
.L80:
    movl    %r9d, (%rcx)
    movl    %r8d, 4(%rcx)
    jmp .L79
    .p2align 4,,10
    .p2align 3
.L101:
    movq    8(%rcx), %rax
    movq    %rax, (%rcx)
.L77:
    leaq    16(%rsp), %rdx
    movq    %rbx, %rdi
    call    _ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_@PLT
    movq    8(%rbx), %rax
    jmp .L78
.L100:
    call    __stack_chk_fail@PLT
    .cfi_endproc
.LFE2456:
    .size   _Z5cortoi, .-_Z5cortoi
    .section    .rodata.str1.8
    .align 8
.LC7:
    .string "\tBienvenido al programa de Grafos para hallar la distancia mas corta de un nodo o vertice al otro. "
    .align 8
.LC8:
    .string "\tIngrese la cantidad de nodos y arcos que contendra el grafo. "
    .section    .rodata.str1.1
.LC9:
    .string "\tingrese numero de nodos: "
.LC10:
    .string "\tingrese numero de arcos: "
    .section    .rodata.str1.8
    .align 8
.LC11:
    .string "\tIngresar El nodo o vertice de origen, su arista y la distancia o peso de un nodo a otro dejando un espacio entre cada numero "
    .section    .rodata.str1.1
.LC12:
    .string "%d %d %d"
.LC13:
    .string "\tIngrese el vertice inicial: "
    .section    .text.startup,"ax",@progbits
    .p2align 4
    .globl  main
    .type   main, @function
main:
.LFB2461:
    .cfi_startproc
    pushq   %r15
    .cfi_def_cfa_offset 16
    .cfi_offset 15, -16
    leaq    .LC7(%rip), %rsi
    pushq   %r14
    .cfi_def_cfa_offset 24
    .cfi_offset 14, -24
    pushq   %r13
    .cfi_def_cfa_offset 32
    .cfi_offset 13, -32
    pushq   %r12
    .cfi_def_cfa_offset 40
    .cfi_offset 12, -40
    pushq   %rbp
    .cfi_def_cfa_offset 48
    .cfi_offset 6, -48
    pushq   %rbx
    .cfi_def_cfa_offset 56
    .cfi_offset 3, -56
    subq    $56, %rsp
    .cfi_def_cfa_offset 112
    movq    _ZSt4cout@GOTPCREL(%rip), %r15
    movq    %fs:40, %rax
    movq    %rax, 40(%rsp)
    xorl    %eax, %eax
    movq    %r15, %rdi
    call    _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
    movq    %rax, %rdi
    call    _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
    leaq    .LC8(%rip), %rsi
    movq    %r15, %rdi
    call    _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
    movq    %rax, %rdi
    call    _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
    leaq    .LC9(%rip), %rsi
    movq    %r15, %rdi
    call    _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
    movq    V@GOTPCREL(%rip), %rsi
    leaq    .LC5(%rip), %rdi
    xorl    %eax, %eax
    call    __isoc99_scanf@PLT
    leaq    .LC10(%rip), %rsi
    movq    %r15, %rdi
    call    _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
    leaq    16(%rsp), %rsi
    leaq    .LC5(%rip), %rdi
    xorl    %eax, %eax
    call    __isoc99_scanf@PLT
    leaq    .LC11(%rip), %rsi
    movq    %r15, %rdi
    call    _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
    movq    %rax, %rdi
    call    _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
    movl    16(%rsp), %eax
    testl   %eax, %eax
    jle .L112
    leaq    32(%rsp), %rax
    xorl    %ebx, %ebx
    leaq    28(%rsp), %r14
    movq    %rax, 8(%rsp)
    leaq    24(%rsp), %r13
    leaq    20(%rsp), %r12
    leaq    .LC12(%rip), %rbp
    jmp .L106
    .p2align 4,,10
    .p2align 3
.L113:
    movq    32(%rsp), %rax
    addq    $8, %rsi
    addl    $1, %ebx
    movq    %rax, -8(%rsi)
    movq    %rsi, 8(%rdi)
    cmpl    %ebx, 16(%rsp)
    jle .L103
.L106:
    movq    %r14, %rcx
    movq    %r12, %rsi
    movq    %rbp, %rdi
    movq    %r13, %rdx
    xorl    %eax, %eax
    call    __isoc99_scanf@PLT
    movl    24(%rsp), %eax
    movq    ady@GOTPCREL(%rip), %rcx
    movl    %eax, 32(%rsp)
    movl    28(%rsp), %eax
    movl    %eax, 36(%rsp)
    movslq  20(%rsp), %rax
    leaq    (%rax,%rax,2), %rax
    leaq    (%rcx,%rax,8), %rdi
    movq    8(%rdi), %rsi
    cmpq    16(%rdi), %rsi
    jne .L113
    movq    8(%rsp), %rdx
    addl    $1, %ebx
    call    _ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_@PLT
    cmpl    %ebx, 16(%rsp)
    jg  .L106
    .p2align 4,,10
    .p2align 3
.L103:
    leaq    .LC13(%rip), %rsi
    movq    %r15, %rdi
    call    _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
    movq    %rax, %rdi
    call    _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
    movq    8(%rsp), %rsi
    leaq    .LC5(%rip), %rdi
    xorl    %eax, %eax
    call    __isoc99_scanf@PLT
    movl    32(%rsp), %edi
    call    _Z5cortoi@PLT
    movq    40(%rsp), %rax
    subq    %fs:40, %rax
    jne .L114
    addq    $56, %rsp
    .cfi_remember_state
    .cfi_def_cfa_offset 56
    xorl    %eax, %eax
    popq    %rbx
    .cfi_def_cfa_offset 48
    popq    %rbp
    .cfi_def_cfa_offset 40
    popq    %r12
    .cfi_def_cfa_offset 32
    popq    %r13
    .cfi_def_cfa_offset 24
    popq    %r14
    .cfi_def_cfa_offset 16
    popq    %r15
    .cfi_def_cfa_offset 8
    ret
.L112:
    .cfi_restore_state
    leaq    32(%rsp), %rax
    movq    %rax, 8(%rsp)
    jmp .L103
.L114:
    call    __stack_chk_fail@PLT
    .cfi_endproc
.LFE2461:
    .size   main, .-main
    .p2align 4
    .type   _GLOBAL__sub_I_prueba.cpp, @function
_GLOBAL__sub_I_prueba.cpp:
.LFB3077:
    .cfi_startproc
    pushq   %r12
    .cfi_def_cfa_offset 16
    .cfi_offset 12, -16
    leaq    __dso_handle(%rip), %r12
    pushq   %rbp
    .cfi_def_cfa_offset 24
    .cfi_offset 6, -24
    leaq    _ZStL8__ioinit(%rip), %rbp
    movq    %rbp, %rdi
    subq    $8, %rsp
    .cfi_def_cfa_offset 32
    call    _ZNSt8ios_base4InitC1Ev@PLT
    movq    _ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
    movq    %r12, %rdx
    movq    %rbp, %rsi
    call    __cxa_atexit@PLT
    movq    ady@GOTPCREL(%rip), %rax
    leaq    240120(%rax), %rdx
    .p2align 4,,10
    .p2align 3
.L116:
    movq    $0, (%rax)
    addq    $24, %rax
    movq    $0, -16(%rax)
    movq    $0, -8(%rax)
    cmpq    %rdx, %rax
    jne .L116
    movq    %r12, %rdx
    xorl    %esi, %esi
    leaq    __tcf_0(%rip), %rdi
    call    __cxa_atexit@PLT
    movq    Q@GOTPCREL(%rip), %rsi
    movq    _ZNSt14priority_queueISt4pairIiiESt6vectorIS1_SaIS1_EE3cmpED1Ev@GOTPCREL(%rip), %rdi
    movq    %r12, %rdx
    movq    $0, (%rsi)
    movq    $0, 8(%rsi)
    movq    $0, 16(%rsi)
    addq    $8, %rsp
    .cfi_def_cfa_offset 24
    popq    %rbp
    .cfi_def_cfa_offset 16
    popq    %r12
    .cfi_def_cfa_offset 8
    jmp __cxa_atexit@PLT
    .cfi_endproc
.LFE3077:
    .size   _GLOBAL__sub_I_prueba.cpp, .-_GLOBAL__sub_I_prueba.cpp
    .section    .init_array,"aw"
    .align 8
    .quad   _GLOBAL__sub_I_prueba.cpp
    .globl  previo
    .bss
    .align 32
    .type   previo, @object
    .size   previo, 40020
previo:
    .zero   40020
    .globl  V
    .align 4
    .type   V, @object
    .size   V, 4
V:
    .zero   4
    .globl  Q
    .align 32
    .type   Q, @object
    .size   Q, 32
Q:
    .zero   32
    .globl  visitado
    .align 32
    .type   visitado, @object
    .size   visitado, 10005
visitado:
    .zero   10005
    .globl  distancia
    .align 32
    .type   distancia, @object
    .size   distancia, 40020
distancia:
    .zero   40020
    .globl  ady
    .align 32
    .type   ady, @object
    .size   ady, 240120
ady:
    .zero   240120
    .local  _ZStL8__ioinit
    .comm   _ZStL8__ioinit,1,1
    .hidden __dso_handle
    .ident  "GCC: (GNU) 11.3.0"
    .section    .note.GNU-stack,"",@progbits
