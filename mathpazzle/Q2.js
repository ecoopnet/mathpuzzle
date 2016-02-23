#!/usr/local/bin/node
/**
 * Created by mi on 2016/02/24.
 */

    // evalしたかったのでJSで。
var
    NON = "",
    PLS = "+",
    MNS = "-",
    MUL = "*",
    DIV = "/";

var exprs = [
    NON, PLS, MNS, MUL, DIV
    ];

function reverseString(s){
    return s.split("").reverse().join("")
}

for(var i1 = 1;i1<=9;i1++) {
    for (var i2 = 0; i2 <= 9; i2++) {
        for (var i3 = 0; i3 <= 9; i3++) {
            for (var i4 = 0; i4 <= 9; i4++) {
                for (var x1 = 0; x1 < exprs.length; x1++) {
                    for (var x2 = 0; x2 < exprs.length; x2++) {
                        for (var x3 = 0; x3 < exprs.length; x3++) {
                            if(x1 == 0 && x2 == 0 && x3 == 0){
                                // all 空は式じゃないのでだめ。
                                continue;
                            }
                            var src = ""+i1+i2+i3+i4;

                            var expr = i1 + exprs[x1] + i2 + exprs[x2] + i3 + exprs[x3] + i4;
                            var v = eval(expr);
                            if ((""+v).length != src.length){
                                // 桁違いはだめ？ 8600 -> 0068
                                continue;
                            }
                            if(reverseString(src) == v){
                                console.log(src+": " + expr + " = " + v);
                            }
                        }
                    }
                }
            }
        }
    }
}
