{"filter":false,"title":"videoGameNextPlayer.asm","tooltip":"/videoGameNextPlayer.asm","undoManager":{"mark":93,"position":93,"stack":[[{"start":{"row":8,"column":0},"end":{"row":13,"column":11},"action":"remove","lines":["    call inputSign","    mov eax,3","    mov ebx,1","    mov ecx,jawaban","    mov edx,2","    int 80h"],"id":2},{"start":{"row":8,"column":0},"end":{"row":29,"column":31},"action":"insert","lines":["jawabBukuDanKataNextPlayer1:","    ;jawaban?","    call inputSign","    mov eax,3","    mov ebx,1","    mov ecx,jawaban","    mov edx,2","    int 80h","    ","    cmp byte[jawaban],61h","    je cekKunciBukuDanKataNextPlayer1","    cmp byte[jawaban],62h","    je cekKunciBukuDanKataNextPlayer1","    cmp byte[jawaban],63h","    je cekKunciBukuDanKataNextPlayer1","    cmp byte[jawaban],64h","    je cekKunciBukuDanKataNextPlayer1","    ","    call inputanSalah","    jmp jawabBukuDanKataNextPlayer1","    ","cekKunciBukuDanKataNextPlayer1:"]}],[{"start":{"row":8,"column":5},"end":{"row":8,"column":27},"action":"remove","lines":["BukuDanKataNextPlayer1"],"id":3},{"start":{"row":8,"column":5},"end":{"row":8,"column":6},"action":"insert","lines":["V"]}],[{"start":{"row":8,"column":6},"end":{"row":8,"column":7},"action":"insert","lines":["i"],"id":4}],[{"start":{"row":8,"column":7},"end":{"row":8,"column":8},"action":"insert","lines":["d"],"id":5}],[{"start":{"row":8,"column":8},"end":{"row":8,"column":9},"action":"insert","lines":["e"],"id":6}],[{"start":{"row":8,"column":9},"end":{"row":8,"column":10},"action":"insert","lines":["o"],"id":7}],[{"start":{"row":8,"column":10},"end":{"row":8,"column":11},"action":"insert","lines":["G"],"id":8}],[{"start":{"row":8,"column":11},"end":{"row":8,"column":12},"action":"insert","lines":["a"],"id":9}],[{"start":{"row":8,"column":12},"end":{"row":8,"column":13},"action":"insert","lines":["m"],"id":10}],[{"start":{"row":8,"column":13},"end":{"row":8,"column":14},"action":"insert","lines":["e"],"id":11}],[{"start":{"row":8,"column":14},"end":{"row":8,"column":15},"action":"insert","lines":["N"],"id":12}],[{"start":{"row":8,"column":15},"end":{"row":8,"column":16},"action":"insert","lines":["e"],"id":13}],[{"start":{"row":8,"column":16},"end":{"row":8,"column":17},"action":"insert","lines":["x"],"id":14}],[{"start":{"row":8,"column":17},"end":{"row":8,"column":18},"action":"insert","lines":["t"],"id":15}],[{"start":{"row":8,"column":18},"end":{"row":8,"column":19},"action":"insert","lines":["P"],"id":16}],[{"start":{"row":8,"column":19},"end":{"row":8,"column":20},"action":"insert","lines":["l"],"id":17}],[{"start":{"row":8,"column":20},"end":{"row":8,"column":21},"action":"insert","lines":["a"],"id":18}],[{"start":{"row":8,"column":21},"end":{"row":8,"column":22},"action":"insert","lines":["y"],"id":19}],[{"start":{"row":8,"column":22},"end":{"row":8,"column":23},"action":"insert","lines":["e"],"id":20}],[{"start":{"row":8,"column":23},"end":{"row":8,"column":24},"action":"insert","lines":["r"],"id":21}],[{"start":{"row":8,"column":24},"end":{"row":8,"column":25},"action":"insert","lines":["1"],"id":22}],[{"start":{"row":18,"column":7},"end":{"row":18,"column":37},"action":"remove","lines":["cekKunciBukuDanKataNextPlayer1"],"id":23},{"start":{"row":18,"column":7},"end":{"row":18,"column":8},"action":"insert","lines":["c"]}],[{"start":{"row":18,"column":8},"end":{"row":18,"column":9},"action":"insert","lines":["e"],"id":24}],[{"start":{"row":18,"column":9},"end":{"row":18,"column":10},"action":"insert","lines":["k"],"id":25}],[{"start":{"row":18,"column":10},"end":{"row":18,"column":11},"action":"insert","lines":["K"],"id":26}],[{"start":{"row":18,"column":11},"end":{"row":18,"column":12},"action":"insert","lines":["u"],"id":27}],[{"start":{"row":18,"column":12},"end":{"row":18,"column":13},"action":"insert","lines":["n"],"id":28}],[{"start":{"row":18,"column":13},"end":{"row":18,"column":14},"action":"insert","lines":["c"],"id":29}],[{"start":{"row":18,"column":14},"end":{"row":18,"column":15},"action":"insert","lines":["i"],"id":30}],[{"start":{"row":18,"column":15},"end":{"row":18,"column":16},"action":"insert","lines":["V"],"id":31}],[{"start":{"row":18,"column":16},"end":{"row":18,"column":17},"action":"insert","lines":["i"],"id":32}],[{"start":{"row":18,"column":17},"end":{"row":18,"column":18},"action":"insert","lines":["d"],"id":33}],[{"start":{"row":18,"column":18},"end":{"row":18,"column":19},"action":"insert","lines":["e"],"id":34}],[{"start":{"row":18,"column":19},"end":{"row":18,"column":20},"action":"insert","lines":["o"],"id":35}],[{"start":{"row":18,"column":20},"end":{"row":18,"column":21},"action":"insert","lines":["G"],"id":36}],[{"start":{"row":18,"column":21},"end":{"row":18,"column":22},"action":"insert","lines":["a"],"id":37}],[{"start":{"row":18,"column":22},"end":{"row":18,"column":23},"action":"insert","lines":["m"],"id":38}],[{"start":{"row":18,"column":23},"end":{"row":18,"column":24},"action":"insert","lines":["e"],"id":39}],[{"start":{"row":18,"column":24},"end":{"row":18,"column":25},"action":"insert","lines":["N"],"id":40}],[{"start":{"row":18,"column":25},"end":{"row":18,"column":26},"action":"insert","lines":["e"],"id":41}],[{"start":{"row":18,"column":26},"end":{"row":18,"column":27},"action":"insert","lines":["x"],"id":42}],[{"start":{"row":18,"column":27},"end":{"row":18,"column":28},"action":"insert","lines":["t"],"id":43}],[{"start":{"row":18,"column":28},"end":{"row":18,"column":29},"action":"insert","lines":["P"],"id":44}],[{"start":{"row":18,"column":29},"end":{"row":18,"column":30},"action":"insert","lines":["l"],"id":45}],[{"start":{"row":18,"column":30},"end":{"row":18,"column":31},"action":"insert","lines":["a"],"id":46}],[{"start":{"row":18,"column":31},"end":{"row":18,"column":32},"action":"insert","lines":["y"],"id":47}],[{"start":{"row":18,"column":32},"end":{"row":18,"column":33},"action":"insert","lines":["e"],"id":48}],[{"start":{"row":18,"column":33},"end":{"row":18,"column":34},"action":"insert","lines":["r"],"id":49}],[{"start":{"row":18,"column":34},"end":{"row":18,"column":35},"action":"insert","lines":["1"],"id":50}],[{"start":{"row":20,"column":7},"end":{"row":20,"column":37},"action":"remove","lines":["cekKunciBukuDanKataNextPlayer1"],"id":51},{"start":{"row":20,"column":7},"end":{"row":20,"column":35},"action":"insert","lines":["cekKunciVideoGameNextPlayer1"]}],[{"start":{"row":22,"column":7},"end":{"row":22,"column":37},"action":"remove","lines":["cekKunciBukuDanKataNextPlayer1"],"id":52},{"start":{"row":22,"column":7},"end":{"row":22,"column":35},"action":"insert","lines":["cekKunciVideoGameNextPlayer1"]}],[{"start":{"row":24,"column":7},"end":{"row":24,"column":37},"action":"remove","lines":["cekKunciBukuDanKataNextPlayer1"],"id":53},{"start":{"row":24,"column":7},"end":{"row":24,"column":35},"action":"insert","lines":["cekKunciVideoGameNextPlayer1"]}],[{"start":{"row":27,"column":8},"end":{"row":27,"column":35},"action":"remove","lines":["jawabBukuDanKataNextPlayer1"],"id":54},{"start":{"row":27,"column":8},"end":{"row":27,"column":9},"action":"insert","lines":["j"]}],[{"start":{"row":27,"column":9},"end":{"row":27,"column":10},"action":"insert","lines":["a"],"id":55}],[{"start":{"row":27,"column":10},"end":{"row":27,"column":11},"action":"insert","lines":["w"],"id":56}],[{"start":{"row":27,"column":11},"end":{"row":27,"column":12},"action":"insert","lines":["a"],"id":57}],[{"start":{"row":27,"column":8},"end":{"row":27,"column":12},"action":"remove","lines":["jawa"],"id":58},{"start":{"row":27,"column":8},"end":{"row":27,"column":33},"action":"insert","lines":["jawabVideoGameNextPlayer1"]}],[{"start":{"row":29,"column":0},"end":{"row":29,"column":30},"action":"remove","lines":["cekKunciBukuDanKataNextPlayer1"],"id":59},{"start":{"row":29,"column":0},"end":{"row":29,"column":28},"action":"insert","lines":["cekKunciVideoGameNextPlayer1"]}],[{"start":{"row":42,"column":0},"end":{"row":47,"column":11},"action":"remove","lines":["    call inputSign","    mov eax,3","    mov ebx,1","    mov ecx,jawaban","    mov edx,2","    int 80h"],"id":60},{"start":{"row":42,"column":0},"end":{"row":63,"column":29},"action":"insert","lines":["jawabVideoGameNextPlayer1:","    ;jawaban?","    call inputSign","    mov eax,3","    mov ebx,1","    mov ecx,jawaban","    mov edx,2","    int 80h","    ","    cmp byte[jawaban],61h","    je cekKunciVideoGameNextPlayer1","    cmp byte[jawaban],62h","    je cekKunciVideoGameNextPlayer1","    cmp byte[jawaban],63h","    je cekKunciVideoGameNextPlayer1","    cmp byte[jawaban],64h","    je cekKunciVideoGameNextPlayer1","    ","    call inputanSalah","    jmp jawabVideoGameNextPlayer1","    ","cekKunciVideoGameNextPlayer1:"]}],[{"start":{"row":42,"column":24},"end":{"row":42,"column":25},"action":"remove","lines":["1"],"id":61}],[{"start":{"row":42,"column":24},"end":{"row":42,"column":25},"action":"insert","lines":["2"],"id":62}],[{"start":{"row":52,"column":34},"end":{"row":52,"column":35},"action":"remove","lines":["1"],"id":63}],[{"start":{"row":52,"column":34},"end":{"row":52,"column":35},"action":"insert","lines":["2"],"id":64}],[{"start":{"row":54,"column":34},"end":{"row":54,"column":35},"action":"remove","lines":["1"],"id":65}],[{"start":{"row":54,"column":34},"end":{"row":54,"column":35},"action":"insert","lines":["2"],"id":66}],[{"start":{"row":56,"column":34},"end":{"row":56,"column":35},"action":"remove","lines":["1"],"id":67}],[{"start":{"row":56,"column":34},"end":{"row":56,"column":35},"action":"insert","lines":["2"],"id":68}],[{"start":{"row":58,"column":34},"end":{"row":58,"column":35},"action":"remove","lines":["1"],"id":69}],[{"start":{"row":58,"column":34},"end":{"row":58,"column":35},"action":"insert","lines":["2"],"id":70}],[{"start":{"row":61,"column":32},"end":{"row":61,"column":33},"action":"remove","lines":["1"],"id":71}],[{"start":{"row":61,"column":32},"end":{"row":61,"column":33},"action":"insert","lines":["2"],"id":72}],[{"start":{"row":63,"column":27},"end":{"row":63,"column":28},"action":"remove","lines":["1"],"id":73}],[{"start":{"row":63,"column":27},"end":{"row":63,"column":28},"action":"insert","lines":["2"],"id":74}],[{"start":{"row":76,"column":0},"end":{"row":81,"column":11},"action":"remove","lines":["    call inputSign","    mov eax,3","    mov ebx,1","    mov ecx,jawaban","    mov edx,2","    int 80h"],"id":75},{"start":{"row":76,"column":0},"end":{"row":97,"column":29},"action":"insert","lines":["jawabVideoGameNextPlayer1:","    ;jawaban?","    call inputSign","    mov eax,3","    mov ebx,1","    mov ecx,jawaban","    mov edx,2","    int 80h","    ","    cmp byte[jawaban],61h","    je cekKunciVideoGameNextPlayer1","    cmp byte[jawaban],62h","    je cekKunciVideoGameNextPlayer1","    cmp byte[jawaban],63h","    je cekKunciVideoGameNextPlayer1","    cmp byte[jawaban],64h","    je cekKunciVideoGameNextPlayer1","    ","    call inputanSalah","    jmp jawabVideoGameNextPlayer1","    ","cekKunciVideoGameNextPlayer1:"]}],[{"start":{"row":76,"column":24},"end":{"row":76,"column":25},"action":"remove","lines":["1"],"id":76}],[{"start":{"row":76,"column":24},"end":{"row":76,"column":25},"action":"insert","lines":["3"],"id":77}],[{"start":{"row":86,"column":34},"end":{"row":86,"column":35},"action":"remove","lines":["1"],"id":78}],[{"start":{"row":86,"column":34},"end":{"row":86,"column":35},"action":"insert","lines":["3"],"id":79}],[{"start":{"row":88,"column":34},"end":{"row":88,"column":35},"action":"remove","lines":["1"],"id":80}],[{"start":{"row":88,"column":34},"end":{"row":88,"column":35},"action":"insert","lines":["3"],"id":81}],[{"start":{"row":90,"column":34},"end":{"row":90,"column":35},"action":"remove","lines":["1"],"id":82}],[{"start":{"row":90,"column":34},"end":{"row":90,"column":35},"action":"insert","lines":["3"],"id":83}],[{"start":{"row":92,"column":34},"end":{"row":92,"column":35},"action":"remove","lines":["1"],"id":84}],[{"start":{"row":92,"column":34},"end":{"row":92,"column":35},"action":"insert","lines":["3"],"id":85}],[{"start":{"row":95,"column":32},"end":{"row":95,"column":33},"action":"remove","lines":["1"],"id":86}],[{"start":{"row":95,"column":32},"end":{"row":95,"column":33},"action":"insert","lines":["3"],"id":87}],[{"start":{"row":97,"column":27},"end":{"row":97,"column":28},"action":"remove","lines":["1"],"id":88}],[{"start":{"row":97,"column":27},"end":{"row":97,"column":28},"action":"insert","lines":["3"],"id":89}],[{"start":{"row":33,"column":23},"end":{"row":34,"column":0},"action":"insert","lines":["",""],"id":90},{"start":{"row":34,"column":0},"end":{"row":34,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":34,"column":4},"end":{"row":34,"column":21},"action":"insert","lines":["call jawabanBenar"],"id":91}],[{"start":{"row":68,"column":23},"end":{"row":69,"column":0},"action":"insert","lines":["",""],"id":92},{"start":{"row":69,"column":0},"end":{"row":69,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":69,"column":4},"end":{"row":69,"column":21},"action":"insert","lines":["call jawabanBenar"],"id":93}],[{"start":{"row":103,"column":23},"end":{"row":104,"column":0},"action":"insert","lines":["",""],"id":94},{"start":{"row":104,"column":0},"end":{"row":104,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":104,"column":4},"end":{"row":104,"column":21},"action":"insert","lines":["call jawabanBenar"],"id":95}]]},"ace":{"folds":[],"scrolltop":1140,"scrollleft":0,"selection":{"start":{"row":104,"column":21},"end":{"row":104,"column":21},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":86,"state":"start","mode":"ace/mode/assembly_x86"}},"timestamp":1450153172202,"hash":"8560b680210c2fa06edbd3fe4db8313c087637f2"}