<div id="glowscript" class="glowscript">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" href="https://www.glowscript.org/css/redmond/2.1/jquery-ui.custom.css" rel="stylesheet" />
<link type="text/css" href="https://www.glowscript.org/css/ide.css" rel="stylesheet" />
<script type="text/javascript" src="https://www.glowscript.org/lib/jquery/2.1/jquery.min.js"></script>
<script type="text/javascript" src="https://www.glowscript.org/lib/jquery/2.1/jquery-ui.custom.min.js"></script>
<script type="text/javascript" src="https://www.glowscript.org/package/glow.3.2.min.js"></script>
<script type="text/javascript" src="https://www.glowscript.org/package/RSrun.3.2.min.js"></script>
<script type="text/javascript"><!--//--><![CDATA[//><!--

// START JAVASCRIPT
;(function() {;
var ρσ_modules = {};
var hitlist, Stars;
ρσ_modules.pythonize = {};

(function(){
    function strings() {
        var string_funcs, exclude, name;
        string_funcs = set("capitalize strip lstrip rstrip islower isupper isspace lower upper swapcase center count endswith startswith find rfind index rindex format join ljust rjust partition rpartition replace split rsplit splitlines zfill".split(" "));
        if (!arguments.length) {
            exclude = (function(){
                var s = ρσ_set();
                s.jsset.add("split");
                s.jsset.add("replace");
                return s;
            })();
        } else if (arguments[0]) {
            exclude = Array.prototype.slice.call(arguments);
        } else {
            exclude = null;
        }
        if (exclude) {
            string_funcs = string_funcs.difference(set(exclude));
        }
        var ρσ_Iter0 = string_funcs;
        ρσ_Iter0 = ((typeof ρσ_Iter0[Symbol.iterator] === "function") ? (ρσ_Iter0 instanceof Map ? ρσ_Iter0.keys() : ρσ_Iter0) : Object.keys(ρσ_Iter0));
        for (var ρσ_Index0 of ρσ_Iter0) {
            name = ρσ_Index0;
            (ρσ_expr_temp = String.prototype)[(typeof name === "number" && name < 0) ? ρσ_expr_temp.length + name : name] = (ρσ_expr_temp = ρσ_str.prototype)[(typeof name === "number" && name < 0) ? ρσ_expr_temp.length + name : name];
        }
    };
    if (!strings.__module__) Object.defineProperties(strings, {
        __module__ : {value: "pythonize"}
    });

    ρσ_modules.pythonize.strings = strings;
})();
async function __main__() {
"use strict";
    var display = canvas;
    var scene = canvas();

    var version, print, arange, __name__, type, ρσ_ls, Nstars, G, Msun, Rsun, L, vsun, xaxis, yaxis, zaxis, Stars, star_colors, psum, star, R, i, dt, hitlist, hit, s1, s2, mass, momentum, pos;
    version = ρσ_list_decorate([ "3.2", "glowscript" ]);
    Array.prototype['+'] = function(r) {return this.concat(r)}
    Array.prototype['*'] = function(r) {return __array_times_number(this, r)}
    window.__GSlang = "vpython";
    print = GSprint;
    arange = range;
    __name__ = "__main__";
    type = pytype;
    var strings = ρσ_modules.pythonize.strings;

    strings();
    "7";
    scene.width = scene.height = 600;
    "10";
    scene.title = "Stars interacting gravitationally";
    "18";
    scene.caption = "To rotate \"camera\", drag with right button or Ctrl-drag.\nTo zoom, drag with middle button or Alt/Option depressed, or use scroll wheel.\n  On a two-button mouse, middle is left + right.\nTo pan left/right and up/down, Shift-drag.\nTouch screen: pinch/extend to zoom, swipe or two-finger rotate.\n\nReplot the web page to restart with different (random) initial conditions.";
    "20";
    Nstars = 20;
    "22";
    G = 6.7e-11;
    "25";
    Msun = 2e30;
    "26";
    Rsun = 2e9;
    "27";
    L = 4e10;
    "28";
    vsun = .8["*"](sqrt(G["*"](Msun)["/"](Rsun)));
    "30";
    scene.range = 2["*"](L);
    "31";
    scene.forward = vec(1["-u"]()["*"](1), 1["-u"]()["*"](1), 1["-u"]()["*"](1));
    "33";
    xaxis = ρσ_interpolate_kwargs.call(this, curve, [ρσ_desugar_kwargs({color: color.gray(.5), radius: 3e8})]);
    "34";
    xaxis.append(vec(0, 0, 0));
    "35";
    xaxis.append(vec(L, 0, 0));
    "36";
    yaxis = ρσ_interpolate_kwargs.call(this, curve, [ρσ_desugar_kwargs({color: color.gray(.5), radius: 3e8})]);
    "37";
    yaxis.append(vec(0, 0, 0));
    "38";
    yaxis.append(vec(0, L, 0));
    "39";
    zaxis = ρσ_interpolate_kwargs.call(this, curve, [ρσ_desugar_kwargs({color: color.gray(.5), radius: 3e8})]);
    "40";
    zaxis.append(vec(0, 0, 0));
    "41";
    zaxis.append(vec(0, 0, L));
    "43";
    Stars = ρσ_list_decorate([]);
    "44";
    star_colors = ρσ_list_decorate([ color.red, color.green, color.blue, color.yellow, color.cyan, color.magenta ]);
    "47";
    psum = vec(0, 0, 0);
    "48";
    for (var ρσ_Index1 = 0; ρσ_Index1["<"](Nstars); ρσ_Index1++) {
        i = ρσ_Index1;
        "49";
        star = ρσ_interpolate_kwargs.call(this, sphere, [ρσ_desugar_kwargs({pos: L["*"](vec.random()), make_trail: true, retain: 150, trail_radius: 2e8})]);
        "50";
        R = Rsun["/"](2)["+"](Rsun["*"](random()));
        "51";
        star.radius = R;
        "52";
        star.mass = Msun["*"](Math.pow((R["/"](Rsun)), 3));
        "53";
        star.momentum = vec.random()["*"](vsun)["*"](star.mass);
        "54";
        star.color = star.trail_color = ρσ_getitem(star_colors, i["%"](6));
        "55";
        Stars.append(star);
        "56";
        psum = psum["+"](star.momentum);
    }
    "59";
    for (var ρσ_Index2 = 0; ρσ_Index2["<"](Nstars); ρσ_Index2++) {
        i = ρσ_Index2;
        "60";
        ρσ_getitem(Stars, i).momentum = ρσ_getitem(Stars, i).momentum["-"](1["*"](psum)["/"](Nstars));
    }
    "62";
    dt = 1e3;
    "63";
    hitlist = ρσ_list_decorate([]);
    "65";
    async function computeForces() {
        var ρσ_ls, N, si, F, pos1, m1, radius, sj, r, rmag2, j, i;
        "66";
        "67";
        hitlist = ρσ_list_decorate([]);
        "68";
        N = len(Stars);
        "69";
        for (var ρσ_Index3 = 0; ρσ_Index3["<"](N); ρσ_Index3++) {
            i = ρσ_Index3;
            "70";
            si = ρσ_getitem(Stars, i);
            "71";
            if (si === null) {
                continue;
            }
            "72";
            F = vec(0, 0, 0);
            "73";
            pos1 = si.pos;
            "74";
            m1 = si.mass;
            "75";
            radius = si.radius;
            "76";
            for (var ρσ_Index4 = 0; ρσ_Index4["<"](N); ρσ_Index4++) {
                j = ρσ_Index4;
                "77";
                if ((i === j || typeof i === "object" && ρσ_equals(i, j))) {
                    continue;
                }
                "78";
                sj = ρσ_getitem(Stars, j);
                "79";
                if (sj === null) {
                    continue;
                }
                "80";
                r = sj.pos["-"](1["*"](pos1));
                "81";
                rmag2 = mag2(r);
                "82";
                if (rmag2["<="](Math.pow((radius["+"](sj.radius)), 2))) {
                    hitlist.append(ρσ_list_decorate([ i, j ]));
                }
                "83";
                F = F["+"](G["*"](m1)["*"](sj.mass)["/"](Math.pow(rmag2, 1.5))["*"](r));
            }
            "84";
            si.momentum = si.momentum["+"](F["*"](dt));
        }
    };
    if (!computeForces.__module__) Object.defineProperties(computeForces, {
        __module__ : {value: null}
    });

    "86";
    while (true) {
        "87";
        (await rate(100));
        "90";
        (await computeForces());
        "93";
        var ρσ_Iter5 = Stars;
        ρσ_Iter5 = ((typeof ρσ_Iter5[Symbol.iterator] === "function") ? (ρσ_Iter5 instanceof Map ? ρσ_Iter5.keys() : ρσ_Iter5) : Object.keys(ρσ_Iter5));
        for (var ρσ_Index5 of ρσ_Iter5) {
            star = ρσ_Index5;
            "94";
            if (star === null) {
                continue;
            }
            "95";
            star.pos = star.pos["+"](star.momentum["*"](dt["/"](star.mass)));
        }
        "98";
        hit = len(hitlist)["-"](1["*"](1));
        "99";
        while (hit[">"](0)) {
            "100";
            s1 = ρσ_getitem(Stars, ρσ_getitem(ρσ_getitem(hitlist, hit), 0));
            "101";
            s2 = ρσ_getitem(Stars, ρσ_getitem(ρσ_getitem(hitlist, hit), 1));
            "102";
            if (s1 === null || s2 === null) {
                continue;
            }
            "104";
            mass = s1.mass["+"](s2.mass);
            "105";
            momentum = s1.momentum["+"](s2.momentum);
            "106";
            pos = s1.mass["*"](s1.pos)["+"](s2.mass["*"](s2.pos))["/"](mass);
            "107";
            s1.color = s1.trail_color = s1.mass["*"](s1.color)["+"](s2.mass["*"](s2.color))["/"](mass);
            "108";
            R = Rsun["*"](Math.pow((mass["/"](Msun)), (1["/"](3))));
            "110";
            s1.clear_trail();
            "111";
            s2.clear_trail();
            "112";
            s2.visible = false;
            "114";
            s1.mass = mass;
            "115";
            s1.momentum = momentum;
            "116";
            s1.pos = pos;
            "117";
            s1.radius = R;
            "118";
            ρσ_setitem(Stars, ρσ_getitem(ρσ_getitem(hitlist, hit), 1), null);
            "119";
            hit=hit["-"](1);
        }
    }
};
if (!__main__.__module__) Object.defineProperties(__main__, {
    __module__ : {value: null}
});

;$(function(){ window.__context = { glowscript_container: $("#glowscript").removeAttr("id") }; __main__() })})()
// END JAVASCRIPT

//--><!]]></script>
</div>