<?php

return [
    '69' => [
        'ADC #$argument',
        2
    ], '65' => [
        'ADC $argument',
        2
    ], '75' => [
        'ADC $argument,X',
        2
    ], '6D' => [
        'ADC $argument',
        3
    ], '7D' => [
        'ADC $argument,X',
        3
    ], '79' => [
        'ADC $argument,Y',
        3
    ], '61' => [
        'ADC ($argument,X)',
        2
    ], '71' => [
        'ADC ($argument),Y',
        2
    ], '29' => [
        'AND #$argument',
        2
    ], '25' => [
        'AND $argument',
        2
    ], '35' => [
        'AND $argument,X',
        2
    ], '2D' => [
        'AND $argument',
        3
    ], '3D' => [
        'AND $argument,X',
        3
    ], '39' => [
        'AND $argument,Y',
        3
    ], '21' => [
        'AND ($argument,X)',
        2
    ], '31' => [
        'AND ($argument),Y',
        2
    ], '0A' => [
        'ASLA',
        1
    ], '06' => [
        'ASL $argument',
        2
    ], '16' => [
        'ASL $argument,X',
        2
    ], '0E' => [
        'ASL $argument',
        3
    ], '1E' => [
        'ASL $argument,X',
        3
    ], '90' => [
        'BCC $argument',
        2
    ], 'B0' => [
        'BCS $argument',
        2
    ], 'F0' => [
        'BEQ $argument',
        2
    ], '24' => [
        'BIT $argument',
        2
    ], '2C' => [
        'BIT $argument',
        3
    ], '30' => [
        'BMI $argument',
        2
    ], 'D0' => [
        'BNE $argument',
        2
    ], '10' => [
        'BPL $argument',
        2
    ], '00' => [
        'BRK',
        1
    ], '50' => [
        'BVC $argument',
        2
    ], '70' => [
        'BVS $argument',
        2
    ], '18' => [
        'CLC',
        1
    ], 'D8' => [
        'CLD',
        1
    ], '58' => [
        'CLI',
        1
    ], 'B8' => [
        'CLV',
        1
    ], 'C9' => [
        'CMP #$argument',
        2
    ], 'C5' => [
        'CMP $argument',
        2
    ], 'D5' => [
        'CMP $argument,X',
        2
    ], 'CD' => [
        'CMP $argument',
        3
    ], 'DD' => [
        'CMP $argument,X',
        3
    ], 'D9' => [
        'CMP $argument,Y',
        3
    ], 'C1' => [
        'CMP ($argument,X)',
        2
    ], 'D1' => [
        'CMP ($argument),Y',
        2
    ], 'E0' => [
        'CPX $argument',
        2
    ], 'E4' => [
        'CPX $argument',
        2
    ], 'EC' => [
        'CPX $argument',
        3
    ], 'C0' => [
        'CPY $argument',
        2
    ], 'C4' => [
        'CPY $argument',
        2
    ], 'CC' => [
        'CPY $argument',
        3
    ], 'C6' => [
        'DEC $argument',
        2
    ], 'D6' => [
        'DEC $argument,X',
        2
    ], 'CE' => [
        'DEC $argument',
        3
    ], 'DE' => [
        'DEC $argument,X',
        3
    ], 'CA' => [
        'DEX',
        1
    ], '88' => [
        'DEY',
        1
    ], '49' => [
        'EOR #$argument',
        2
    ], '45' => [
        'EOR $argument',
        2
    ], '55' => [
        'EOR $argument,X',
        2
    ], '4D' => [
        'EOR $argument',
        3
    ], '5D' => [
        'EOR $argument,X',
        3
    ], '59' => [
        'EOR $argument,Y',
        3
    ], '41' => [
        'EOR ($argument,X)',
        2
    ], '51' => [
        'EOR ($argument),Y',
        2
    ], 'E6' => [
        'INC $argument',
        2
    ], 'F6' => [
        'INC $argument,X',
        2
    ], 'EE' => [
        'INC $argument',
        3
    ], 'FE' => [
        'INC $argument,X',
        3
    ], 'E8' => [
        'INX',
        1
    ], 'C8' => [
        'INY',
        1
    ], '4C' => [
        'JMP $argument',
        3
    ], '6C' => [
        'JMP ($argument)',
        3
    ], '20' => [
        'JSR $argument',
        3
    ], 'A9' => [
        'LDA #$argument',
        2
    ], 'A5' => [
        'LDA $argument',
        2
    ], 'B5' => [
        'LDA $argument,X',
        2
    ], 'AD' => [
        'LDA $argument',
        3
    ], 'BD' => [
        'LDA $argument,X',
        3
    ], 'B9' => [
        'LDA $argument,Y',
        3
    ], 'A1' => [
        'LDA ($argument,X)',
        2
    ], 'B1' => [
        'LDA ($argument),Y',
        2
    ], 'A2' => [
        'LDX #$argument',
        2
    ], 'A6' => [
        'LDX $argument',
        2
    ], 'B6' => [
        'LDX $argument,Y',
        2
    ], 'AE' => [
        'LDX $argument',
        3
    ], 'BE' => [
        'LDX $argument,Y',
        3
    ], 'A0' => [
        'LDY #$argument',
        2
    ], 'A4' => [
        'LDY $argument',
        2
    ], 'B4' => [
        'LDY $argument,X',
        2
    ], 'AC' => [
        'LDY $argument',
        3
    ], 'BC' => [
        'LDY $argument,X',
        3
    ], '4A' => [
        'LSRA',
        1
    ], '46' => [
        'LSR $argument',
        2
    ], '56' => [
        'LSR $argument,X',
        2
    ], '4E' => [
        'LSR $argument',
        3
    ], '5E' => [
        'LSR $argument,X',
        3
    ], 'EA' => [
        'NOP',
        1
    ], '09' => [
        'ORA #$argument',
        2
    ], '05' => [
        'ORA $argument',
        2
    ], '15' => [
        'ORA $argument,X',
        2
    ], '0D' => [
        'ORA $argument',
        3
    ], '1D' => [
        'ORA $argument,X',
        3
    ], '19' => [
        'ORA $argument,Y',
        3
    ], '01' => [
        'ORA ($argument,X)',
        2
    ], '11' => [
        'ORA ($argument),Y',
        2
    ], '48' => [
        'PHA',
        1
    ], '08' => [
        'PHP',
        1
    ], '68' => [
        'PLA',
        1
    ], '28' => [
        'PLP',
        1
    ], '2A' => [
        'ROLA',
        1
    ], '26' => [
        'ROL $argument',
        2
    ], '36' => [
        'ROL $argument,X',
        2
    ], '2E' => [
        'ROL $argument',
        3
    ], '3E' => [
        'ROL $argument,X',
        3
    ], '6A' => [
        'RORA',
        1
    ], '66' => [
        'ROR $argument',
        2
    ], '76' => [
        'ROR $argument,X',
        2
    ], '6E' => [
        'ROR $argument',
        3
    ], '7E' => [
        'ROR $argument,X',
        3
    ], '40' => [
        'RTI',
        1
    ], '60' => [
        'RTS',
        1
    ], 'E9' => [
        'SBC #$argument',
        2
    ], 'E5' => [
        'SBC $argument',
        2
    ], 'F5' => [
        'SBC $argument,X',
        2
    ], 'ED' => [
        'SBC $argument',
        3
    ], 'FD' => [
        'SBC $argument,X',
        3
    ], 'F9' => [
        'SBC $argument,Y',
        3
    ], 'E1' => [
        'SBC ($argument,X)',
        2
    ], 'F1' => [
        'SBC ($argument),Y',
        2
    ], '38' => [
        'SEC',
        1
    ], 'F8' => [
        'SED',
        1
    ], '78' => [
        'SEI',
        1
    ], '85' => [
        'STA $argument',
        2
    ], '95' => [
        'STA $argument,X',
        2
    ], '8D' => [
        'STA $argument',
        3
    ], '9D' => [
        'STA $argument,X',
        3
    ], '99' => [
        'STA $argument,Y',
        3
    ], '81' => [
        'STA ($argument,X)',
        2
    ], '91' => [
        'STA ($argument),Y',
        2
    ], '86' => [
        'STX $argument',
        2
    ], '96' => [
        'STX $argument,Y',
        2
    ], '8E' => [
        'STX $argument',
        3
    ], '84' => [
        'STY $argument',
        2
    ], '94' => [
        'STY $argument,X',
        2
    ], '8C' => [
        'STY $argument',
        3
    ], 'AA' => [
        'TAX',
        1
    ], 'A8' => [
        'TAY',
        1
    ], 'BA' => [
        'TSX',
        1
    ], '8A' => [
        'TXA',
        1
    ], '9A' => [
        'TXS',
        1
    ], '98' => [
        'TYA',
        1
    ],
];