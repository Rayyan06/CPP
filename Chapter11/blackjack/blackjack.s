	.file	"blackjack.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZNSt14numeric_limitsImE3maxEv,"axG",@progbits,_ZNSt14numeric_limitsImE3maxEv,comdat
	.weak	_ZNSt14numeric_limitsImE3maxEv
	.type	_ZNSt14numeric_limitsImE3maxEv, @function
_ZNSt14numeric_limitsImE3maxEv:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$-1, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	_ZNSt14numeric_limitsImE3maxEv, .-_ZNSt14numeric_limitsImE3maxEv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
	.align 4
	.type	_ZL12maximumScore, @object
	.size	_ZL12maximumScore, 4
_ZL12maximumScore:
	.long	21
	.align 4
	.type	_ZL18minimumDealerScore, @object
	.size	_ZL18minimumDealerScore, 4
_ZL18minimumDealerScore:
	.long	17
	.section	.text._ZN4CardC2E8CardRank8CardSuit,"axG",@progbits,_ZN4CardC5E8CardRank8CardSuit,comdat
	.align 2
	.weak	_ZN4CardC2E8CardRank8CardSuit
	.type	_ZN4CardC2E8CardRank8CardSuit, @function
_ZN4CardC2E8CardRank8CardSuit:
.LFB3272:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3272:
	.size	_ZN4CardC2E8CardRank8CardSuit, .-_ZN4CardC2E8CardRank8CardSuit
	.weak	_ZN4CardC1E8CardRank8CardSuit
	.set	_ZN4CardC1E8CardRank8CardSuit,_ZN4CardC2E8CardRank8CardSuit
	.section	.text._ZNK4Card5printEv,"axG",@progbits,_ZNK4Card5printEv,comdat
	.align 2
	.weak	_ZNK4Card5printEv
	.type	_ZNK4Card5printEv, @function
