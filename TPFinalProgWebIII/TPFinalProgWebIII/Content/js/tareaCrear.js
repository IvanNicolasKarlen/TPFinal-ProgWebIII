﻿


window.onload =$("input[name='EstimadoHoras']").TouchSpin({
        min: 0,
        max: 100000,
        step: 0.1,
        decimals: 2,
        boostat: 5,
        maxboostedstep: 10,
        postfix: 'Hs.'
    });


