#!/bin/bash
while [$gsu -eq 0]
 do
 dw_url=$(sed -n $gsu'p' stk.txt)
 wget $dw_url
 let gsu--
 done