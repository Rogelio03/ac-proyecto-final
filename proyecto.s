cmp::operator()(std::pair<int, int> const&, std::pair<int, int> const&):
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     QWORD PTR [rbp-16], rsi
        mov     QWORD PTR [rbp-24], rdx
        ud2
ady:
        .zero   240120
distancia:
        .zero   40020
visitado:
        .zero   10005
Q:
        .zero   32
V:
        .zero   4
previo:
        .zero   40020
init():
        push    rbp
        mov     rbp, rsp
        mov     DWORD PTR [rbp-4], 0
        jmp     .L8
.L9:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     DWORD PTR distancia[0+rax*4], 1073741824
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     BYTE PTR visitado[rax], 0
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     DWORD PTR previo[0+rax*4], -1
        add     DWORD PTR [rbp-4], 1
.L8:
        mov     eax, DWORD PTR V[rip]
        cmp     DWORD PTR [rbp-4], eax
        jle     .L9
        nop
        nop
        pop     rbp
        ret
minimizacion(int, int, int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     DWORD PTR [rbp-20], edi
        mov     DWORD PTR [rbp-24], esi
        mov     DWORD PTR [rbp-28], edx
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        mov     edx, DWORD PTR distancia[0+rax*4]
        mov     eax, DWORD PTR [rbp-28]
        add     edx, eax
        mov     eax, DWORD PTR [rbp-24]
        cdqe
        mov     eax, DWORD PTR distancia[0+rax*4]
        cmp     edx, eax
        jge     .L12
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        mov     ecx, DWORD PTR distancia[0+rax*4]
        mov     eax, DWORD PTR [rbp-24]
        mov     edx, DWORD PTR [rbp-28]
        add     edx, ecx
        cdqe
        mov     DWORD PTR distancia[0+rax*4], edx
        mov     eax, DWORD PTR [rbp-24]
        cdqe
        mov     edx, DWORD PTR [rbp-20]
        mov     DWORD PTR previo[0+rax*4], edx
        mov     eax, DWORD PTR [rbp-24]
        cdqe
        sal     rax, 2
        lea     rdx, distancia[rax]
        lea     rcx, [rbp-24]
        lea     rax, [rbp-8]
        mov     rsi, rcx
        mov     rdi, rax
        call    std::pair<int, int>::pair<int&, int&, true>(int&, int&)
        lea     rax, [rbp-8]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:Q
        call    std::priority_queue<std::pair<int, int>, std::vector<std::pair<int, int>, std::allocator<std::pair<int, int> > >, cmp>::push(std::pair<int, int>&&)
.L12:
        nop
        leave
        ret
.LC0:
        .string "%d "
print(int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     eax, DWORD PTR previo[0+rax*4]
        cmp     eax, -1
        je      .L14
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     eax, DWORD PTR previo[0+rax*4]
        mov     edi, eax
        call    print(int)
.L14:
        mov     eax, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        nop
        leave
        ret
.LC1:
        .string "\tDistancias mas cortas iniciando en vertice %d\n"
.LC2:
        .string "\tVertice %d , distancia mas corta = %d\n"
.LC3:
        .string "\tPara hallar el camino mas corto del vertice de origen al vertice destino,"
.LC4:
        .string "\tIngrese el vertice destino: "
.LC5:
        .string "%d"
corto(int):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 72
        mov     DWORD PTR [rbp-68], edi
        call    init()
        mov     DWORD PTR [rbp-40], 0
        lea     rdx, [rbp-40]
        lea     rcx, [rbp-68]
        lea     rax, [rbp-48]
        mov     rsi, rcx
        mov     rdi, rax
        call    std::pair<int, int>::pair<int&, int, true>(int&, int&&)
        lea     rax, [rbp-48]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:Q
        call    std::priority_queue<std::pair<int, int>, std::vector<std::pair<int, int>, std::allocator<std::pair<int, int> > >, cmp>::push(std::pair<int, int>&&)
        mov     eax, DWORD PTR [rbp-68]
        cdqe
        mov     DWORD PTR distancia[0+rax*4], 0
        jmp     .L16
.L21:
        mov     edi, OFFSET FLAT:Q
        call    std::priority_queue<std::pair<int, int>, std::vector<std::pair<int, int>, std::allocator<std::pair<int, int> > >, cmp>::top() const
        mov     eax, DWORD PTR [rax]
        mov     DWORD PTR [rbp-28], eax
        mov     edi, OFFSET FLAT:Q
        call    std::priority_queue<std::pair<int, int>, std::vector<std::pair<int, int>, std::allocator<std::pair<int, int> > >, cmp>::pop()
        mov     eax, DWORD PTR [rbp-28]
        cdqe
        movzx   eax, BYTE PTR visitado[rax]
        test    al, al
        je      .L17
        jmp     .L16
.L17:
        mov     eax, DWORD PTR [rbp-28]
        cdqe
        mov     BYTE PTR visitado[rax], 1
        mov     DWORD PTR [rbp-20], 0
        jmp     .L18
.L20:
        mov     eax, DWORD PTR [rbp-28]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 3
        lea     rdx, ady[rax]
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        mov     rsi, rax
        mov     rdi, rdx
        call    std::vector<std::pair<int, int>, std::allocator<std::pair<int, int> > >::operator[](unsigned long)
        mov     eax, DWORD PTR [rax]
        mov     DWORD PTR [rbp-32], eax
        mov     eax, DWORD PTR [rbp-28]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 3
        lea     rdx, ady[rax]
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        mov     rsi, rax
        mov     rdi, rdx
        call    std::vector<std::pair<int, int>, std::allocator<std::pair<int, int> > >::operator[](unsigned long)
        mov     eax, DWORD PTR [rax+4]
        mov     DWORD PTR [rbp-36], eax
        mov     eax, DWORD PTR [rbp-32]
        cdqe
        movzx   eax, BYTE PTR visitado[rax]
        xor     eax, 1
        test    al, al
        je      .L19
        mov     edx, DWORD PTR [rbp-36]
        mov     ecx, DWORD PTR [rbp-32]
        mov     eax, DWORD PTR [rbp-28]
        mov     esi, ecx
        mov     edi, eax
        call    minimizacion(int, int, int)
.L19:
        add     DWORD PTR [rbp-20], 1
.L18:
        mov     eax, DWORD PTR [rbp-20]
        movsx   rbx, eax
        mov     eax, DWORD PTR [rbp-28]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 3
        add     rax, OFFSET FLAT:ady
        mov     rdi, rax
        call    std::vector<std::pair<int, int>, std::allocator<std::pair<int, int> > >::size() const
        cmp     rbx, rax
        setb    al
        test    al, al
        jne     .L20
.L16:
        mov     edi, OFFSET FLAT:Q
        call    std::priority_queue<std::pair<int, int>, std::vector<std::pair<int, int>, std::allocator<std::pair<int, int> > >, cmp>::empty() const
        xor     eax, 1
        test    al, al
        jne     .L21
        mov     eax, DWORD PTR [rbp-68]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    printf
        mov     DWORD PTR [rbp-24], 1
        jmp     .L22
.L23:
        mov     eax, DWORD PTR [rbp-24]
        cdqe
        mov     edx, DWORD PTR distancia[0+rax*4]
        mov     eax, DWORD PTR [rbp-24]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 0
        call    printf
        add     DWORD PTR [rbp-24], 1
.L22:
        mov     eax, DWORD PTR V[rip]
        cmp     DWORD PTR [rbp-24], eax
        jle     .L23
        mov     edi, OFFSET FLAT:.LC3
        call    puts
        mov     edi, OFFSET FLAT:.LC4
        mov     eax, 0
        call    printf
        lea     rax, [rbp-52]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC5
        mov     eax, 0
        call    __isoc99_scanf
        mov     eax, DWORD PTR [rbp-52]
        mov     edi, eax
        call    print(int)
        mov     edi, 10
        call    putchar
        nop
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
.LC6:
        .string "\tBienvenido al programa de Grafos para hallar la distancia mas corta de un nodo o vertice al otro. "
.LC7:
        .string "\tIngrese la cantidad de nodos y arcos que contendra el grafo. "
.LC8:
        .string "\tingrese numero de nodos: "
.LC9:
        .string "\tingrese numero de arcos: "
.LC10:
        .string "\tIngresar El nodo o vertice de origen, su arista y la distancia o peso de un nodo a otro dejando un espacio entre cada numero "
.LC11:
        .string "%d %d %d"
.LC12:
        .string "\tIngrese el vertice inicial: "
main:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 40
        mov     esi, OFFSET FLAT:.LC6
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        mov     esi, OFFSET FLAT:.LC7
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        mov     esi, OFFSET FLAT:.LC8
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     esi, OFFSET FLAT:V
        mov     edi, OFFSET FLAT:.LC5
        mov     eax, 0
        call    __isoc99_scanf
        mov     esi, OFFSET FLAT:.LC9
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        lea     rax, [rbp-32]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC5
        mov     eax, 0
        call    __isoc99_scanf
        mov     esi, OFFSET FLAT:.LC10
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        mov     DWORD PTR [rbp-20], 0
        jmp     .L25
.L26:
        lea     rcx, [rbp-44]
        lea     rdx, [rbp-40]
        lea     rax, [rbp-36]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC11
        mov     eax, 0
        call    __isoc99_scanf
        mov     eax, DWORD PTR [rbp-36]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 3
        lea     rbx, ady[rax]
        lea     rdx, [rbp-44]
        lea     rcx, [rbp-40]
        lea     rax, [rbp-28]
        mov     rsi, rcx
        mov     rdi, rax
        call    std::pair<int, int>::pair<int&, int&, true>(int&, int&)
        lea     rax, [rbp-28]
        mov     rsi, rax
        mov     rdi, rbx
        call    std::vector<std::pair<int, int>, std::allocator<std::pair<int, int> > >::push_back(std::pair<int, int>&&)
        add     DWORD PTR [rbp-20], 1
.L25:
        mov     eax, DWORD PTR [rbp-32]
        cmp     DWORD PTR [rbp-20], eax
        jl      .L26
        mov     esi, OFFSET FLAT:.LC12
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        lea     rax, [rbp-48]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC5
        mov     eax, 0
        call    __isoc99_scanf
        mov     eax, DWORD PTR [rbp-48]
        mov     edi, eax
        call    corto(int)
        mov     eax, 0
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
.LC13:
        .string "vector::_M_realloc_insert"
__tcf_0:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 24
        mov     QWORD PTR [rbp-24], rdi
        mov     ebx, OFFSET FLAT:ady+240120
.L177:
        cmp     rbx, OFFSET FLAT:ady
        je      .L175
        sub     rbx, 24
        mov     rdi, rbx
        call    std::vector<std::pair<int, int>, std::allocator<std::pair<int, int> > >::~vector() [complete object destructor]
        jmp     .L177
.L175:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
__static_initialization_and_destruction_0():
        push    rbp
        mov     rbp, rsp
        push    r12
        push    rbx
        mov     eax, OFFSET FLAT:ady
        mov     ebx, 10004
        mov     r12, rax
        jmp     .L180
.L181:
        mov     rdi, r12
        call    std::vector<std::pair<int, int>, std::allocator<std::pair<int, int> > >::vector() [complete object constructor]
        sub     rbx, 1
        add     r12, 24
.L180:
        test    rbx, rbx
        jns     .L181
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, 0
        mov     edi, OFFSET FLAT:__tcf_0
        call    __cxa_atexit
        mov     edi, OFFSET FLAT:Q
        call    std::priority_queue<std::pair<int, int>, std::vector<std::pair<int, int>, std::allocator<std::pair<int, int> > >, cmp>::priority_queue<std::vector<std::pair<int, int>, std::allocator<std::pair<int, int> > >, void>()
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:Q
        mov     edi, OFFSET FLAT:_ZNSt14priority_queueISt4pairIiiESt6vectorIS1_SaIS1_EE3cmpED1Ev
        call    __cxa_atexit
        nop
        pop     rbx
        pop     r12
        pop     rbp
        ret
_GLOBAL__sub_I_ady:
        push    rbp
        mov     rbp, rsp
        call    __static_initialization_and_destruction_0()
        pop     rbp
        ret