_ZNK4Card5printEv:
.LFB3274:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$12, %eax
	ja	.L5
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L7(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L7(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata._ZNK4Card5printEv,"aG",@progbits,_ZNK4Card5printEv,comdat
	.align 4
	.align 4
.L7:
	.long	.L19-.L7
	.long	.L18-.L7
	.long	.L17-.L7
	.long	.L16-.L7
	.long	.L15-.L7
	.long	.L14-.L7
	.long	.L13-.L7
	.long	.L12-.L7
	.long	.L11-.L7
	.long	.L10-.L7
	.long	.L9-.L7
	.long	.L8-.L7
	.long	.L6-.L7
	.section	.text._ZNK4Card5printEv,"axG",@progbits,_ZNK4Card5printEv,comdat
.L19:
	movl	$50, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L20
.L18:
	movl	$51, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L20
.L17:
	movl	$52, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L20
.L16:
	movl	$53, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L20
.L15:
	movl	$54, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L20
.L14:
	movl	$55, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L20
.L13:
	movl	$56, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L20
.L12:
	movl	$57, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L20
.L11:
	movl	$84, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L20
.L10:
	movl	$74, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L20
.L9:
	movl	$81, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L20
.L8:
	movl	$75, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L20
.L6:
	movl	$65, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L20
.L5:
	movl	$63, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	nop
.L20:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L21
	cmpl	$3, %eax
	jg	.L22
	cmpl	$2, %eax
	je	.L23
	cmpl	$2, %eax
	jg	.L22
	testl	%eax, %eax
	je	.L24
	cmpl	$1, %eax
	je	.L25
	jmp	.L22
.L24:
	movl	$67, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L26
.L25:
	movl	$68, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L26
.L23:
	movl	$72, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L26
.L21:
	movl	$83, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	jmp	.L26
.L22:
	movl	$63, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	nop
.L26:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3274:
	.size	_ZNK4Card5printEv, .-_ZNK4Card5printEv
	.section	.rodata
.LC0:
	.string	"int Card::value() const"
.LC1:
	.string	"blackjack.cpp"
	.align 8
.LC2:
	.string	"false && \"should never happen\""
	.section	.text._ZNK4Card5valueEv,"axG",@progbits,_ZNK4Card5valueEv,comdat
	.align 2
	.weak	_ZNK4Card5valueEv
	.type	_ZNK4Card5valueEv, @function
_ZNK4Card5valueEv:
.LFB3275:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$8, %eax
	jg	.L28
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	addl	$2, %eax
	jmp	.L29
.L28:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$11, %eax
	jg	.L30
	cmpl	$9, %eax
	jge	.L31
	jmp	.L32
.L30:
	cmpl	$12, %eax
	je	.L33
	jmp	.L32
.L31:
	movl	$10, %eax
	jmp	.L29
.L33:
	movl	$11, %eax
	jmp	.L29
.L32:
	leaq	.LC0(%rip), %rcx
	movl	$148, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3275:
	.size	_ZNK4Card5valueEv, .-_ZNK4Card5valueEv
	.section	.text._ZNSt5arrayI4CardLm52EEC2Ev,"axG",@progbits,_ZNSt5arrayI4CardLm52EEC5Ev,comdat
	.align 2
	.weak	_ZNSt5arrayI4CardLm52EEC2Ev
	.type	_ZNSt5arrayI4CardLm52EEC2Ev, @function
_ZNSt5arrayI4CardLm52EEC2Ev:
.LFB3281:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$416, %ecx
	movl	$0, %esi
	movq	%rsi, (%rax)
	movl	%ecx, %edx
	addq	%rax, %rdx
	addq	$8, %rdx
	movq	%rsi, -16(%rdx)
	leaq	8(%rax), %rdx
	andq	$-8, %rdx
	subq	%rdx, %rax
	addl	%eax, %ecx
	andl	$-8, %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movq	%rdx, %rdi
	movq	%rsi, %rax
	rep stosq
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3281:
	.size	_ZNSt5arrayI4CardLm52EEC2Ev, .-_ZNSt5arrayI4CardLm52EEC2Ev
	.weak	_ZNSt5arrayI4CardLm52EEC1Ev
	.set	_ZNSt5arrayI4CardLm52EEC1Ev,_ZNSt5arrayI4CardLm52EEC2Ev
	.section	.text._ZN4DeckC2Ev,"axG",@progbits,_ZN4DeckC5Ev,comdat
	.align 2
	.weak	_ZN4DeckC2Ev
	.type	_ZN4DeckC2Ev, @function
_ZN4DeckC2Ev:
.LFB3283:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt5arrayI4CardLm52EEC1Ev
	movq	$0, -56(%rbp)
	movq	$4, -32(%rbp)
	movq	$13, -24(%rbp)
	movq	$0, -48(%rbp)
.L39:
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L41
	movq	$0, -40(%rbp)
.L38:
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L37
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	leaq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN4CardC1E8CardRank8CardSuit
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt5arrayI4CardLm52EEixEm
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	addq	$1, -56(%rbp)
	addq	$1, -40(%rbp)
	jmp	.L38
.L37:
	addq	$1, -48(%rbp)
	jmp	.L39
.L41:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3283:
	.size	_ZN4DeckC2Ev, .-_ZN4DeckC2Ev
	.weak	_ZN4DeckC1Ev
	.set	_ZN4DeckC1Ev,_ZN4DeckC2Ev
	.section	.rodata
.LC3:
	.string	"const Card& Deck::dealCard()"
.LC4:
	.string	"m_cardIndex < m_deck.size()"
	.section	.text._ZN4Deck8dealCardEv,"axG",@progbits,_ZN4Deck8dealCardEv,comdat
	.align 2
	.weak	_ZN4Deck8dealCardEv
	.type	_ZN4Deck8dealCardEv, @function
_ZN4Deck8dealCardEv:
.LFB3285:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayI4CardLm52EE4sizeEv
	cmpq	%rax, %rbx
	jb	.L43
	leaq	.LC3(%rip), %rcx
	movl	$188, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	__assert_fail@PLT
.L43:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-24(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt5arrayI4CardLm52EEixEm
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3285:
	.size	_ZN4Deck8dealCardEv, .-_ZN4Deck8dealCardEv
	.section	.text._ZNK4Deck5printEv,"axG",@progbits,_ZNK4Deck5printEv,comdat
	.align 2
	.weak	_ZNK4Deck5printEv
	.type	_ZNK4Deck5printEv, @function
_ZNK4Deck5printEv:
.LFB3286:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayI4CardLm52EE5beginEv
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayI4CardLm52EE3endEv
	movq	%rax, -16(%rbp)
.L47:
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L46
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK4Card5printEv
	movl	$32, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	addq	$8, -32(%rbp)
	jmp	.L47
.L46:
	movl	$10, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3286:
	.size	_ZNK4Deck5printEv, .-_ZNK4Deck5printEv
	.weak	_ZZN4Deck7shuffleEvE2mt
	.section	.bss._ZZN4Deck7shuffleEvE2mt,"awG",@nobits,_ZZN4Deck7shuffleEvE2mt,comdat
	.align 32
	.type	_ZZN4Deck7shuffleEvE2mt, @gnu_unique_object
	.size	_ZZN4Deck7shuffleEvE2mt, 5000
_ZZN4Deck7shuffleEvE2mt:
	.zero	5000
	.weak	_ZGVZN4Deck7shuffleEvE2mt
	.section	.bss._ZGVZN4Deck7shuffleEvE2mt,"awG",@nobits,_ZGVZN4Deck7shuffleEvE2mt,comdat
	.align 8
	.type	_ZGVZN4Deck7shuffleEvE2mt, @gnu_unique_object
	.size	_ZGVZN4Deck7shuffleEvE2mt, 8
_ZGVZN4Deck7shuffleEvE2mt:
	.zero	8
	.section	.text._ZN4Deck7shuffleEv,"axG",@progbits,_ZN4Deck7shuffleEv,comdat
	.align 2
	.weak	_ZN4Deck7shuffleEv
	.type	_ZN4Deck7shuffleEv, @function
_ZN4Deck7shuffleEv:
.LFB3287:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3287
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movzbl	_ZGVZN4Deck7shuffleEvE2mt(%rip), %eax
	testb	%al, %al
	sete	%al
	testb	%al, %al
	je	.L49
	leaq	_ZGVZN4Deck7shuffleEvE2mt(%rip), %rdi
	call	__cxa_guard_acquire@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L49
	movl	$0, %r12d
	movl	$0, %edi
	call	time@PLT
	movq	%rax, %rsi
	leaq	_ZZN4Deck7shuffleEvE2mt(%rip), %rdi
.LEHB0:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
.LEHE0:
	leaq	_ZGVZN4Deck7shuffleEvE2mt(%rip), %rdi
	call	__cxa_guard_release@PLT
.L49:
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt5arrayI4CardLm52EE3endEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt5arrayI4CardLm52EE5beginEv
	leaq	_ZZN4Deck7shuffleEvE2mt(%rip), %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZSt7shuffleIP4CardRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_S5_OT0_
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L53
.L52:
	movq	%rax, %rbx
	testb	%r12b, %r12b
	jne	.L51
	leaq	_ZGVZN4Deck7shuffleEvE2mt(%rip), %rdi
	call	__cxa_guard_abort@PLT
.L51:
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE1:
.L53:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3287:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN4Deck7shuffleEv,"aG",@progbits,_ZN4Deck7shuffleEv,comdat
.LLSDA3287:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3287-.LLSDACSB3287
.LLSDACSB3287:
	.uleb128 .LEHB0-.LFB3287
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L52-.LFB3287
	.uleb128 0
	.uleb128 .LEHB1-.LFB3287
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3287:
	.section	.text._ZN4Deck7shuffleEv,"axG",@progbits,_ZN4Deck7shuffleEv,comdat
	.size	_ZN4Deck7shuffleEv, .-_ZN4Deck7shuffleEv
	.section	.text._ZN6Player8drawCardER4Deck,"axG",@progbits,_ZN6Player8drawCardER4Deck,comdat
	.align 2
	.weak	_ZN6Player8drawCardER4Deck
	.type	_ZN6Player8drawCardER4Deck, @function
_ZN6Player8drawCardER4Deck:
.LFB3288:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4Deck8dealCardEv
	movq	%rax, %rdi
	call	_ZNK4Card5valueEv
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3288:
	.size	_ZN6Player8drawCardER4Deck, .-_ZN6Player8drawCardER4Deck
	.section	.text._ZN6Player6isBustEv,"axG",@progbits,_ZN6Player6isBustEv,comdat
	.align 2
	.weak	_ZN6Player6isBustEv
	.type	_ZN6Player6isBustEv, @function
_ZN6Player6isBustEv:
.LFB3289:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$21, %eax
	setg	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3289:
	.size	_ZN6Player6isBustEv, .-_ZN6Player6isBustEv
	.section	.text._ZN6Player5scoreEv,"axG",@progbits,_ZN6Player5scoreEv,comdat
	.align 2
	.weak	_ZN6Player5scoreEv
	.type	_ZN6Player5scoreEv, @function
_ZN6Player5scoreEv:
.LFB3290:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3290:
	.size	_ZN6Player5scoreEv, .-_ZN6Player5scoreEv
	.section	.rodata
.LC5:
	.string	"(h) to hit, or (s) to stand: "
	.text
	.globl	_Z14playerWantsHitv
	.type	_Z14playerWantsHitv, @function
_Z14playerWantsHitv:
.LFB3291:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.L64:
	leaq	.LC5(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movb	$0, -9(%rbp)
	leaq	-9(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rdi
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_@PLT
	movzbl	-9(%rbp), %eax
	movsbl	%al, %eax
	cmpl	$104, %eax
	je	.L60
	cmpl	$115, %eax
	je	.L61
	jmp	.L67
.L60:
	movl	$1, %eax
	jmp	.L65
.L61:
	movl	$0, %eax
	jmp	.L65
.L67:
	jmp	.L64
.L65:
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L66
	call	__stack_chk_fail@PLT
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3291:
	.size	_Z14playerWantsHitv, .-_Z14playerWantsHitv
	.section	.rodata
.LC6:
	.string	"You have: "
	.text
	.globl	_Z10playerTurnR4DeckR6Player
	.type	_Z10playerTurnR4DeckR6Player, @function
_Z10playerTurnR4DeckR6Player:
.LFB3292:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
.L73:
	leaq	.LC6(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Player5scoreEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Player6isBustEv
	testb	%al, %al
	je	.L69
	movl	$1, %eax
	jmp	.L70
.L69:
	call	_Z14playerWantsHitv
	testb	%al, %al
	je	.L71
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6Player8drawCardER4Deck
	jmp	.L73
.L71:
	movl	$0, %eax
.L70:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3292:
	.size	_Z10playerTurnR4DeckR6Player, .-_Z10playerTurnR4DeckR6Player
	.globl	_Z10dealerTurnR4DeckR6Player
	.type	_Z10dealerTurnR4DeckR6Player, @function
_Z10dealerTurnR4DeckR6Player:
.LFB3293:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.L77:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Player5scoreEv
	cmpl	$16, %eax
	setle	%al
	testb	%al, %al
	je	.L76
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6Player8drawCardER4Deck
	jmp	.L77
.L76:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Player6isBustEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3293:
	.size	_Z10dealerTurnR4DeckR6Player, .-_Z10dealerTurnR4DeckR6Player
	.section	.rodata
	.align 8
.LC7:
	.string	"The player drew a card with value: "
	.align 8
.LC8:
	.string	"The dealer drew a card with value: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB3294:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$456, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4DeckC1Ev
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4Deck7shuffleEv
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK4Deck5printEv
	movl	$0, -456(%rbp)
	movl	$0, -452(%rbp)
	leaq	-448(%rbp), %rdx
	leaq	-456(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6Player8drawCardER4Deck
	leaq	-448(%rbp), %rdx
	leaq	-452(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6Player8drawCardER4Deck
	leaq	.LC7(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-456(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Player5scoreEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	leaq	.LC8(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-452(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Player5scoreEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movl	$0, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L81
	call	__stack_chk_fail@PLT
.L81:
	addq	$456, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3294:
	.size	main, .-main
	.section	.text._ZNSt5arrayI4CardLm52EEixEm,"axG",@progbits,_ZNSt5arrayI4CardLm52EEixEm,comdat
	.align 2
	.weak	_ZNSt5arrayI4CardLm52EEixEm
	.type	_ZNSt5arrayI4CardLm52EEixEm, @function
_ZNSt5arrayI4CardLm52EEixEm:
.LFB3551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14__array_traitsI4CardLm52EE6_S_refERA52_KS0_m
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3551:
	.size	_ZNSt5arrayI4CardLm52EEixEm, .-_ZNSt5arrayI4CardLm52EEixEm
	.section	.text._ZNKSt5arrayI4CardLm52EE4sizeEv,"axG",@progbits,_ZNKSt5arrayI4CardLm52EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt5arrayI4CardLm52EE4sizeEv
	.type	_ZNKSt5arrayI4CardLm52EE4sizeEv, @function
_ZNKSt5arrayI4CardLm52EE4sizeEv:
.LFB3552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$52, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3552:
	.size	_ZNKSt5arrayI4CardLm52EE4sizeEv, .-_ZNKSt5arrayI4CardLm52EE4sizeEv
	.section	.text._ZNKSt5arrayI4CardLm52EE5beginEv,"axG",@progbits,_ZNKSt5arrayI4CardLm52EE5beginEv,comdat
	.align 2
	.weak	_ZNKSt5arrayI4CardLm52EE5beginEv
	.type	_ZNKSt5arrayI4CardLm52EE5beginEv, @function
_ZNKSt5arrayI4CardLm52EE5beginEv:
.LFB3553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayI4CardLm52EE4dataEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3553:
	.size	_ZNKSt5arrayI4CardLm52EE5beginEv, .-_ZNKSt5arrayI4CardLm52EE5beginEv
	.section	.text._ZNKSt5arrayI4CardLm52EE3endEv,"axG",@progbits,_ZNKSt5arrayI4CardLm52EE3endEv,comdat
	.align 2
	.weak	_ZNKSt5arrayI4CardLm52EE3endEv
	.type	_ZNKSt5arrayI4CardLm52EE3endEv, @function
_ZNKSt5arrayI4CardLm52EE3endEv:
.LFB3554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayI4CardLm52EE4dataEv
	addq	$416, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3554:
	.size	_ZNKSt5arrayI4CardLm52EE3endEv, .-_ZNKSt5arrayI4CardLm52EE3endEv
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC5Em,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em:
.LFB3556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3556:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
	.set	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.section	.text._ZNSt5arrayI4CardLm52EE5beginEv,"axG",@progbits,_ZNSt5arrayI4CardLm52EE5beginEv,comdat
	.align 2
	.weak	_ZNSt5arrayI4CardLm52EE5beginEv
	.type	_ZNSt5arrayI4CardLm52EE5beginEv, @function
_ZNSt5arrayI4CardLm52EE5beginEv:
.LFB3558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5arrayI4CardLm52EE4dataEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3558:
	.size	_ZNSt5arrayI4CardLm52EE5beginEv, .-_ZNSt5arrayI4CardLm52EE5beginEv
	.section	.text._ZNSt5arrayI4CardLm52EE3endEv,"axG",@progbits,_ZNSt5arrayI4CardLm52EE3endEv,comdat
	.align 2
	.weak	_ZNSt5arrayI4CardLm52EE3endEv
	.type	_ZNSt5arrayI4CardLm52EE3endEv, @function
_ZNSt5arrayI4CardLm52EE3endEv:
.LFB3559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5arrayI4CardLm52EE4dataEv
	addq	$416, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3559:
	.size	_ZNSt5arrayI4CardLm52EE3endEv, .-_ZNSt5arrayI4CardLm52EE3endEv
	.section	.text._ZSt7shuffleIP4CardRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_S5_OT0_,"axG",@progbits,_ZSt7shuffleIP4CardRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_S5_OT0_,comdat
	.weak	_ZSt7shuffleIP4CardRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_S5_OT0_
	.type	_ZSt7shuffleIP4CardRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_S5_OT0_, @function
_ZSt7shuffleIP4CardRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_S5_OT0_:
.LFB3560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.L106
	movl	$4294967295, %eax
	movq	%rax, -72(%rbp)
	movq	-112(%rbp), %rax
	subq	-104(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -64(%rbp)
	movl	$4294967295, %eax
	movl	$0, %edx
	divq	-64(%rbp)
	cmpq	%rax, -64(%rbp)
	ja	.L98
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L101
	leaq	-32(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionImEC1Emm
	movq	-120(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIP4CardS1_EvT_T0_
.L101:
	movq	-88(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.L107
	movq	-88(%rbp), %rax
	subq	-104(%rbp), %rax
	sarq	$3, %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-120(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt22__gen_two_uniform_intsImRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEESt4pairIT_S4_ES4_S4_OT0_
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIP4CardS1_EvT_T0_
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIP4CardS1_EvT_T0_
	jmp	.L101
.L98:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionImEC1Ev
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -80(%rbp)
.L103:
	movq	-80(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.L95
	movq	-80(%rbp), %rax
	subq	-104(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionImE10param_typeC1Emm
	leaq	-32(%rbp), %rdx
	movq	-120(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIP4CardS1_EvT_T0_
	addq	$8, -80(%rbp)
	jmp	.L103
.L106:
	nop
	jmp	.L95
.L107:
	nop
.L95:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L105
	call	__stack_chk_fail@PLT
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3560:
	.size	_ZSt7shuffleIP4CardRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_S5_OT0_, .-_ZSt7shuffleIP4CardRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_S5_OT0_
	.section	.text._ZNSt14__array_traitsI4CardLm52EE6_S_refERA52_KS0_m,"axG",@progbits,_ZNSt14__array_traitsI4CardLm52EE6_S_refERA52_KS0_m,comdat
	.weak	_ZNSt14__array_traitsI4CardLm52EE6_S_refERA52_KS0_m
	.type	_ZNSt14__array_traitsI4CardLm52EE6_S_refERA52_KS0_m, @function
_ZNSt14__array_traitsI4CardLm52EE6_S_refERA52_KS0_m:
.LFB3688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3688:
	.size	_ZNSt14__array_traitsI4CardLm52EE6_S_refERA52_KS0_m, .-_ZNSt14__array_traitsI4CardLm52EE6_S_refERA52_KS0_m
	.section	.text._ZNKSt5arrayI4CardLm52EE4dataEv,"axG",@progbits,_ZNKSt5arrayI4CardLm52EE4dataEv,comdat
	.align 2
	.weak	_ZNKSt5arrayI4CardLm52EE4dataEv
	.type	_ZNKSt5arrayI4CardLm52EE4dataEv, @function
_ZNKSt5arrayI4CardLm52EE4dataEv:
.LFB3689:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14__array_traitsI4CardLm52EE6_S_ptrERA52_KS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3689:
	.size	_ZNKSt5arrayI4CardLm52EE4dataEv, .-_ZNKSt5arrayI4CardLm52EE4dataEv
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm:
.LFB3690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	$1, -16(%rbp)
.L114:
	cmpq	$623, -16(%rbp)
	ja	.L113
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$30, %rax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	imulq	$1812433253, %rax, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	addq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rax, (%rdx,%rcx,8)
	addq	$1, -16(%rbp)
	jmp	.L114
.L113:
	movq	-24(%rbp), %rax
	movq	$624, 4992(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3690:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	.section	.text._ZNSt5arrayI4CardLm52EE4dataEv,"axG",@progbits,_ZNSt5arrayI4CardLm52EE4dataEv,comdat
	.align 2
	.weak	_ZNSt5arrayI4CardLm52EE4dataEv
	.type	_ZNSt5arrayI4CardLm52EE4dataEv, @function
_ZNSt5arrayI4CardLm52EE4dataEv:
.LFB3691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14__array_traitsI4CardLm52EE6_S_ptrERA52_KS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3691:
	.size	_ZNSt5arrayI4CardLm52EE4dataEv, .-_ZNSt5arrayI4CardLm52EE4dataEv
	.section	.text._ZNSt24uniform_int_distributionImEC2Emm,"axG",@progbits,_ZNSt24uniform_int_distributionImEC5Emm,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionImEC2Emm
	.type	_ZNSt24uniform_int_distributionImEC2Emm, @function
_ZNSt24uniform_int_distributionImEC2Emm:
.LFB3693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionImE10param_typeC1Emm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3693:
	.size	_ZNSt24uniform_int_distributionImEC2Emm, .-_ZNSt24uniform_int_distributionImEC2Emm
	.weak	_ZNSt24uniform_int_distributionImEC1Emm
	.set	_ZNSt24uniform_int_distributionImEC1Emm,_ZNSt24uniform_int_distributionImEC2Emm
	.section	.text._ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_,"axG",@progbits,_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_
	.type	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_, @function
_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_:
.LFB3695:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3695:
	.size	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_, .-_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_
	.section	.text._ZSt9iter_swapIP4CardS1_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIP4CardS1_EvT_T0_,comdat
	.weak	_ZSt9iter_swapIP4CardS1_EvT_T0_
	.type	_ZSt9iter_swapIP4CardS1_EvT_T0_, @function
_ZSt9iter_swapIP4CardS1_EvT_T0_:
.LFB3696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapI4CardENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3696:
	.size	_ZSt9iter_swapIP4CardS1_EvT_T0_, .-_ZSt9iter_swapIP4CardS1_EvT_T0_
	.section	.text._ZSt22__gen_two_uniform_intsImRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEESt4pairIT_S4_ES4_S4_OT0_,"axG",@progbits,_ZSt22__gen_two_uniform_intsImRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEESt4pairIT_S4_ES4_S4_OT0_,comdat
	.weak	_ZSt22__gen_two_uniform_intsImRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEESt4pairIT_S4_ES4_S4_OT0_
	.type	_ZSt22__gen_two_uniform_intsImRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEESt4pairIT_S4_ES4_S4_OT0_, @function
_ZSt22__gen_two_uniform_intsImRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEESt4pairIT_S4_ES4_S4_OT0_:
.LFB3697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	imulq	-64(%rbp), %rax
	leaq	-1(%rax), %rdx
	leaq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionImEC1Emm
	movq	-72(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-64(%rbp)
	movq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-64(%rbp)
	movq	%rax, -48(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9make_pairImmESt4pairINSt17__decay_and_stripIT_E6__typeENS1_IT0_E6__typeEEOS2_OS5_
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L123
	call	__stack_chk_fail@PLT
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3697:
	.size	_ZSt22__gen_two_uniform_intsImRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEESt4pairIT_S4_ES4_S4_OT0_, .-_ZSt22__gen_two_uniform_intsImRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEESt4pairIT_S4_ES4_S4_OT0_
	.section	.text._ZNSt24uniform_int_distributionImEC2Ev,"axG",@progbits,_ZNSt24uniform_int_distributionImEC5Ev,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionImEC2Ev
	.type	_ZNSt24uniform_int_distributionImEC2Ev, @function
_ZNSt24uniform_int_distributionImEC2Ev:
.LFB3699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZNSt14numeric_limitsImE3maxEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionImEC1Emm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3699:
	.size	_ZNSt24uniform_int_distributionImEC2Ev, .-_ZNSt24uniform_int_distributionImEC2Ev
	.weak	_ZNSt24uniform_int_distributionImEC1Ev
	.set	_ZNSt24uniform_int_distributionImEC1Ev,_ZNSt24uniform_int_distributionImEC2Ev
	.section	.text._ZNSt24uniform_int_distributionImE10param_typeC2Emm,"axG",@progbits,_ZNSt24uniform_int_distributionImE10param_typeC5Emm,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionImE10param_typeC2Emm
	.type	_ZNSt24uniform_int_distributionImE10param_typeC2Emm, @function
_ZNSt24uniform_int_distributionImE10param_typeC2Emm:
.LFB3702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3702:
	.size	_ZNSt24uniform_int_distributionImE10param_typeC2Emm, .-_ZNSt24uniform_int_distributionImE10param_typeC2Emm
	.weak	_ZNSt24uniform_int_distributionImE10param_typeC1Emm
	.set	_ZNSt24uniform_int_distributionImE10param_typeC1Emm,_ZNSt24uniform_int_distributionImE10param_typeC2Emm
	.section	.text._ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
	.type	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE, @function
_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE:
.LFB3704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$0, -120(%rbp)
	movl	$4294967295, %eax
	movq	%rax, -112(%rbp)
	movq	%rax, -104(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt24uniform_int_distributionImE10param_type1bEv
	movq	%rax, %rbx
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt24uniform_int_distributionImE10param_type1aEv
	subq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, -96(%rbp)
	movl	$4294967294, %eax
	cmpq	%rax, -96(%rbp)
	ja	.L127
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movl	$4294967295, %eax
	movl	$0, %edx
	divq	-72(%rbp)
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
.L129:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L128
	jmp	.L129
.L128:
	movq	-128(%rbp), %rax
	movl	$0, %edx
	divq	-64(%rbp)
	movq	%rax, -128(%rbp)
	jmp	.L130
.L127:
	movl	$4294967295, %eax
	cmpq	%rax, -96(%rbp)
	jbe	.L131
.L133:
	movabsq	$4294967296, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionImE10param_typeC1Emm
	leaq	-48(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
	salq	$32, %rax
	movq	%rax, -80(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	-80(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	-96(%rbp), %rax
	ja	.L133
	movq	-128(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jnb	.L130
	jmp	.L133
.L131:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%rax, -128(%rbp)
.L130:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt24uniform_int_distributionImE10param_type1aEv
	movq	-128(%rbp), %rdx
	addq	%rdx, %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L135
	call	__stack_chk_fail@PLT
.L135:
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3704:
	.size	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE, .-_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
	.section	.text._ZNSt14__array_traitsI4CardLm52EE6_S_ptrERA52_KS0_,"axG",@progbits,_ZNSt14__array_traitsI4CardLm52EE6_S_ptrERA52_KS0_,comdat
	.weak	_ZNSt14__array_traitsI4CardLm52EE6_S_ptrERA52_KS0_
	.type	_ZNSt14__array_traitsI4CardLm52EE6_S_ptrERA52_KS0_, @function
_ZNSt14__array_traitsI4CardLm52EE6_S_ptrERA52_KS0_:
.LFB3745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3745:
	.size	_ZNSt14__array_traitsI4CardLm52EE6_S_ptrERA52_KS0_, .-_ZNSt14__array_traitsI4CardLm52EE6_S_ptrERA52_KS0_
	.section	.text._ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_, @function
_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_:
.LFB3746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3746:
	.size	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	.section	.text._ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_, @function
_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_:
.LFB3747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3747:
	.size	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	.section	.text._ZSt4moveIR4CardEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIR4CardEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIR4CardEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIR4CardEONSt16remove_referenceIT_E4typeEOS3_, @function
_ZSt4moveIR4CardEONSt16remove_referenceIT_E4typeEOS3_:
.LFB3749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3749:
	.size	_ZSt4moveIR4CardEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIR4CardEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZSt4swapI4CardENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_,"axG",@progbits,_ZSt4swapI4CardENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_,comdat
	.weak	_ZSt4swapI4CardENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	.type	_ZSt4swapI4CardENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_, @function
_ZSt4swapI4CardENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_:
.LFB3748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4CardEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4CardEONSt16remove_referenceIT_E4typeEOS3_
	movq	-24(%rbp), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4CardEONSt16remove_referenceIT_E4typeEOS3_
	movq	-32(%rbp), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L145
	call	__stack_chk_fail@PLT
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3748:
	.size	_ZSt4swapI4CardENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_, .-_ZSt4swapI4CardENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	.section	.text._ZSt9make_pairImmESt4pairINSt17__decay_and_stripIT_E6__typeENS1_IT0_E6__typeEEOS2_OS5_,"axG",@progbits,_ZSt9make_pairImmESt4pairINSt17__decay_and_stripIT_E6__typeENS1_IT0_E6__typeEEOS2_OS5_,comdat
	.weak	_ZSt9make_pairImmESt4pairINSt17__decay_and_stripIT_E6__typeENS1_IT0_E6__typeEEOS2_OS5_
	.type	_ZSt9make_pairImmESt4pairINSt17__decay_and_stripIT_E6__typeENS1_IT0_E6__typeEEOS2_OS5_, @function
_ZSt9make_pairImmESt4pairINSt17__decay_and_stripIT_E6__typeENS1_IT0_E6__typeEEOS2_OS5_:
.LFB3750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rcx
	leaq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairImmEC1ImmLb1EEEOT_OT0_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L148
	call	__stack_chk_fail@PLT
.L148:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3750:
	.size	_ZSt9make_pairImmESt4pairINSt17__decay_and_stripIT_E6__typeENS1_IT0_E6__typeEEOS2_OS5_, .-_ZSt9make_pairImmESt4pairINSt17__decay_and_stripIT_E6__typeENS1_IT0_E6__typeEEOS2_OS5_
	.section	.text._ZNKSt24uniform_int_distributionImE10param_type1bEv,"axG",@progbits,_ZNKSt24uniform_int_distributionImE10param_type1bEv,comdat
	.align 2
	.weak	_ZNKSt24uniform_int_distributionImE10param_type1bEv
	.type	_ZNKSt24uniform_int_distributionImE10param_type1bEv, @function
_ZNKSt24uniform_int_distributionImE10param_type1bEv:
.LFB3759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3759:
	.size	_ZNKSt24uniform_int_distributionImE10param_type1bEv, .-_ZNKSt24uniform_int_distributionImE10param_type1bEv
	.section	.text._ZNKSt24uniform_int_distributionImE10param_type1aEv,"axG",@progbits,_ZNKSt24uniform_int_distributionImE10param_type1aEv,comdat
	.align 2
	.weak	_ZNKSt24uniform_int_distributionImE10param_type1aEv
	.type	_ZNKSt24uniform_int_distributionImE10param_type1aEv, @function
_ZNKSt24uniform_int_distributionImE10param_type1aEv:
.LFB3760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3760:
	.size	_ZNKSt24uniform_int_distributionImE10param_type1aEv, .-_ZNKSt24uniform_int_distributionImE10param_type1aEv
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv:
.LFB3761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	4992(%rax), %rax
	cmpq	$623, %rax
	jbe	.L154
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
.L154:
	movq	-24(%rbp), %rax
	movq	4992(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 4992(%rdx)
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$18, %rax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3761:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.section	.text._ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm, @function
_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm:
.LFB3799:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$4294967295, %eax
	andq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3799:
	.size	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm, .-_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	.section	.text._ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm, @function
_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm:
.LFB3800:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	movabsq	$945986875574848801, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	%rax
	imulq	$624, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3800:
	.size	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm, .-_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	.section	.text._ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB3801:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3801:
	.size	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZNSt4pairImmEC2ImmLb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairImmEC5ImmLb1EEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt4pairImmEC2ImmLb1EEEOT_OT0_
	.type	_ZNSt4pairImmEC2ImmLb1EEEOT_OT0_, @function
_ZNSt4pairImmEC2ImmLb1EEEOT_OT0_:
.LFB3803:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3803:
	.size	_ZNSt4pairImmEC2ImmLb1EEEOT_OT0_, .-_ZNSt4pairImmEC2ImmLb1EEEOT_OT0_
	.weak	_ZNSt4pairImmEC1ImmLb1EEEOT_OT0_
	.set	_ZNSt4pairImmEC1ImmLb1EEEOT_OT0_,_ZNSt4pairImmEC2ImmLb1EEEOT_OT0_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB3805:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	$-2147483648, -40(%rbp)
	movq	$2147483647, -32(%rbp)
	movq	$0, -56(%rbp)
.L167:
	cmpq	$226, -56(%rbp)
	ja	.L164
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	andq	$-2147483648, %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	andl	$2147483647, %eax
	orq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	leaq	397(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movq	-24(%rbp), %rdx
	shrq	%rdx
	xorq	%rax, %rdx
	movq	-24(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L165
	movl	$2567483615, %eax
	jmp	.L166
.L165:
	movl	$0, %eax
.L166:
	xorq	%rdx, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -56(%rbp)
	jmp	.L167
.L164:
	movq	$227, -48(%rbp)
.L171:
	cmpq	$622, -48(%rbp)
	ja	.L168
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	andq	$-2147483648, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	andl	$2147483647, %eax
	orq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	leaq	-227(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movq	-16(%rbp), %rdx
	shrq	%rdx
	xorq	%rax, %rdx
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L169
	movl	$2567483615, %eax
	jmp	.L170
.L169:
	movl	$0, %eax
.L170:
	xorq	%rdx, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -48(%rbp)
	jmp	.L171
.L168:
	movq	-72(%rbp), %rax
	movq	4984(%rax), %rax
	andq	$-2147483648, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	andl	$2147483647, %eax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	3168(%rax), %rax
	movq	-8(%rbp), %rdx
	shrq	%rdx
	xorq	%rax, %rdx
	movq	-8(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L172
	movl	$2567483615, %eax
	jmp	.L173
.L172:
	movl	$0, %eax
.L173:
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 4984(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4992(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3805:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB3874:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L176
	cmpl	$65535, -8(%rbp)
	jne	.L176
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L176:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3874:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z14playerWantsHitv, @function
_GLOBAL__sub_I__Z14playerWantsHitv:
.LFB3875:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3875:
	.size	_GLOBAL__sub_I__Z14playerWantsHitv, .-_GLOBAL__sub_I__Z14playerWantsHitv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z14playerWantsHitv
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.1.0-2ubuntu2~18.04) 9.1.0"
	.section	.note.GNU-stack,"",@progbits
