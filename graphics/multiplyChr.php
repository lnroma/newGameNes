<?php

for ($i = 2; $i<=16; $i++) {
    copy('1_2_1.chr', '1_2_' . $i . '.chr');
    copy('1_3_1.chr', '1_3_' . $i . '.chr');
    copy('1_4_1.chr', '1_4_' . $i . '.chr');
}