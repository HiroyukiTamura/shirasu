(window.webpackJsonp = window.webpackJsonp || []).push([[30], {
    1502: function(e, a, t) {
        "use strict";
        var n = t(222)
            , i = t(1170);
        n({
            target: "String",
            proto: !0,
            forced: t(1171)("small")
        }, {
            small: function() {
                return i(this, "small", "", "")
            }
        })
    },
    2132: function(e, a, t) {
        "use strict";
        e.exports = function(e, a, t, n, i, r, o, l) {
            if (!e) {
                var s;
                if (void 0 === a)
                    s = new Error("Minified exception occurred; use the non-minified dev environment for the full error message and additional helpful warnings.");
                else {
                    var c = [t, n, i, r, o, l]
                        , m = 0;
                    (s = new Error(a.replace(/%s/g, (function() {
                            return c[m++]
                        }
                    )))).name = "Invariant Violation"
                }
                throw s.framesToPop = 1,
                    s
            }
        }
    },
    2133: function(e, a, t) {
        var n = t(2134)
            , i = function(e) {
            var a = ""
                , t = Object.keys(e);
            return t.forEach((function(i, r) {
                    var o = e[i];
                    (function(e) {
                            return /[height|width]$/.test(e)
                        }
                    )(i = n(i)) && "number" == typeof o && (o += "px"),
                        a += !0 === o ? i : !1 === o ? "not " + i : "(" + i + ": " + o + ")",
                    r < t.length - 1 && (a += " and ")
                }
            )),
                a
        };
        e.exports = function(e) {
            var a = "";
            return "string" == typeof e ? e : e instanceof Array ? (e.forEach((function(t, n) {
                    a += i(t),
                    n < e.length - 1 && (a += ", ")
                }
            )),
                a) : i(e)
        }
    },
    2134: function(e, a) {
        e.exports = function(e) {
            return e.replace(/[A-Z]/g, (function(e) {
                    return "-" + e.toLowerCase()
                }
            )).toLowerCase()
        }
    },
    2135: function(e, a, t) {
        "use strict";
        var n = t(2)
            , i = t.n(n)()((function(e) {
                return e[1]
            }
        ));
        i.push([e.i, "@media (max-width:560px){.e5t1sZpXk1xjTRjdcRoBX{margin:0 16px}}.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0{width:100%;margin:12px 0;border-collapse:separate;border-spacing:3px}.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0>thead>tr>th{padding:9px 0 9px 16px;color:var(--colorgray4);font-size:var(--fontsizeSmall);font-weight:400}.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0>tbody>tr>td,.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0>thead>tr>th{border-bottom:1px solid var(--colorgray2);text-align:left}.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0>tbody>tr>td{padding:16px 0 16px 16px}.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0 ._3eAD52NoGK6-MwcYkxBWYg{width:18%}.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0 ._333TLdPNM6AUhLX8kh2Bc3{width:25%}.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0 ._1hblkFELdGpOqLW9w-10HS{background-color:#f5f8ff}.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0 ._3OJi7V8jYjPLTQSAExDak9{background-color:var(--colorgray1)}@media (max-width:560px){.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0 ._3hyPNXcB7-d8NJacSEaf6E{display:none}}.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0 ._3x25lzv-Go_IXQioPH6yyU{display:none}@media (max-width:560px){.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0 ._3x25lzv-Go_IXQioPH6yyU{display:table-row;text-align:center}.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0 ._3x25lzv-Go_IXQioPH6yyU>td{border-bottom:1px solid var(--colorgray2)}}.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0 ._32EK4kNYcREszZ9hMQnQLS{width:auto;height:auto;min-width:100px;padding:8px 16px}.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0 ._1nDXEmPEgOXky3qj5kmxEd{width:50vw}@media (max-width:560px){.e5t1sZpXk1xjTRjdcRoBX{margin-left:16px;margin-right:16px}.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0>thead>tr>th{padding:10px 2px}.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0>tbody>tr>td,.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0>thead>tr>th{font-size:var(--fontsizeXXSmall);text-align:center}.e5t1sZpXk1xjTRjdcRoBX ._117pi2sbAueiRltgWjEvz0>tbody>tr>td{padding:16px 2px;border-bottom:none}}", ""]),
            i.locals = {
                root: "e5t1sZpXk1xjTRjdcRoBX",
                table: "_117pi2sbAueiRltgWjEvz0",
                ArchiveTypeCol: "_3eAD52NoGK6-MwcYkxBWYg",
                DurationCol: "_333TLdPNM6AUhLX8kh2Bc3",
                subscriberCol: "_1hblkFELdGpOqLW9w-10HS",
                guestCol: "_3OJi7V8jYjPLTQSAExDak9",
                pcPurchaseCol: "_3hyPNXcB7-d8NJacSEaf6E",
                spPurchaseRow: "_3x25lzv-Go_IXQioPH6yyU",
                purchaseButton: "_32EK4kNYcREszZ9hMQnQLS",
                spPurchaseButton: "_1nDXEmPEgOXky3qj5kmxEd"
            },
            a.a = i
    },
    2136: function(e, a, t) {
        "use strict";
        var n = t(2)
            , i = t.n(n)()((function(e) {
                return e[1]
            }
        ));
        i.push([e.i, '._3lxskGkvdv3O85dBCIdVyS{border:1px solid var(--colorgray2);background:var(--colorWhite);display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column}._3lxskGkvdv3O85dBCIdVyS .d5NqZX1eetGyqxXmN3yzG{display:block;padding:8px 0 16px;text-align:center;border-bottom:1px solid var(--colorgray2);color:var(--colorFont);font-size:var(--fontsizeXXSmall);text-decoration:none;cursor:pointer}._3lxskGkvdv3O85dBCIdVyS .d5NqZX1eetGyqxXmN3yzG:after,._3lxskGkvdv3O85dBCIdVyS .d5NqZX1eetGyqxXmN3yzG:before{content:"\\f086";width:12px;height:12px;margin:0 4px 0 0;font-family:Font Awesome\\ 5 Free;font-size:var(--fontsizeXXSmall);font-weight:700;color:var(--colorgray4)}._3lxskGkvdv3O85dBCIdVyS .d5NqZX1eetGyqxXmN3yzG:after{content:"\\f054";margin:0 0 0 4px;color:var(--colorFont)}._3lxskGkvdv3O85dBCIdVyS ._1xi71eD0uyRyes9QApvYgh{-webkit-box-flex:1;-ms-flex:1 1 auto;flex:1 1 auto}._3lxskGkvdv3O85dBCIdVyS ._2nNaNucdcUy9DPpfep8Wkm{padding:16px 12px 0;margin:0 0 8px}._3lxskGkvdv3O85dBCIdVyS ._2nNaNucdcUy9DPpfep8Wkm input[type=text]{width:250px}', ""]),
            i.locals = {
                PCCommentsContainer: "_3lxskGkvdv3O85dBCIdVyS",
                CloseCommentsButton: "d5NqZX1eetGyqxXmN3yzG",
                commentList: "_1xi71eD0uyRyes9QApvYgh",
                commentInput: "_2nNaNucdcUy9DPpfep8Wkm"
            },
            a.a = i
    },
    2137: function(e, a, t) {
        "use strict";
        var n = t(2)
            , i = t.n(n)
            , r = t(144)
            , o = t.n(r)
            , l = t(2138)
            , s = i()((function(e) {
                return e[1]
            }
        ))
            , c = o()(l.a);
        s.push([e.i, "._22Y7N936XcPnqThm0DKqEv{position:relative}._22Y7N936XcPnqThm0DKqEv ._2DS8OHRa-1HwSLuP-GVcp4{position:absolute;left:0;top:0;right:0;bottom:0}._22Y7N936XcPnqThm0DKqEv ._1mREFyiBASNdfbMuwOtoZ-{width:100%;height:100%}._22Y7N936XcPnqThm0DKqEv ._2tABRNpqo-jsWaPFd7Ujef{top:0;position:absolute;width:100%;height:100%}._22Y7N936XcPnqThm0DKqEv .rpyrcXHVqNMlrmNZEcqeh{top:0;position:absolute}._2DS8OHRa-1HwSLuP-GVcp4{--transparentImage:url(" + c + ');position:relative;background:-webkit-gradient(linear,left top,left bottom,from(rgba(0,0,0,.53333)),to(rgba(0,0,0,.53333))),var(--transparentImage);background:linear-gradient(rgba(0,0,0,.53333),rgba(0,0,0,.53333)),var(--transparentImage);background-position:50%;background-size:contain;background-repeat:no-repeat;font-size:1rem;line-height:1.6875;text-align:center}._2tABRNpqo-jsWaPFd7Ujef{color:#fff;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}._2tABRNpqo-jsWaPFd7Ujef,._2tABRNpqo-jsWaPFd7Ujef .QS4SBffFNIpXqRlKIet4b{display:-webkit-box;display:-ms-flexbox;display:flex}._2tABRNpqo-jsWaPFd7Ujef .QS4SBffFNIpXqRlKIet4b{margin:32px auto 16px}@media (max-width:560px){._2tABRNpqo-jsWaPFd7Ujef .QS4SBffFNIpXqRlKIet4b{margin:10px auto 16px}}._2tABRNpqo-jsWaPFd7Ujef .QS4SBffFNIpXqRlKIet4b button{margin:0 16px;position:relative;width:unset;height:88px;padding:20px 35px 0;line-height:1.5em}@media (max-width:560px){._2tABRNpqo-jsWaPFd7Ujef .QS4SBffFNIpXqRlKIet4b button{height:56px;padding:15px 35px 20px;font-size:var(--fontsizeXXXSmall)}}._2tABRNpqo-jsWaPFd7Ujef .QS4SBffFNIpXqRlKIet4b button:before{content:"\\f157";position:absolute;top:12px;left:calc(50% - 6px);width:12px;height:15px;font-family:Font Awesome\\ 5 Free;font-weight:700;font-size:var(--fontsizeNormal);color:var(--colorWhite);line-height:1em}@media (max-width:560px){._2tABRNpqo-jsWaPFd7Ujef .QS4SBffFNIpXqRlKIet4b button:before{top:calc(50% - 5px);left:8px;width:7px;height:10px;font-size:var(--fontsizeXXXSmall)}}._2tABRNpqo-jsWaPFd7Ujef ._1IKQ7HygQ-0K7-XGdBSgJs{display:block;position:relative;margin:16px auto 0;width:240px;height:40px;background:#fca929;line-height:1em}._2tABRNpqo-jsWaPFd7Ujef ._1IKQ7HygQ-0K7-XGdBSgJs:before{content:"\\f04b";position:absolute;top:calc(50% - 5px);left:38px;width:9px;height:10px;font-family:Font Awesome\\ 5 Free;font-weight:700;font-size:var(--fontsizeXXXSmall);color:var(--colorWhite);line-height:1em}@media (max-width:560px){._2tABRNpqo-jsWaPFd7Ujef ._1IKQ7HygQ-0K7-XGdBSgJs{width:200px;height:32px;font-size:var(--fontsizeXXXSmall)}._2tABRNpqo-jsWaPFd7Ujef ._1IKQ7HygQ-0K7-XGdBSgJs:before{left:20px}}._2tABRNpqo-jsWaPFd7Ujef ._1IKQ7HygQ-0K7-XGdBSgJs ._3aLrzKyoUXQQc5lRSdvI4o{margin-top:4px;font-size:var(--fontsizeXXXSmall)}._2y4m-NZOjoT65EEUJSNJeW{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;color:#fff;z-index:2;position:absolute;left:0;top:0;width:100%;height:100%}.rpyrcXHVqNMlrmNZEcqeh ._3LM6RbVOgYi0oTmkrP2e0w{margin:16px 0;background:hsla(0,0%,100%,.8)}.rpyrcXHVqNMlrmNZEcqeh ._3LM6RbVOgYi0oTmkrP2e0w>span{display:inline-block;width:16em;font-family:HiraKakuProN-W3;font-size:var(--fontsizeXXSmall);font-weight:400;line-height:1.67;color:var(--colorgray5);margin:0 40px 0 8px}.rpyrcXHVqNMlrmNZEcqeh ._3LM6RbVOgYi0oTmkrP2e0w>button{width:80px;margin:8px}@media (max-width:560px){.rpyrcXHVqNMlrmNZEcqeh ._3LM6RbVOgYi0oTmkrP2e0w>button{width:auto;margin:4px 8px;height:auto;padding:4px 8px}}._2V6ZD5KXjxgDYYu3EfL9c1{text-align:center;margin-top:32px}@media (max-width:560px){._2V6ZD5KXjxgDYYu3EfL9c1{margin-top:10px;font-size:var(--fontsizeXXSmall)}}._17ciupBnOsoIk6BbgBuTA6{position:absolute;top:0;left:0;width:100%;z-index:10}._17ciupBnOsoIk6BbgBuTA6 ._3tUAPfisMts4n0B8T3FHWU{text-align:right}._17ciupBnOsoIk6BbgBuTA6 ._3tUAPfisMts4n0B8T3FHWU i{display:inline-block;margin:8px;width:40px;height:40px;opacity:.8;background-color:#fff;line-height:40px;text-align:center;z-index:3;color:#999;font-size:20px}', ""]),
            s.locals = {
                PlayerContainer: "_22Y7N936XcPnqThm0DKqEv",
                ProgramThumbnail: "_2DS8OHRa-1HwSLuP-GVcp4",
                VideoPlayer: "_1mREFyiBASNdfbMuwOtoZ-",
                SuggestPlans: "_2tABRNpqo-jsWaPFd7Ujef",
                SuggestPlansOverlay: "rpyrcXHVqNMlrmNZEcqeh",
                SuggestButtons: "QS4SBffFNIpXqRlKIet4b",
                SuggestPlayPreview: "_1IKQ7HygQ-0K7-XGdBSgJs",
                note: "_3aLrzKyoUXQQc5lRSdvI4o",
                MessageOverlay: "_2y4m-NZOjoT65EEUJSNJeW",
                SuggestPlansOverlayPlan: "_3LM6RbVOgYi0oTmkrP2e0w",
                previewExistMessage: "_2V6ZD5KXjxgDYYu3EfL9c1",
                OperatorCommentOverlay: "_17ciupBnOsoIk6BbgBuTA6",
                ToggleCommentButtonContainer: "_3tUAPfisMts4n0B8T3FHWU"
            },
            a.a = s
    },
    2138: function(e, a, t) {
        "use strict";
        a.a = "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
    },
    2139: function(e, a, t) {
        "use strict";
        var n = t(2)
            , i = t.n(n)()((function(e) {
                return e[1]
            }
        ));
        i.push([e.i, "._23JitAfxOrFpnD_mchDJ3-{text-align:center;font-size:1rem;line-height:1.5;background:var(--colorgray2);padding:10px 16px;word-break:keep-all}._23JitAfxOrFpnD_mchDJ3- b{font-size:1.0625rem}._23JitAfxOrFpnD_mchDJ3-._1qsDV9dIP7ntS1lHz9HM17{background:var(--colorRed);color:var(--colorWhite)}", ""]),
            i.locals = {
                ProgramNotice: "_23JitAfxOrFpnD_mchDJ3-",
                red: "_1qsDV9dIP7ntS1lHz9HM17"
            },
            a.a = i
    },
    2140: function(e, a, t) {
        "use strict";
        var n = t(2)
            , i = t.n(n)
            , r = t(135)
            , o = i()((function(e) {
                return e[1]
            }
        ));
        o.i(r.a, "", !0),
            o.push([e.i, '._27trWLEMCtE0PKbhjwTx9J>aside,._27trWLEMCtE0PKbhjwTx9J>main{padding:32px 40px}._27trWLEMCtE0PKbhjwTx9J>aside>div,._27trWLEMCtE0PKbhjwTx9J>main>div{display:-ms-grid;display:grid;grid-column-gap:24px;grid-row-gap:24px;-ms-grid-columns:auto 384px;grid-template-columns:auto 384px}._27trWLEMCtE0PKbhjwTx9J>main{background:var(--colorBluePale);margin-top:-100px;padding-top:120px}._27trWLEMCtE0PKbhjwTx9J>main ._28kXeHetO9z6pL6m3ge5FR{grid-template-areas:"player comments";-ms-grid-rows:calc(56.25vw - 274.5px);grid-template-rows:calc(56.25vw - 274.5px)}._27trWLEMCtE0PKbhjwTx9J>main .TE1St4DuYuZD3PWQvRXvN{-ms-grid-row:1;-ms-grid-column:1;grid-area:player;background-color:#000;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}._27trWLEMCtE0PKbhjwTx9J>main ._3zOzH65dF7zWn8wimmWSm4{-ms-grid-row:1;-ms-grid-column:2;grid-area:comments;border:1px solid var(--colorgray2);background:var(--colorWhite)}._27trWLEMCtE0PKbhjwTx9J>aside>div{grid-template-areas:"title handouts"}._27trWLEMCtE0PKbhjwTx9J>aside .CJZwY69IB4avozzm05xun{-ms-grid-row:1;-ms-grid-column:1;grid-area:title;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column}._27trWLEMCtE0PKbhjwTx9J>aside .CJZwY69IB4avozzm05xun>._1i0_TNaap3gQsUkUMEohcj{margin-bottom:16px}._27trWLEMCtE0PKbhjwTx9J>aside .CJZwY69IB4avozzm05xun>._17wD23RL9waVjbj2AL5iq_{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center}._27trWLEMCtE0PKbhjwTx9J>aside .CJZwY69IB4avozzm05xun>._17wD23RL9waVjbj2AL5iq_>._1Ey7XwgRr5TVS7wdpYIevT{margin-left:16px;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column}._27trWLEMCtE0PKbhjwTx9J>aside .koZC_CiDMGYimVmQZgYnj{-ms-grid-row:1;-ms-grid-column:2;grid-area:handouts}._27trWLEMCtE0PKbhjwTx9J>aside .koZC_CiDMGYimVmQZgYnj ._37WNJHoEhzoUZEuL-YudvF{margin:0 0 16px}._27trWLEMCtE0PKbhjwTx9J>aside .koZC_CiDMGYimVmQZgYnj .zCkaiTj75_dx0wzP21u0b li{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;margin:0 0 24px}._27trWLEMCtE0PKbhjwTx9J>aside .koZC_CiDMGYimVmQZgYnj .zCkaiTj75_dx0wzP21u0b li:last-child{margin:0}._27trWLEMCtE0PKbhjwTx9J>aside .koZC_CiDMGYimVmQZgYnj .zCkaiTj75_dx0wzP21u0b li ._9nHuiWMsYz8XEtH3u0ceN{margin:0 16px 0 0;-webkit-box-flex:0;-ms-flex:0 0 144px;flex:0 0 144px}._27trWLEMCtE0PKbhjwTx9J>aside .koZC_CiDMGYimVmQZgYnj .zCkaiTj75_dx0wzP21u0b li ._2_VWPfLiIaPEPLcISrrjbk{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column}@media (max-width:960px){._27trWLEMCtE0PKbhjwTx9J>aside,._27trWLEMCtE0PKbhjwTx9J>main{padding-left:24px;padding-right:24px}._27trWLEMCtE0PKbhjwTx9J>main ._28kXeHetO9z6pL6m3ge5FR{grid-row-gap:16px;-ms-grid-columns:auto;grid-template-columns:auto;-ms-grid-rows:calc(56.25vw - 27px) 16px 432px;grid-template-rows:calc(56.25vw - 27px) 432px;grid-template-areas:"player" "comments"}._27trWLEMCtE0PKbhjwTx9J>aside>div{-ms-grid-columns:auto 272px;grid-template-columns:auto 272px}._27trWLEMCtE0PKbhjwTx9J>main .TE1St4DuYuZD3PWQvRXvN{-ms-grid-row:1;-ms-grid-column:1}._27trWLEMCtE0PKbhjwTx9J>main ._3zOzH65dF7zWn8wimmWSm4{-ms-grid-row:3;-ms-grid-column:1}}._2VofKMMr6jQlThwsgneSGA ._16UgRMBnw_mw0YwgwCVrlo{margin:14px 16px 8px}._2VofKMMr6jQlThwsgneSGA .TE1St4DuYuZD3PWQvRXvN{background-color:#000;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;min-height:56.25vw;position:sticky;top:64px;z-index:var(--zIndexStickyPageComponent)}._2VofKMMr6jQlThwsgneSGA ._27ik4ZpSrfp2aSafoW_UTi{position:relative;display:-webkit-box;display:-ms-flexbox;display:flex;height:32px;padding:0 30px 0 37px;line-height:32px;border-bottom:1px solid var(--colorgray2)}._2VofKMMr6jQlThwsgneSGA ._27ik4ZpSrfp2aSafoW_UTi:before{top:0;left:12px;content:"\\f086";width:12px;height:12px;font-size:var(--fontsizeXXSmall)}._2VofKMMr6jQlThwsgneSGA ._27ik4ZpSrfp2aSafoW_UTi:after,._2VofKMMr6jQlThwsgneSGA ._27ik4ZpSrfp2aSafoW_UTi:before{position:absolute;font-family:Font Awesome\\ 5 Free;font-weight:700;color:var(--colorgray4)}._2VofKMMr6jQlThwsgneSGA ._27ik4ZpSrfp2aSafoW_UTi:after{right:16px;content:"\\f078";width:16px;height:16px;font-size:var(--fontsizeNormal)}._2VofKMMr6jQlThwsgneSGA ._28ZlIPhUi8F_gqXLumhuOl{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;padding:10px 0}._2VofKMMr6jQlThwsgneSGA ._28ZlIPhUi8F_gqXLumhuOl>div{margin:0 8px;display:block;-webkit-box-align:center;-ms-flex-align:center;align-items:center;width:74px;height:48px;text-align:center;padding-top:4px}._2VofKMMr6jQlThwsgneSGA .CJZwY69IB4avozzm05xun{-ms-grid-row:1;-ms-grid-column:1;margin:16px;height:calc(100vh - 128px - 56.25vw);grid-area:title;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column}._2VofKMMr6jQlThwsgneSGA .CJZwY69IB4avozzm05xun>._1i0_TNaap3gQsUkUMEohcj{margin-bottom:16px}._2VofKMMr6jQlThwsgneSGA .CJZwY69IB4avozzm05xun>._17wD23RL9waVjbj2AL5iq_{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center}._2VofKMMr6jQlThwsgneSGA .CJZwY69IB4avozzm05xun>._17wD23RL9waVjbj2AL5iq_>._1Ey7XwgRr5TVS7wdpYIevT{margin-left:16px;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column}._2VofKMMr6jQlThwsgneSGA .koZC_CiDMGYimVmQZgYnj{margin:0 16px;padding-bottom:24px}._2VofKMMr6jQlThwsgneSGA .koZC_CiDMGYimVmQZgYnj ._37WNJHoEhzoUZEuL-YudvF{margin:16px 0}._2VofKMMr6jQlThwsgneSGA .FmAFDbBIWKEoL9Vx6Xsp7{margin:0 16px}._2VofKMMr6jQlThwsgneSGA .FmAFDbBIWKEoL9Vx6Xsp7 ._37WNJHoEhzoUZEuL-YudvF{margin:16px 0}body.isLegacyMobileSafari ._2VofKMMr6jQlThwsgneSGA .TE1St4DuYuZD3PWQvRXvN{margin-top:8px;position:relative;top:auto}.n5Fl2szHFXZsRN9mF2Eda{top:unset}', ""]),
            o.locals = {
                PCProgramPage: "_27trWLEMCtE0PKbhjwTx9J",
                PlayerContainer: "_28kXeHetO9z6pL6m3ge5FR",
                Player: "TE1St4DuYuZD3PWQvRXvN",
                Comments: "_3zOzH65dF7zWn8wimmWSm4",
                TitleAndDetail: "CJZwY69IB4avozzm05xun",
                title: "_1i0_TNaap3gQsUkUMEohcj",
                detail: "_17wD23RL9waVjbj2AL5iq_",
                channelName: "_1Ey7XwgRr5TVS7wdpYIevT",
                Handouts: "koZC_CiDMGYimVmQZgYnj",
                heading: "_37WNJHoEhzoUZEuL-YudvF",
                HandoutList: "zCkaiTj75_dx0wzP21u0b",
                handoutThumbnail: "_9nHuiWMsYz8XEtH3u0ceN",
                handoutDetail: "_2_VWPfLiIaPEPLcISrrjbk",
                SPProgramPage: "_2VofKMMr6jQlThwsgneSGA",
                Notices: "_16UgRMBnw_mw0YwgwCVrlo",
                SPOnelineComment: "_27ik4ZpSrfp2aSafoW_UTi",
                SPProgramTabHeader: "_28ZlIPhUi8F_gqXLumhuOl",
                Recommends: "FmAFDbBIWKEoL9Vx6Xsp7",
                BottomFixedModalContent: "n5Fl2szHFXZsRN9mF2Eda " + r.a.locals.content
            },
            a.a = o
    },
    2147: function(e, a, t) {
        "use strict";
        var n = t(2)
            , i = t.n(n)()((function(e) {
                return e[1]
            }
        ));
        i.push([e.i, '._2yPr7YcNcWZ-h4Ubo7XKEc:after{content:"";clear:both;display:block}._2yPr7YcNcWZ-h4Ubo7XKEc .BCy9X9avpENk62ytAP_tT{height:81px;width:144px;float:left}@media (max-width:560px){._2yPr7YcNcWZ-h4Ubo7XKEc .BCy9X9avpENk62ytAP_tT{height:40.5px;width:72px}}._2yPr7YcNcWZ-h4Ubo7XKEc>h4{color:var(--colorFont);font-size:var(--fontsizeNormal);font-weight:700;margin:0 0 0 160px}@media (max-width:560px){._2yPr7YcNcWZ-h4Ubo7XKEc>h4{font-size:var(--fontsizeSmall);margin-left:88px}}._2yPr7YcNcWZ-h4Ubo7XKEc>p{margin:4px 0 0 160px}@media (max-width:560px){._2yPr7YcNcWZ-h4Ubo7XKEc>p{font-size:var(--fontsizeXSmall);margin-left:88px}}', ""]),
            i.locals = {
                ThumbnailWithTitle: "_2yPr7YcNcWZ-h4Ubo7XKEc",
                Thumbnail: "BCy9X9avpENk62ytAP_tT"
            },
            a.a = i
    },
    2148: function(e, a, t) {
        "use strict";
        var n = t(2)
            , i = t.n(n)()((function(e) {
                return e[1]
            }
        ));
        i.push([e.i, "._3TTLZ6yaNMElQyy9ZudbF3{color:var(--colorBlueVivid);font-size:var(--fontsizeSmall);font-family:HiraKakuProN-W6}", ""]),
            i.locals = {
                root: "_3TTLZ6yaNMElQyy9ZudbF3"
            },
            a.a = i
    },
    2149: function(e, a, t) {
        "use strict";
        var n = t(2)
            , i = t.n(n)()((function(e) {
                return e[1]
            }
        ));
        i.push([e.i, '._1sJI2EnARSP_1Q0EkrS-7F{margin:0}@media (max-width:560px){._1sJI2EnARSP_1Q0EkrS-7F{margin:0 16px}}._1sJI2EnARSP_1Q0EkrS-7F h2{margin:0 0 20px;font-size:var(--fontsizeXXlarge)}@media (max-width:560px){._1sJI2EnARSP_1Q0EkrS-7F h2{font-size:var(--fontsizeNormal)}}._1sJI2EnARSP_1Q0EkrS-7F ._3Ex6pIio4tlAR6nIcFdB7n{font-size:var(--fontsizeXSmall);color:var(--colorgray5);margin-bottom:10px}._1sJI2EnARSP_1Q0EkrS-7F .gC_u1PRkthMGBLbvAaL8W{margin:0 0 8px;padding:0}._1sJI2EnARSP_1Q0EkrS-7F ._3NDhysQK8GcIFiIMvFfXnZ{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:justify;-ms-flex-pack:justify;justify-content:space-between;-webkit-box-align:center;-ms-flex-align:center;align-items:center;margin:0 0 24px;padding:0 0 24px;border-bottom:1px solid var(--colorgray2)}@media (max-width:560px){._1sJI2EnARSP_1Q0EkrS-7F ._3NDhysQK8GcIFiIMvFfXnZ{display:block;padding:0;border:none}}._1sJI2EnARSP_1Q0EkrS-7F ._3NDhysQK8GcIFiIMvFfXnZ a{color:var(--colorFont);text-decoration:none}._1sJI2EnARSP_1Q0EkrS-7F ._3NDhysQK8GcIFiIMvFfXnZ .J84z7eyKjhdsAjcyrjSVI a{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center}._1sJI2EnARSP_1Q0EkrS-7F ._3NDhysQK8GcIFiIMvFfXnZ .J84z7eyKjhdsAjcyrjSVI a img{--some-length:32px;-ms-flex-negative:0;flex-shrink:0;margin:0 8px 0 0;width:var(--some-length);height:var(--some-length);border-radius:50%}@media (max-width:560px){._1sJI2EnARSP_1Q0EkrS-7F ._3NDhysQK8GcIFiIMvFfXnZ .J84z7eyKjhdsAjcyrjSVI a{font-size:var(--fontsizeSmall)}}._1sJI2EnARSP_1Q0EkrS-7F ._3NDhysQK8GcIFiIMvFfXnZ ._3beiRbZC368Rphs0hysliL{position:relative;height:20px;margin:0 0 0 24px;font-size:var(--fontsizeXXSmall)}@media (max-width:560px){._1sJI2EnARSP_1Q0EkrS-7F ._3NDhysQK8GcIFiIMvFfXnZ ._3beiRbZC368Rphs0hysliL{display:none}}._1sJI2EnARSP_1Q0EkrS-7F ._3NDhysQK8GcIFiIMvFfXnZ ._3beiRbZC368Rphs0hysliL button{display:block;padding:0 0 0 27px;color:var(--colorgray4)}._1sJI2EnARSP_1Q0EkrS-7F ._3NDhysQK8GcIFiIMvFfXnZ ._3beiRbZC368Rphs0hysliL button:before{position:absolute;left:0;display:block;content:"\\f064";width:20px;height:20px;font-family:Font Awesome\\ 5 Free;font-size:19px;font-weight:700;color:var(--colorgray4)}._1sJI2EnARSP_1Q0EkrS-7F ._3XuAfjFUC-ROb_3k0qUSEu{margin:0 0 40px}._1sJI2EnARSP_1Q0EkrS-7F ._3XuAfjFUC-ROb_3k0qUSEu p{line-height:1.7;margin:12px 0;white-space:pre-wrap}', ""]),
            i.locals = {
                ProgramTitleAndDetail: "_1sJI2EnARSP_1Q0EkrS-7F",
                programStartDate: "_3Ex6pIio4tlAR6nIcFdB7n",
                programTagList: "gC_u1PRkthMGBLbvAaL8W",
                programChannelBox: "_3NDhysQK8GcIFiIMvFfXnZ",
                programChannel: "J84z7eyKjhdsAjcyrjSVI",
                shareIcon: "_3beiRbZC368Rphs0hysliL",
                programInfo: "_3XuAfjFUC-ROb_3k0qUSEu"
            },
            a.a = i
    },
    2150: function(e, a, t) {
        "use strict";
        var n = t(2)
            , i = t.n(n)()((function(e) {
                return e[1]
            }
        ));
        i.push([e.i, '._2tJicCUUC9ADYOUUHFfsHh input,._2tJicCUUC9ADYOUUHFfsHh select,._2tJicCUUC9ADYOUUHFfsHh textarea{padding:0 16px;border-radius:16px;background:var(--colorWhite);border:1px solid var(--colorgray2);font-size:var(--fontsizeNormal)}._2tJicCUUC9ADYOUUHFfsHh input::-webkit-input-placeholder,._2tJicCUUC9ADYOUUHFfsHh select::-webkit-input-placeholder,._2tJicCUUC9ADYOUUHFfsHh textarea::-webkit-input-placeholder{color:var(--colorgray2)}._2tJicCUUC9ADYOUUHFfsHh input::-moz-placeholder,._2tJicCUUC9ADYOUUHFfsHh select::-moz-placeholder,._2tJicCUUC9ADYOUUHFfsHh textarea::-moz-placeholder{color:var(--colorgray2)}._2tJicCUUC9ADYOUUHFfsHh input:-ms-input-placeholder,._2tJicCUUC9ADYOUUHFfsHh select:-ms-input-placeholder,._2tJicCUUC9ADYOUUHFfsHh textarea:-ms-input-placeholder{color:var(--colorgray2)}._2tJicCUUC9ADYOUUHFfsHh input::-ms-input-placeholder,._2tJicCUUC9ADYOUUHFfsHh select::-ms-input-placeholder,._2tJicCUUC9ADYOUUHFfsHh textarea::-ms-input-placeholder{color:var(--colorgray2)}._2tJicCUUC9ADYOUUHFfsHh input::placeholder,._2tJicCUUC9ADYOUUHFfsHh select::placeholder,._2tJicCUUC9ADYOUUHFfsHh textarea::placeholder{color:var(--colorgray2)}._2tJicCUUC9ADYOUUHFfsHh input:focus,._2tJicCUUC9ADYOUUHFfsHh select:focus,._2tJicCUUC9ADYOUUHFfsHh textarea:focus{outline:0;border:1px solid var(--colorBlueVivid)}._2tJicCUUC9ADYOUUHFfsHh input{height:32px}._2tJicCUUC9ADYOUUHFfsHh ._4bHg0xkQ0Wg1RAjzsgv3o label{display:block;font-size:var(--fontsizeSmall);color:var(--colorgray5)}._2tJicCUUC9ADYOUUHFfsHh ._4bHg0xkQ0Wg1RAjzsgv3o ._25bQ-3qZeIjNtYW2WtBSmv{position:relative}._2tJicCUUC9ADYOUUHFfsHh ._4bHg0xkQ0Wg1RAjzsgv3o ._25bQ-3qZeIjNtYW2WtBSmv select{position:relative;width:100%;height:40px;border-radius:6px}._2tJicCUUC9ADYOUUHFfsHh ._4bHg0xkQ0Wg1RAjzsgv3o ._25bQ-3qZeIjNtYW2WtBSmv select::-ms-expand{display:none}._2tJicCUUC9ADYOUUHFfsHh ._4bHg0xkQ0Wg1RAjzsgv3o ._25bQ-3qZeIjNtYW2WtBSmv:before{content:"\\f078";position:absolute;display:block;top:calc(50% - 8px);right:16px;font-family:Font Awesome\\ 5 Free;font-size:var(--fontsizeNormal);font-weight:700;color:var(--colorgray4);z-index:2}._2tJicCUUC9ADYOUUHFfsHh ._4bHg0xkQ0Wg1RAjzsgv3o.Jx6IP9wo9IFeICu5syRJx label,._2tJicCUUC9ADYOUUHFfsHh ._4bHg0xkQ0Wg1RAjzsgv3o._13qOXIAx1RwkdLM7uhhLS7 label{display:inline;position:relative;cursor:pointer;vertical-align:top}._2tJicCUUC9ADYOUUHFfsHh ._4bHg0xkQ0Wg1RAjzsgv3o.Jx6IP9wo9IFeICu5syRJx label:before,._2tJicCUUC9ADYOUUHFfsHh ._4bHg0xkQ0Wg1RAjzsgv3o._13qOXIAx1RwkdLM7uhhLS7 label:before{content:"\\f0c8";display:inline-block;width:20px;height:20px;margin:0 4px 0 0;font-family:Font Awesome\\ 5 Free;font-size:var(--fontsizeXlarge);color:var(--colorgray3)}._2tJicCUUC9ADYOUUHFfsHh ._4bHg0xkQ0Wg1RAjzsgv3o.Jx6IP9wo9IFeICu5syRJx input,._2tJicCUUC9ADYOUUHFfsHh ._4bHg0xkQ0Wg1RAjzsgv3o._13qOXIAx1RwkdLM7uhhLS7 input{display:none}._2tJicCUUC9ADYOUUHFfsHh ._4bHg0xkQ0Wg1RAjzsgv3o.Jx6IP9wo9IFeICu5syRJx input:checked+label,._2tJicCUUC9ADYOUUHFfsHh ._4bHg0xkQ0Wg1RAjzsgv3o._13qOXIAx1RwkdLM7uhhLS7 input:checked+label{color:var(--colorBlueVivid)}._2tJicCUUC9ADYOUUHFfsHh ._4bHg0xkQ0Wg1RAjzsgv3o.Jx6IP9wo9IFeICu5syRJx input:checked+label:before,._2tJicCUUC9ADYOUUHFfsHh ._4bHg0xkQ0Wg1RAjzsgv3o._13qOXIAx1RwkdLM7uhhLS7 input:checked+label:before{content:"\\f14a";color:var(--colorBlueVivid)}._358RynM1ZYyMImhUJfqW2B{width:320px;height:32px;border-radius:6px;background-color:var(--colorBlueVivid);border:none;color:var(--colorWhite);line-height:32px;text-align:center;font-size:var(--fontsizeSmall);font-weight:700}._358RynM1ZYyMImhUJfqW2B._2RIaBEoKsSpfMXJvbSoWOI{width:80px;font-size:var(--fontsizeXSmall);color:var(--colorWhite)}._358RynM1ZYyMImhUJfqW2B._3snDzBfc45M_L_u9v3Kg72{color:var(--colorgray1);background-color:var(--colorgray3)}.dLN-49kK0sIOe8WF-LLlL ._14054AVcKL7S55YPAkLpOM{display:-webkit-box;display:-ms-flexbox;display:flex;margin:16px 0}@media (max-width:560px){.dLN-49kK0sIOe8WF-LLlL ._14054AVcKL7S55YPAkLpOM{margin:16px}}.dLN-49kK0sIOe8WF-LLlL ._14054AVcKL7S55YPAkLpOM ._3RyA8U5whKoJtl2MScN3sb{-ms-flex-negative:0;flex-shrink:0;width:144px;height:80px;margin:0 16px 0 0}.dLN-49kK0sIOe8WF-LLlL ._14054AVcKL7S55YPAkLpOM ._3RyA8U5whKoJtl2MScN3sb img{width:100%}.dLN-49kK0sIOe8WF-LLlL ._14054AVcKL7S55YPAkLpOM h4{font-weight:400;color:var(--colorFont)}.dLN-49kK0sIOe8WF-LLlL textarea[disabled]{background-color:var(--colorgray1)}.dLN-49kK0sIOe8WF-LLlL ._2rLH_lezXCtdQ2yDqS8zJi{margin:16px 0}@media (max-width:560px){.dLN-49kK0sIOe8WF-LLlL ._2rLH_lezXCtdQ2yDqS8zJi{margin:0 16px}}.dLN-49kK0sIOe8WF-LLlL form{width:100%}.dLN-49kK0sIOe8WF-LLlL form textarea{display:block;width:100%;height:272px;padding:12px 16px}.dLN-49kK0sIOe8WF-LLlL form button{display:block;margin:24px auto 12px}', ""]),
            i.locals = {
                formContent: "_2tJicCUUC9ADYOUUHFfsHh",
                formItemGroup: "_4bHg0xkQ0Wg1RAjzsgv3o",
                formItemSelect: "_25bQ-3qZeIjNtYW2WtBSmv",
                isCheckGroup: "Jx6IP9wo9IFeICu5syRJx",
                isradioGroup: "_13qOXIAx1RwkdLM7uhhLS7",
                buttonBase: "_358RynM1ZYyMImhUJfqW2B",
                isSmall: "_2RIaBEoKsSpfMXJvbSoWOI",
                disabled: "_3snDzBfc45M_L_u9v3Kg72",
                content: "dLN-49kK0sIOe8WF-LLlL",
                reviewTargetProgram: "_14054AVcKL7S55YPAkLpOM",
                programThumbnail: "_3RyA8U5whKoJtl2MScN3sb",
                formContainer: "_2rLH_lezXCtdQ2yDqS8zJi"
            },
            a.a = i
    },
    2151: function(e, a, t) {
        "use strict";
        var n = t(2)
            , i = t.n(n)()((function(e) {
                return e[1]
            }
        ));
        i.push([e.i, '.MYMWlHf0kEiHdLtqMDqmm input,.MYMWlHf0kEiHdLtqMDqmm select,.MYMWlHf0kEiHdLtqMDqmm textarea{padding:0 16px;border-radius:16px;background:var(--colorWhite);border:1px solid var(--colorgray2);font-size:var(--fontsizeNormal)}.MYMWlHf0kEiHdLtqMDqmm input::-webkit-input-placeholder,.MYMWlHf0kEiHdLtqMDqmm select::-webkit-input-placeholder,.MYMWlHf0kEiHdLtqMDqmm textarea::-webkit-input-placeholder{color:var(--colorgray2)}.MYMWlHf0kEiHdLtqMDqmm input::-moz-placeholder,.MYMWlHf0kEiHdLtqMDqmm select::-moz-placeholder,.MYMWlHf0kEiHdLtqMDqmm textarea::-moz-placeholder{color:var(--colorgray2)}.MYMWlHf0kEiHdLtqMDqmm input:-ms-input-placeholder,.MYMWlHf0kEiHdLtqMDqmm select:-ms-input-placeholder,.MYMWlHf0kEiHdLtqMDqmm textarea:-ms-input-placeholder{color:var(--colorgray2)}.MYMWlHf0kEiHdLtqMDqmm input::-ms-input-placeholder,.MYMWlHf0kEiHdLtqMDqmm select::-ms-input-placeholder,.MYMWlHf0kEiHdLtqMDqmm textarea::-ms-input-placeholder{color:var(--colorgray2)}.MYMWlHf0kEiHdLtqMDqmm input::placeholder,.MYMWlHf0kEiHdLtqMDqmm select::placeholder,.MYMWlHf0kEiHdLtqMDqmm textarea::placeholder{color:var(--colorgray2)}.MYMWlHf0kEiHdLtqMDqmm input:focus,.MYMWlHf0kEiHdLtqMDqmm select:focus,.MYMWlHf0kEiHdLtqMDqmm textarea:focus{outline:0;border:1px solid var(--colorBlueVivid)}.MYMWlHf0kEiHdLtqMDqmm input{height:32px}.MYMWlHf0kEiHdLtqMDqmm ._3MZt4hwUeJkpsPyjhr_dA1 label{display:block;font-size:var(--fontsizeSmall);color:var(--colorgray5)}.MYMWlHf0kEiHdLtqMDqmm ._3MZt4hwUeJkpsPyjhr_dA1 .Cb6K-v9VsCtUPNW-R9FlS{position:relative}.MYMWlHf0kEiHdLtqMDqmm ._3MZt4hwUeJkpsPyjhr_dA1 .Cb6K-v9VsCtUPNW-R9FlS select{position:relative;width:100%;height:40px;border-radius:6px}.MYMWlHf0kEiHdLtqMDqmm ._3MZt4hwUeJkpsPyjhr_dA1 .Cb6K-v9VsCtUPNW-R9FlS select::-ms-expand{display:none}.MYMWlHf0kEiHdLtqMDqmm ._3MZt4hwUeJkpsPyjhr_dA1 .Cb6K-v9VsCtUPNW-R9FlS:before{content:"\\f078";position:absolute;display:block;top:calc(50% - 8px);right:16px;font-family:Font Awesome\\ 5 Free;font-size:var(--fontsizeNormal);font-weight:700;color:var(--colorgray4);z-index:2}.MYMWlHf0kEiHdLtqMDqmm ._3MZt4hwUeJkpsPyjhr_dA1._4XK2a98j7IUQrowkYbGNr label,.MYMWlHf0kEiHdLtqMDqmm ._3MZt4hwUeJkpsPyjhr_dA1._283guAR46Tb_7_SIsL_xnl label{display:inline;position:relative;cursor:pointer;vertical-align:top}.MYMWlHf0kEiHdLtqMDqmm ._3MZt4hwUeJkpsPyjhr_dA1._4XK2a98j7IUQrowkYbGNr label:before,.MYMWlHf0kEiHdLtqMDqmm ._3MZt4hwUeJkpsPyjhr_dA1._283guAR46Tb_7_SIsL_xnl label:before{content:"\\f0c8";display:inline-block;width:20px;height:20px;margin:0 4px 0 0;font-family:Font Awesome\\ 5 Free;font-size:var(--fontsizeXlarge);color:var(--colorgray3)}.MYMWlHf0kEiHdLtqMDqmm ._3MZt4hwUeJkpsPyjhr_dA1._4XK2a98j7IUQrowkYbGNr input,.MYMWlHf0kEiHdLtqMDqmm ._3MZt4hwUeJkpsPyjhr_dA1._283guAR46Tb_7_SIsL_xnl input{display:none}.MYMWlHf0kEiHdLtqMDqmm ._3MZt4hwUeJkpsPyjhr_dA1._4XK2a98j7IUQrowkYbGNr input:checked+label,.MYMWlHf0kEiHdLtqMDqmm ._3MZt4hwUeJkpsPyjhr_dA1._283guAR46Tb_7_SIsL_xnl input:checked+label{color:var(--colorBlueVivid)}.MYMWlHf0kEiHdLtqMDqmm ._3MZt4hwUeJkpsPyjhr_dA1._4XK2a98j7IUQrowkYbGNr input:checked+label:before,.MYMWlHf0kEiHdLtqMDqmm ._3MZt4hwUeJkpsPyjhr_dA1._283guAR46Tb_7_SIsL_xnl input:checked+label:before{content:"\\f14a";color:var(--colorBlueVivid)}._3FUlISCV2bvPmVunAl9AT0{width:320px;height:32px;border-radius:6px;background-color:var(--colorBlueVivid);border:none;color:var(--colorWhite);line-height:32px;text-align:center;font-size:var(--fontsizeSmall);font-weight:700}._3FUlISCV2bvPmVunAl9AT0._17PuCFTteXuLWX-3k4oOyE{width:80px;font-size:var(--fontsizeXSmall);color:var(--colorWhite)}._3FUlISCV2bvPmVunAl9AT0._1C5uoGUHReFKYCxHAcihA6{color:var(--colorgray1);background-color:var(--colorgray3)}.RVtFWuiCmeHmTfxjZ3GYT ._3ZKG-W_YrCbGlOWGsLX786{display:block;margin:16px auto 24px}.RVtFWuiCmeHmTfxjZ3GYT ._29XJipP3Obipv0fFJjVwAL{display:block}@media (max-width:560px){.RVtFWuiCmeHmTfxjZ3GYT ._29XJipP3Obipv0fFJjVwAL{width:160px}}.RVtFWuiCmeHmTfxjZ3GYT ._1OkTmELGhPKxWtNFymmw8M{display:block}@media (max-width:560px){.RVtFWuiCmeHmTfxjZ3GYT ._1OkTmELGhPKxWtNFymmw8M{width:160px}}.RVtFWuiCmeHmTfxjZ3GYT ._1607gHeVexjmZ03Toax3CA{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:space-evenly;-ms-flex-pack:space-evenly;justify-content:space-evenly;margin:16px auto 24px}.RVtFWuiCmeHmTfxjZ3GYT .wRxDp1VjlKAbuJKXMt8TW{text-align:center;padding-bottom:8px}.RVtFWuiCmeHmTfxjZ3GYT ._3967_8ax2wRa0nBihrMQuQ{margin:16px auto}.RVtFWuiCmeHmTfxjZ3GYT ._1g9nJPn-SJKC2LMx9TiqLL{margin:4px 0 0;text-align:center}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li{margin:0 0 16px}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li ._1PZyVYIhY8BwgPqzeHupkf{float:left}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li ._2IaYza5YAn17lgwOtiW5sX{margin-left:50px;min-height:40px;position:relative}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li .w57hw6QGfBF8jNXOVT65F{display:-webkit-box;display:-ms-flexbox;display:flex;font-size:var(--fontsizeSmall);color:var(--colorgray4)}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li .w57hw6QGfBF8jNXOVT65F ._3GzPISaFWvyRVOqAJ1BnAE{font-weight:700}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li .w57hw6QGfBF8jNXOVT65F ._2TqA91WJ9_ej0LHpqdGLZA{margin-left:1em}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li .w57hw6QGfBF8jNXOVT65F ._3yN_VBHRuicyyzq0kiTbfw{text-align:right;-webkit-box-flex:1;-ms-flex:1 1 auto;flex:1 1 auto}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li .jzulb97bDgRLaMStrrEhd{font-size:var(--fontsizeSmall);color:var(--colorFont);margin-top:4px}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li .jzulb97bDgRLaMStrrEhd.m9YcM_-ovQWIOOvQ70e_p{display:-webkit-box;-webkit-line-clamp:3;-webkit-box-orient:vertical;overflow:hidden}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li ._2YtyD4g23JYhZXCq8feIVX,.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li ._1Wa-V1OBWgS-Ro1yDvGVMc{position:absolute;font-size:var(--fontsizeSmall);right:0;bottom:0;background-color:#fff;color:var(--colorBlueVivid);text-decoration:underline;cursor:pointer;-webkit-box-shadow:0 0 4px 6px #fff;box-shadow:0 0 4px 6px #fff}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li ._2YtyD4g23JYhZXCq8feIVX:hover,.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li ._1Wa-V1OBWgS-Ro1yDvGVMc:hover{opacity:inherit}@media (max-width:560px){.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li ._2YtyD4g23JYhZXCq8feIVX,.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li ._1Wa-V1OBWgS-Ro1yDvGVMc{font-size:var(--fontsizeXSmall)}}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li ._2YtyD4g23JYhZXCq8feIVX{position:static;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:end;-ms-flex-pack:end;justify-content:flex-end}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li:after{clear:left}@media (max-width:560px){.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li ._2IaYza5YAn17lgwOtiW5sX{margin-left:20px}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li .w57hw6QGfBF8jNXOVT65F{font-size:var(--fontsizeXXXSmall)}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li ._1PZyVYIhY8BwgPqzeHupkf{width:16px;height:16px}.RVtFWuiCmeHmTfxjZ3GYT .pAYAEtxI99-OyJfunvFqG>li .jzulb97bDgRLaMStrrEhd{font-size:var(--fontsizeXSmall)}}.RVtFWuiCmeHmTfxjZ3GYT ._3qaM2dtSyxPcYZxoRklqqH{margin-top:24px;font-size:var(--fontsizeSmall);font-weight:700;text-align:right}.RVtFWuiCmeHmTfxjZ3GYT ._3qaM2dtSyxPcYZxoRklqqH>a{color:var(--colorBlueVivid)}.RVtFWuiCmeHmTfxjZ3GYT ._3TDmqTZe6fGF3_Km08Jbhr{-webkit-box-flex:0;-ms-flex:none;flex:none;height:32px;width:32px}.RVtFWuiCmeHmTfxjZ3GYT .gERyu4FB0kb7ISXAAXOB_{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:end;-ms-flex-pack:end;justify-content:flex-end}.RVtFWuiCmeHmTfxjZ3GYT ._2IfFylPVpzosNpylN8wg4G{position:relative;height:20px;margin:0 0 0 24px;font-size:11px}.RVtFWuiCmeHmTfxjZ3GYT ._2IfFylPVpzosNpylN8wg4G button{display:block;padding:0 0 0 27px;color:var(--colorgray4)}.RVtFWuiCmeHmTfxjZ3GYT ._2IfFylPVpzosNpylN8wg4G button:before{position:absolute;left:0;display:block;content:"\\f064";width:20px;height:20px;font-family:Font Awesome\\ 5 Free;font-size:16px;font-weight:700;color:var(--colorgray4)}', ""]),
            i.locals = {
                formContent: "MYMWlHf0kEiHdLtqMDqmm",
                formItemGroup: "_3MZt4hwUeJkpsPyjhr_dA1",
                formItemSelect: "Cb6K-v9VsCtUPNW-R9FlS",
                isCheckGroup: "_4XK2a98j7IUQrowkYbGNr",
                isradioGroup: "_283guAR46Tb_7_SIsL_xnl",
                buttonBase: "_3FUlISCV2bvPmVunAl9AT0",
                isSmall: "_17PuCFTteXuLWX-3k4oOyE",
                disabled: "_1C5uoGUHReFKYCxHAcihA6",
                root: "RVtFWuiCmeHmTfxjZ3GYT",
                writeButton: "_3ZKG-W_YrCbGlOWGsLX786",
                rewriteButton: "_29XJipP3Obipv0fFJjVwAL",
                removeButton: "_1OkTmELGhPKxWtNFymmw8M",
                buttonContainer: "_1607gHeVexjmZ03Toax3CA",
                purhcaseRequired: "wRxDp1VjlKAbuJKXMt8TW",
                loading: "_3967_8ax2wRa0nBihrMQuQ",
                listIsEmpty: "_1g9nJPn-SJKC2LMx9TiqLL",
                reviewList: "pAYAEtxI99-OyJfunvFqG",
                reviewUser: "_1PZyVYIhY8BwgPqzeHupkf",
                reviewContent: "_2IaYza5YAn17lgwOtiW5sX",
                reviewMeta: "w57hw6QGfBF8jNXOVT65F",
                reviewUserName: "_3GzPISaFWvyRVOqAJ1BnAE",
                reviewDate: "_2TqA91WJ9_ej0LHpqdGLZA",
                reviewState: "_3yN_VBHRuicyyzq0kiTbfw",
                reviewBody: "jzulb97bDgRLaMStrrEhd",
                isEllipsized: "m9YcM_-ovQWIOOvQ70e_p",
                ellipsize: "_2YtyD4g23JYhZXCq8feIVX",
                showAll: "_1Wa-V1OBWgS-Ro1yDvGVMc",
                reviewListMore: "_3qaM2dtSyxPcYZxoRklqqH",
                twitterShareButton: "_3TDmqTZe6fGF3_Km08Jbhr",
                shareIconContainer: "gERyu4FB0kb7ISXAAXOB_",
                shareIcon: "_2IfFylPVpzosNpylN8wg4G"
            },
            a.a = i
    },
    2152: function(e, a, t) {
        "use strict";
        var n = t(2)
            , i = t.n(n)()((function(e) {
                return e[1]
            }
        ));
        i.push([e.i, '._3aCYADCOX_HivOL5n80CH0{position:relative}._3aCYADCOX_HivOL5n80CH0 ._13ZDExBR4yS3kuecNbPT81{position:relative;height:32px;padding:0 30px 0 37px;line-height:32px;font-size:var(--fontsizeXXXSmall);color:var(--colorgray4)}._3aCYADCOX_HivOL5n80CH0 ._13ZDExBR4yS3kuecNbPT81:before{position:absolute;top:0;left:12px;content:"\\f086";width:12px;height:12px;font-family:Font Awesome\\ 5 Free;font-size:var(--fontsizeXXSmall);font-weight:700;color:var(--colorgray4)}._3aCYADCOX_HivOL5n80CH0 ._13ZDExBR4yS3kuecNbPT81:after{position:absolute;right:16px;content:"\\f077";width:16px;height:16px;font-family:Font Awesome\\ 5 Free;font-size:var(--fontsizeNormal);font-weight:700;color:var(--colorgray4)}._3aCYADCOX_HivOL5n80CH0 ._2ulhynyKW7Ogpdp4h-JIt7{padding:8px 12px}._3aCYADCOX_HivOL5n80CH0 ._2ulhynyKW7Ogpdp4h-JIt7 input[type=text]{font-size:16px}._3aCYADCOX_HivOL5n80CH0 ._36XWLaab67vJRSfmH1g9hg{margin:0 49px 0 16px;padding:8px 0;position:relative}._3aCYADCOX_HivOL5n80CH0 .COFxZ3PPLnM2AvdBiDq-r{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;margin:0 0 0 20px}._3aCYADCOX_HivOL5n80CH0 .COFxZ3PPLnM2AvdBiDq-r ._3xsGHCnLWzVcrce7A7rAmk{-ms-flex-negative:0;flex-shrink:0;margin:0 4px 0 0;width:16px;height:16px}._3aCYADCOX_HivOL5n80CH0 .COFxZ3PPLnM2AvdBiDq-r ._3xsGHCnLWzVcrce7A7rAmk img{width:100%;border-radius:50%}._3aCYADCOX_HivOL5n80CH0 .COFxZ3PPLnM2AvdBiDq-r ._2SxOejFHP-9uL40XfiL4y3,._3aCYADCOX_HivOL5n80CH0 .COFxZ3PPLnM2AvdBiDq-r ._3HHh6kXlcBWODm9zHUYG3b{-ms-flex-negative:0;flex-shrink:0;width:auto;margin:0 8px 0 0;color:var(--colorgray4)}._3aCYADCOX_HivOL5n80CH0 ._2jhdYIaDvjEroEVJfm3m8l{height:calc(100vh - 56.25vw - 210px)}', ""]),
            i.locals = {
                SPCommentsContainer: "_3aCYADCOX_HivOL5n80CH0",
                Header: "_13ZDExBR4yS3kuecNbPT81",
                commentInput: "_2ulhynyKW7Ogpdp4h-JIt7",
                newCommentMarquee: "_36XWLaab67vJRSfmH1g9hg",
                newComment: "COFxZ3PPLnM2AvdBiDq-r",
                newCommenthumbnail: "_3xsGHCnLWzVcrce7A7rAmk",
                newCommentName: "_2SxOejFHP-9uL40XfiL4y3",
                newCommentTime: "_3HHh6kXlcBWODm9zHUYG3b",
                commentList: "_2jhdYIaDvjEroEVJfm3m8l"
            },
            a.a = i
    },
    2153: function(e, a, t) {
        "use strict";
        var n = t(2)
            , i = t.n(n)()((function(e) {
                return e[1]
            }
        ));
        i.push([e.i, '._1_hd3ZeXBmfgogocg6pBVa{position:relative;display:-webkit-box;display:-ms-flexbox;display:flex;height:32px;padding:0 30px 0 37px;line-height:32px;border-bottom:1px solid var(--colorgray2);font-size:var(--fontsizeXXXSmall)}._1_hd3ZeXBmfgogocg6pBVa:before{position:absolute;top:0;left:12px;content:"\\f086";width:12px;height:12px;font-family:Font Awesome\\ 5 Free;font-size:var(--fontsizeXXSmall);font-weight:700;color:var(--colorgray4)}._1_hd3ZeXBmfgogocg6pBVa:after{position:absolute;right:16px;content:"\\f078";width:16px;height:16px;font-family:Font Awesome\\ 5 Free;font-size:var(--fontsizeNormal);font-weight:700;color:var(--colorgray4)}._1_hd3ZeXBmfgogocg6pBVa ._2CRPOCTOYwXlpzm0k8MFMn{margin-top:8px}._1_hd3ZeXBmfgogocg6pBVa .k9fuptFdFwpY6fJZBEFoB{margin:0 8px 0 4px;color:var(--colorgray4);min-width:3.125rem}._1_hd3ZeXBmfgogocg6pBVa .rgAY4luZBSFqqi8wQEhFK{max-width:60px}._1_hd3ZeXBmfgogocg6pBVa .rgAY4luZBSFqqi8wQEhFK,._1_hd3ZeXBmfgogocg6pBVa ._3IuHog94mlkdTDMJ3uFq3i{color:var(--colorgray4);text-overflow:ellipsis;overflow:hidden;white-space:nowrap}._1_hd3ZeXBmfgogocg6pBVa ._3IuHog94mlkdTDMJ3uFq3i{margin:0 8px}', ""]),
            i.locals = {
                SPOnelineComment: "_1_hd3ZeXBmfgogocg6pBVa",
                UserIcon: "_2CRPOCTOYwXlpzm0k8MFMn",
                CommentTime: "k9fuptFdFwpY6fJZBEFoB",
                CommentName: "rgAY4luZBSFqqi8wQEhFK",
                CommentText: "_3IuHog94mlkdTDMJ3uFq3i"
            },
            a.a = i
    },
    2154: function(e, a, t) {
        "use strict";
        var n = t(2)
            , i = t.n(n)()((function(e) {
                return e[1]
            }
        ));
        i.push([e.i, '._2qheJ6YspoSunlobzaoPzP{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;padding:10px 0;position:relative}._2qheJ6YspoSunlobzaoPzP>*{position:relative;margin:0 16px 0 0;display:block;padding:28px 0 0;width:74px;height:48px;text-decoration:none;text-align:center;font-size:var(--fontsizeXXXSmall);color:var(--colorgray4)}._2qheJ6YspoSunlobzaoPzP>:before{content:"\\f129";position:absolute;display:block;top:8px;left:calc(50% - 8px);width:16px;font-family:Font Awesome\\ 5 Free;font-size:var(--fontsizeNormal);line-height:1;font-weight:700}._2qheJ6YspoSunlobzaoPzP>.blSbxc9D9oVU8PZgmcB9Z:before{content:"\\f129"}._2qheJ6YspoSunlobzaoPzP>.Cma-QdndPYhYTcjS086Qq:before{content:"\\f086"}._2qheJ6YspoSunlobzaoPzP>._3mO-u77UVshhhi4Z9LmJpy:before{content:"\\f15c";font-weight:400}._2qheJ6YspoSunlobzaoPzP>._22dpJAufT7nmEOQpl8-Kaf:before{content:"\\f4ad"}._2qheJ6YspoSunlobzaoPzP>._3J3TkyS7Jj-m_f0fPEN6eM:before{content:"\\f064"}._31Z8bYzjmnbM8yfchowOqj{display:none}@media (--viewport-small){._31Z8bYzjmnbM8yfchowOqj{display:block;margin:0 auto 16px;height:48px;background-color:var(--colorWhite);-webkit-box-shadow:0 2px 2px 0 rgba(0,0,0,.1);box-shadow:0 2px 2px 0 rgba(0,0,0,.1)}._31Z8bYzjmnbM8yfchowOqj ._1PaEz0tSa8Y7qB-eZ2qXoR{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center}._31Z8bYzjmnbM8yfchowOqj ._1PaEz0tSa8Y7qB-eZ2qXoR li{position:relative;margin:0 16px 0 0}._31Z8bYzjmnbM8yfchowOqj ._1PaEz0tSa8Y7qB-eZ2qXoR li a{display:block;padding:28px 0 0;width:74px;height:48px;text-decoration:none;text-align:center;font-size:var(--fontsizeXXXSmall);color:var(--colorgray4)}._31Z8bYzjmnbM8yfchowOqj ._1PaEz0tSa8Y7qB-eZ2qXoR li a:before{content:"\\f129";position:absolute;display:block;top:8px;left:calc(50% - 8px);width:16px;font-family:Font Awesome\\ 5 Free;font-size:var(--fontsizeNormal);line-height:1;font-weight:700}._31Z8bYzjmnbM8yfchowOqj ._1PaEz0tSa8Y7qB-eZ2qXoR li._2JeI0VT0ZCQxDbwFCHmQaR a{color:var(--colorBlueVivid)}}@media (--viewport-small){._2YzH0hXEA38HJUMbZIRumH{margin:-30px -16px 16px}._2YzH0hXEA38HJUMbZIRumH ._1PaEz0tSa8Y7qB-eZ2qXoR li._1-6bAg1YhXP7cQ7NEnc4up a:before{content:"\\f04b"}._2YzH0hXEA38HJUMbZIRumH ._1PaEz0tSa8Y7qB-eZ2qXoR li._1xaoC0gPe27zIFkScl0omp a:before{content:"\\f086"}._2YzH0hXEA38HJUMbZIRumH ._1PaEz0tSa8Y7qB-eZ2qXoR li._33sImmAuAv2UcuClPBBQOR a:before{content:"\\f15c";font-weight:400}._2YzH0hXEA38HJUMbZIRumH ._1PaEz0tSa8Y7qB-eZ2qXoR li._3tMcRx_7iMHn_PG2xv18vu{margin:0}._2YzH0hXEA38HJUMbZIRumH ._1PaEz0tSa8Y7qB-eZ2qXoR li._3tMcRx_7iMHn_PG2xv18vu a:before{content:"\\f064"}}', ""]),
            i.locals = {
                SPProgramTabHeader: "_2qheJ6YspoSunlobzaoPzP",
                InformationTabItem: "blSbxc9D9oVU8PZgmcB9Z",
                CommentsTabItem: "Cma-QdndPYhYTcjS086Qq",
                HandoutsTabItem: "_3mO-u77UVshhhi4Z9LmJpy",
                ReviewTabItem: "_22dpJAufT7nmEOQpl8-Kaf",
                ShareTabItem: "_3J3TkyS7Jj-m_f0fPEN6eM",
                spmenu: "_31Z8bYzjmnbM8yfchowOqj",
                spmenuList: "_1PaEz0tSa8Y7qB-eZ2qXoR",
                isOn: "_2JeI0VT0ZCQxDbwFCHmQaR",
                movieSpmenu: "_2YzH0hXEA38HJUMbZIRumH",
                isMovie: "_1-6bAg1YhXP7cQ7NEnc4up",
                isComment: "_1xaoC0gPe27zIFkScl0omp",
                isFile: "_33sImmAuAv2UcuClPBBQOR",
                isShare: "_3tMcRx_7iMHn_PG2xv18vu"
            },
            a.a = i
    },
    2155: function(e, a, t) {
        "use strict";
        var n = t(2)
            , i = t.n(n)
            , r = t(135)
            , o = i()((function(e) {
                return e[1]
            }
        ));
        o.i(r.a, "", !0),
            o.push([e.i, '.oD3J3Ct4aaNjj3qHdMtS_>aside,.oD3J3Ct4aaNjj3qHdMtS_>main{padding:32px 40px}.oD3J3Ct4aaNjj3qHdMtS_>aside>div,.oD3J3Ct4aaNjj3qHdMtS_>main>div{display:-ms-grid;display:grid;grid-column-gap:24px;grid-row-gap:24px;-ms-grid-columns:auto 384px;grid-template-columns:auto 384px}.oD3J3Ct4aaNjj3qHdMtS_>main{background:var(--colorBluePale);margin-top:-100px;padding-top:120px}.oD3J3Ct4aaNjj3qHdMtS_>main ._3uDqYEzPaL7KeyM_1STsZJ{display:block}.oD3J3Ct4aaNjj3qHdMtS_>main ._1x6V-VFODE9j3jO94gxL8l{grid-template-areas:"notice notice" "player comments";-ms-grid-rows:auto calc(56.25vw - 274.5px);grid-template-rows:auto calc(56.25vw - 274.5px)}.oD3J3Ct4aaNjj3qHdMtS_>main ._3k_5auDddG76y2bYrUHgYp{-ms-grid-row:1;-ms-grid-column:1;-ms-grid-column-span:2;grid-area:notice}.oD3J3Ct4aaNjj3qHdMtS_>main ._2bFZcWCfpc25FsroRADBFL{-ms-grid-row:2;-ms-grid-column:1;grid-area:player}.oD3J3Ct4aaNjj3qHdMtS_>main ._3DRsqhmKp8vr7c86phUZc_{-ms-grid-row:2;-ms-grid-column:2;grid-area:comments}.oD3J3Ct4aaNjj3qHdMtS_>aside>div{grid-template-areas:"title       handouts" "reviews     handouts" "recommends  handouts"}.oD3J3Ct4aaNjj3qHdMtS_>aside ._13aCG1egZKLLYGFLH_uDl_{-ms-grid-row:1;-ms-grid-column:1;grid-area:title}.oD3J3Ct4aaNjj3qHdMtS_>aside ._2ce49bPHzB91AJNUAkJJJS{-ms-grid-row:1;-ms-grid-row-span:3;-ms-grid-column:2;grid-area:handouts}.oD3J3Ct4aaNjj3qHdMtS_>aside ._2ce49bPHzB91AJNUAkJJJS .ZgOaDyWzchP2Vy6OTbkqa{margin:0 0 16px}.oD3J3Ct4aaNjj3qHdMtS_>aside ._21KkK6bvCSNWXSB8khfds5{-ms-grid-row:2;-ms-grid-column:1;grid-area:reviews}.oD3J3Ct4aaNjj3qHdMtS_>aside ._21KkK6bvCSNWXSB8khfds5 .ZgOaDyWzchP2Vy6OTbkqa{margin:0 0 16px}.oD3J3Ct4aaNjj3qHdMtS_>aside ._3CAMrY9G_tkFMvD7Q7og6a{-ms-grid-row:3;-ms-grid-column:1;grid-area:recommends}.oD3J3Ct4aaNjj3qHdMtS_._2PA9iXSHmi2eZ3kCcVdXX2>main>div{display:block}.oD3J3Ct4aaNjj3qHdMtS_._2PA9iXSHmi2eZ3kCcVdXX2 ._3k_5auDddG76y2bYrUHgYp{margin-bottom:24px}.oD3J3Ct4aaNjj3qHdMtS_._2PA9iXSHmi2eZ3kCcVdXX2 ._3DRsqhmKp8vr7c86phUZc_{display:none}.oD3J3Ct4aaNjj3qHdMtS_._2PA9iXSHmi2eZ3kCcVdXX2 ._2bFZcWCfpc25FsroRADBFL{height:calc(56.25vw - 45px)}@media (max-width:960px){.oD3J3Ct4aaNjj3qHdMtS_>aside,.oD3J3Ct4aaNjj3qHdMtS_>main{padding-left:24px;padding-right:24px}.oD3J3Ct4aaNjj3qHdMtS_>main ._1x6V-VFODE9j3jO94gxL8l{grid-row-gap:16px;-ms-grid-columns:auto;grid-template-columns:auto;-ms-grid-rows:auto 16px calc(56.25vw - 27px) 16px 432px;grid-template-rows:auto calc(56.25vw - 27px) 432px;grid-template-areas:"notice" "player" "comments"}.oD3J3Ct4aaNjj3qHdMtS_>aside>div{-ms-grid-columns:auto 272px;grid-template-columns:auto 272px}.oD3J3Ct4aaNjj3qHdMtS_._2PA9iXSHmi2eZ3kCcVdXX2 ._3k_5auDddG76y2bYrUHgYp{margin-bottom:16px}.oD3J3Ct4aaNjj3qHdMtS_._2PA9iXSHmi2eZ3kCcVdXX2 ._2bFZcWCfpc25FsroRADBFL{height:calc(56.25vw - 27px)}.oD3J3Ct4aaNjj3qHdMtS_>main ._3k_5auDddG76y2bYrUHgYp{-ms-grid-row:1;-ms-grid-column:1;-ms-grid-column-span:1}.oD3J3Ct4aaNjj3qHdMtS_>main ._2bFZcWCfpc25FsroRADBFL{-ms-grid-row:3;-ms-grid-column:1}.oD3J3Ct4aaNjj3qHdMtS_>main ._3DRsqhmKp8vr7c86phUZc_{-ms-grid-row:5;-ms-grid-column:1}}.jEZsfAWQuI16ux9dEqw8f ._3k_5auDddG76y2bYrUHgYp{margin:14px 16px 8px}.jEZsfAWQuI16ux9dEqw8f ._2bFZcWCfpc25FsroRADBFL{min-height:56.25vw;position:sticky;top:0;z-index:var(--zIndexStickyPageComponent)}.jEZsfAWQuI16ux9dEqw8f ._13aCG1egZKLLYGFLH_uDl_{margin:0;padding:16px 0;overflow:scroll;height:calc(100vh - 144px - 56.25vw)}.jEZsfAWQuI16ux9dEqw8f ._2ce49bPHzB91AJNUAkJJJS{margin:0 16px;padding-bottom:24px}.jEZsfAWQuI16ux9dEqw8f ._2ce49bPHzB91AJNUAkJJJS .ZgOaDyWzchP2Vy6OTbkqa{margin:16px 0}.jEZsfAWQuI16ux9dEqw8f ._21KkK6bvCSNWXSB8khfds5{margin:0 16px}.jEZsfAWQuI16ux9dEqw8f ._21KkK6bvCSNWXSB8khfds5 .ZgOaDyWzchP2Vy6OTbkqa{margin:16px 0}.jEZsfAWQuI16ux9dEqw8f ._3CAMrY9G_tkFMvD7Q7og6a{margin:0 16px}.jEZsfAWQuI16ux9dEqw8f ._3CAMrY9G_tkFMvD7Q7og6a .ZgOaDyWzchP2Vy6OTbkqa{margin:16px 0}body.isLegacyMobileSafari .jEZsfAWQuI16ux9dEqw8f ._2bFZcWCfpc25FsroRADBFL{margin-top:8px;position:relative;top:auto}._2HywWnw6j3EhYMm77PFyKs{top:unset}._34DhX0NAfOcvRre_luJreP{-webkit-box-shadow:0 -2px 2px 0 rgba(0,0,0,.4);box-shadow:0 -2px 2px 0 rgba(0,0,0,.4);background:#f5f8ff;padding:16px 16px 8px}._34DhX0NAfOcvRre_luJreP ._-4W3OSioNbHz4SgRwXDpz{-webkit-box-flex:1;-ms-flex:1 1 auto;flex:1 1 auto}._34DhX0NAfOcvRre_luJreP .gLCgZTvIEojUrMH3yCo7f{margin:0 0 0 8px;-webkit-box-flex:0;-ms-flex:0 0 48px;flex:0 0 48px}', ""]),
            o.locals = {
                PCProgramPage: "oD3J3Ct4aaNjj3qHdMtS_",
                NotificationBar: "_3uDqYEzPaL7KeyM_1STsZJ",
                PlayerContainer: "_1x6V-VFODE9j3jO94gxL8l",
                Notices: "_3k_5auDddG76y2bYrUHgYp",
                Player: "_2bFZcWCfpc25FsroRADBFL",
                Comments: "_3DRsqhmKp8vr7c86phUZc_",
                TitleAndDetail: "_13aCG1egZKLLYGFLH_uDl_",
                Handouts: "_2ce49bPHzB91AJNUAkJJJS",
                heading: "ZgOaDyWzchP2Vy6OTbkqa",
                Reviews: "_21KkK6bvCSNWXSB8khfds5",
                Recommends: "_3CAMrY9G_tkFMvD7Q7og6a",
                isFullwidth: "_2PA9iXSHmi2eZ3kCcVdXX2",
                SPProgramPage: "jEZsfAWQuI16ux9dEqw8f",
                BottomFixedModalContent: "_2HywWnw6j3EhYMm77PFyKs " + r.a.locals.content,
                SPCommentForm: "_34DhX0NAfOcvRre_luJreP",
                DeprecatedTextInput: "_-4W3OSioNbHz4SgRwXDpz",
                Button: "gLCgZTvIEojUrMH3yCo7f"
            },
            a.a = o
    },
    2654: function(e, a, t) {
        "use strict";
        t.r(a);
        t(55),
            t(114);
        var n = t(0)
            , i = t.n(n)
            , r = t(5)
            , o = t.n(r)
            , l = t(8)
            , s = t.n(l)
            , c = t(40)
            , m = t.n(c)
            , d = t(13)
            , u = t.n(d)
            , p = t(10)
            , g = t.n(p)
            , v = (t(70),
            t(1502),
            t(82),
            t(269))
            , f = t.n(v)
            , h = t(37)
            , b = t.n(h)
            , x = t(28)
            , k = t.n(x)
            , w = t(26)
            , P = t.n(w)
            , y = t(29)
            , _ = t.n(y)
            , E = t(30)
            , C = t.n(E)
            , S = t(24)
            , N = t.n(S)
            , R = t(3)
            , A = t.n(R)
            , T = t(12)
            , M = t(68)
            , j = t(102)
            , F = t(1475);
        function H(e, a, t) {
            return a in e ? Object.defineProperty(e, a, {
                value: t,
                enumerable: !0,
                configurable: !0,
                writable: !0
            }) : e[a] = t,
                e
        }
        var O = t(91)
            , L = t.n(O)
            , D = t(2132)
            , q = t.n(D)
            , I = t(2133)
            , W = t.n(I)
            , U = function() {
            function e(e, a, t) {
                var n = this;
                this.nativeMediaQueryList = e.matchMedia(a),
                    this.active = !0,
                    this.cancellableListener = function() {
                        n.matches = n.nativeMediaQueryList.matches,
                        n.active && t.apply(void 0, arguments)
                    }
                    ,
                    this.nativeMediaQueryList.addListener(this.cancellableListener),
                    this.matches = this.nativeMediaQueryList.matches
            }
            return e.prototype.cancel = function() {
                this.active = !1,
                    this.nativeMediaQueryList.removeListener(this.cancellableListener)
            }
                ,
                e
        }()
            , Y = L.a.oneOfType([L.a.string, L.a.object, L.a.arrayOf(L.a.object.isRequired)])
            , z = function(e) {
            function a(a) {
                var t, n;
                return t = e.call(this, a) || this,
                    H(Object(F.a)(Object(F.a)(t)), "queries", []),
                    H(Object(F.a)(Object(F.a)(t)), "getMatches", (function() {
                            return function(e) {
                                var a = Object.keys(e);
                                if (1 === a.length && "__DEFAULT__" === a[0])
                                    return e.__DEFAULT__;
                                return e
                            }(t.queries.reduce((function(e, a) {
                                    var t, n = a.name, i = a.mqListener;
                                    return Object(M.a)({}, e, ((t = {})[n] = i.matches,
                                        t))
                                }
                            ), {}))
                        }
                    )),
                    H(Object(F.a)(Object(F.a)(t)), "updateMatches", (function() {
                            var e = t.getMatches();
                            t.setState((function() {
                                    return {
                                        matches: e
                                    }
                                }
                            ), t.onChange)
                        }
                    )),
                a.query || a.queries || a.query && a.queries || q()(!1),
                void 0 !== a.defaultMatches && a.query && "boolean" != typeof a.defaultMatches && q()(!1),
                void 0 !== a.defaultMatches && a.queries && "object" != typeof a.defaultMatches && q()(!1),
                    "object" != typeof window ? (n = void 0 !== a.defaultMatches ? a.defaultMatches : !!a.query || Object.keys(t.props.queries).reduce((function(e, a) {
                            var t;
                            return Object(M.a)({}, e, ((t = {})[a] = !0,
                                t))
                        }
                    ), {}),
                        t.state = {
                            matches: n
                        },
                        Object(F.a)(t)) : (t.initialize(),
                        t.state = {
                            matches: void 0 !== t.props.defaultMatches ? t.props.defaultMatches : t.getMatches()
                        },
                        t.onChange(),
                        t)
            }
            Object(j.a)(a, e);
            var t = a.prototype;
            return t.initialize = function() {
                var e = this
                    , a = this.props.targetWindow || window;
                "function" != typeof a.matchMedia && q()(!1);
                var t = this.props.queries || {
                    __DEFAULT__: this.props.query
                };
                this.queries = Object.keys(t).map((function(n) {
                        var i = t[n]
                            , r = "string" != typeof i ? W()(i) : i;
                        return {
                            name: n,
                            mqListener: new U(a,r,e.updateMatches)
                        }
                    }
                ))
            }
                ,
                t.componentDidMount = function() {
                    this.initialize(),
                    void 0 !== this.props.defaultMatches && this.updateMatches()
                }
                ,
                t.onChange = function() {
                    var e = this.props.onChange;
                    e && e(this.state.matches)
                }
                ,
                t.componentWillUnmount = function() {
                    this.queries.forEach((function(e) {
                            return e.mqListener.cancel()
                        }
                    ))
                }
                ,
                t.render = function() {
                    var e = this.props
                        , a = e.children
                        , t = e.render
                        , n = this.state.matches
                        , r = "object" == typeof n ? Object.keys(n).some((function(e) {
                            return n[e]
                        }
                    )) : n;
                    return t ? r ? t(n) : null : a ? "function" == typeof a ? a(n) : (!Array.isArray(a) || a.length) && r ? i.a.Children.only(a) && "string" == typeof i.a.Children.only(a).type ? i.a.Children.only(a) : i.a.cloneElement(i.a.Children.only(a), {
                        matches: n
                    }) : null : null
                }
                ,
                a
        }(i.a.Component);
        H(z, "propTypes", {
            defaultMatches: L.a.oneOfType([L.a.bool, L.a.objectOf(L.a.bool)]),
            query: Y,
            queries: L.a.objectOf(Y),
            render: L.a.func,
            children: L.a.oneOfType([L.a.node, L.a.func]),
            targetWindow: L.a.object,
            onChange: L.a.func
        });
        var X = z
            , B = t(396)
            , J = t(21)
            , V = t(9)
            , Z = t(85)
            , G = t(20)
            , Q = t(23)
            , K = t(177)
            , $ = t.n(K)
            , ee = t(16)
            , ae = t.n(ee)
            , te = t(92)
            , ne = t.n(te)
            , ie = t(14)
            , re = t.n(ie)
            , oe = t(1)
            , le = t.n(oe)
            , se = t(2135)
            , ce = {
            insert: "head",
            singleton: !1
        }
            , me = (le()(se.a, ce),
        se.a.locals || {})
            , de = Object(T.a)({
            title: {
                id: "users.pages.Program.components.ArchivePriceTable.title",
                defaultMessage: "番組価格"
            },
            headerLabelArchiveType: {
                id: "users.pages.Program.components.ArchivePriceTable.headerLabelArchiveType",
                defaultMessage: "区分"
            },
            headerLabelDuration: {
                id: "users.pages.Program.components.ArchivePriceTable.headerLabelDuration",
                defaultMessage: "放送時間"
            },
            headerLabelSubscriber: {
                id: "users.pages.Program.components.ArchivePriceTable.headerLabelSubscriber",
                defaultMessage: "会員"
            },
            headerLabelGuest: {
                id: "users.pages.Program.components.ArchivePriceTable.headerLabelGuest",
                defaultMessage: "非会員"
            },
            mainType: {
                id: "users.pages.Program.components.ArchivePriceTable.mainType",
                defaultMessage: "本編"
            },
            extensionType: {
                id: "users.pages.Program.components.ArchivePriceTable.extensionType",
                defaultMessage: "延長{index}"
            },
            free: {
                id: "users.pages.Program.components.ArchivePriceTable.free",
                defaultMessage: "無料"
            },
            amount: {
                id: "users.pages.Program.components.ArchivePriceTable.amount",
                defaultMessage: "{amount, number}円"
            },
            note: {
                id: "users.pages.Program.components.ArchivePriceTable.note",
                defaultMessage: "※表記は全て「税込」となります{br}※延長は直前の本編あるいは延長を購入していないと視聴することができません。{br}※延長1回目の購入は本編の購入のあと、延長2回目の購入は1回目までの購入のあととなります。"
            },
            canNotWatch: {
                id: "users.pages.Program.components.ArchivePriceTable.canNotWatch",
                defaultMessage: "会員のみ視聴できます"
            },
            purchaseMain: {
                id: "users.pages.Program.components.ArchivePriceTable.purchaseMain",
                defaultMessage: "本編を{br}購入する"
            },
            purchaseExtension: {
                id: "users.pages.Program.components.ArchivePriceTable.purchaseExtension",
                defaultMessage: "延長{index}まで{br}購入する"
            }
        })
            , ue = function(e) {
            var a = e.program
                , t = e.mainOneTimePlan
                , n = e.onPurchaseClicked
                , r = Object(V.i)(de)
                , o = i.a.useMemo((function() {
                    return function(e, a) {
                        var t, n = a && !e.viewerPlanType ? [a] : [], i = [{
                            type: "main",
                            duration: e.mainTime,
                            subscriberPrice: 0,
                            guestPrice: a ? a.amount : void 0,
                            oneTimePlans: ne()(n).call(n)
                        }];
                        return re()(i).call(i, ae()(t = e.extensions).call(t, (function(t, i) {
                                var r, o, l;
                                t.oneTimePlan && ("SubscriptionPlan" !== e.viewerPlanType || e.isExtensionChargedToSubscribers) && (e.viewerPlanType || a) && n.push(t.oneTimePlan);
                                var s = P()(r = ne()(n).call(n)).call(r, (function(e) {
                                        var a;
                                        return !(null !== (a = e.viewerPurchasedPlan) && void 0 !== a && a.isActive)
                                    }
                                ));
                                return {
                                    type: i,
                                    duration: t.extensionTime,
                                    subscriberPrice: e.isExtensionChargedToSubscribers ? null === (o = t.oneTimePlan) || void 0 === o ? void 0 : o.amount : 0,
                                    guestPrice: a ? null === (l = t.oneTimePlan) || void 0 === l ? void 0 : l.amount : void 0,
                                    oneTimePlans: s
                                }
                            }
                        )))
                    }(a, t)
                }
            ), [a, t])
                , l = i.a.useMemo((function() {
                    var e;
                    return $()(e = ["unaired", "onAir", "archiving", "archived"]).call(e, a.status) >= 0
                }
            ), [a.status])
                , s = function(e) {
                return void 0 === e ? r.canNotWatch() : 0 === e ? r.free() : r.amount({
                    amount: Object(Q.r)(e)
                })
            };
            return i.a.createElement("div", {
                className: me.root
            }, i.a.createElement("h4", null, r.title()), i.a.createElement(J.bb, null, r.note({
                br: i.a.createElement("br", null)
            })), i.a.createElement(J.Cb, {
                className: me.table
            }, i.a.createElement("thead", null, i.a.createElement("tr", null, i.a.createElement("th", {
                className: me.ArchiveTypeCol
            }, r.headerLabelArchiveType()), i.a.createElement("th", {
                className: me.DurationCol
            }, r.headerLabelDuration()), i.a.createElement("th", {
                className: me.subscriberCol
            }, r.headerLabelSubscriber()), i.a.createElement("th", {
                className: me.guestCol
            }, r.headerLabelGuest()), i.a.createElement("th", {
                className: me.pcPurchaseCol
            }))), i.a.createElement("tbody", null, ae()(o).call(o, (function(e, a) {
                    return i.a.createElement(i.a.Fragment, {
                        key: a
                    }, i.a.createElement("tr", null, i.a.createElement("td", null, "main" === e.type ? r.mainType() : r.extensionType({
                        index: e.type + 1
                    })), i.a.createElement("td", null, Object(Q.m)(e.duration)), i.a.createElement("td", {
                        className: me.subscriberCol
                    }, s(e.subscriberPrice)), i.a.createElement("td", {
                        className: me.guestCol
                    }, s(e.guestPrice)), i.a.createElement("td", {
                        className: me.pcPurchaseCol
                    }, i.a.createElement(J.b, {
                        className: me.purchaseButton,
                        disabled: !(l && e.oneTimePlans.length),
                        onClick: function() {
                            n(e.oneTimePlans)
                        }
                    }, "main" === e.type ? r.purchaseMain({
                        br: i.a.createElement("br", null)
                    }) : r.purchaseExtension({
                        index: e.type + 1,
                        br: i.a.createElement("br", null)
                    })))), i.a.createElement("tr", {
                        className: me.spPurchaseRow
                    }, i.a.createElement("td", {
                        colSpan: 4
                    }, i.a.createElement(J.b, {
                        className: me.spPurchaseButton,
                        disabled: !(l && e.oneTimePlans.length),
                        onClick: function() {
                            n(e.oneTimePlans)
                        }
                    }, "main" === e.type ? r.purchaseMain({
                        br: ""
                    }) : r.purchaseExtension({
                        index: e.type + 1,
                        br: ""
                    })))))
                }
            )))))
        };
        var pe, ge, ve, fe, he, be = t(1332), xe = t(2136), ke = {
            insert: "head",
            singleton: !1
        }, we = (le()(xe.a, ke),
        xe.a.locals || {}), Pe = Object(T.a)({
            hideComments: {
                id: "users.pages.Program.components.PCCommentsContainer.hideComments",
                defaultMessage: "コメントを非表示にする"
            }
        }), ye = function(e) {
            var a = e.className
                , t = e.canComment
                , n = e.currentTime
                , r = e.commentRepos
                , o = e.noCommentReason
                , l = g()(e, ["className", "canComment", "currentTime", "commentRepos", "noCommentReason"])
                , c = Object(V.m)(Pe);
            return i.a.createElement("div", {
                className: A()(we.PCCommentsContainer, a)
            }, i.a.createElement(J.g, s()({
                className: we.commentInput,
                canComment: t
            }, l)), i.a.createElement("a", {
                className: we.CloseCommentsButton,
                onClick: l.onFullscreenClicked
            }, c.hideComments), o ? i.a.createElement(be.b, {
                reason: o
            }) : i.a.createElement(be.a, {
                className: we.commentList,
                currentTime: n,
                commentRepos: r
            }))
        }, _e = t(224), Ee = t.n(_e), Ce = t(1513), Se = t(1508), Ne = t(509), Re = t(115), Ae = t.n(Re), Te = t(51), Me = t.n(Te), je = t(41), Fe = t(1136), He = t.n(Fe), Oe = t(143), Le = t(1512), De = t(44), qe = t.n(De);
        function Ie(e, a) {
            var t = b()(e);
            if (k.a) {
                var n = k()(e);
                a && (n = P()(n).call(n, (function(a) {
                        return _()(e, a).enumerable
                    }
                ))),
                    t.push.apply(t, n)
            }
            return t
        }
        function We(e) {
            for (var a = 1; a < arguments.length; a++) {
                var t = null != arguments[a] ? arguments[a] : {};
                a % 2 ? Ie(Object(t), !0).forEach((function(a) {
                        o()(e, a, t[a])
                    }
                )) : C.a ? Object.defineProperties(e, C()(t)) : Ie(Object(t)).forEach((function(a) {
                        Object.defineProperty(e, a, _()(t, a))
                    }
                ))
            }
            return e
        }
        var Ue = {}
            , Ye = [{
            kind: "FragmentDefinition",
            name: {
                kind: "Name",
                value: "UserPageReviewData"
            },
            typeCondition: {
                kind: "NamedType",
                name: {
                    kind: "Name",
                    value: "Review"
                }
            },
            selectionSet: {
                kind: "SelectionSet",
                selections: [{
                    kind: "Field",
                    name: {
                        kind: "Name",
                        value: "id"
                    }
                }, {
                    kind: "Field",
                    name: {
                        kind: "Name",
                        value: "body"
                    }
                }, {
                    kind: "Field",
                    name: {
                        kind: "Name",
                        value: "createdAt"
                    }
                }, {
                    kind: "Field",
                    name: {
                        kind: "Name",
                        value: "user"
                    },
                    selectionSet: {
                        kind: "SelectionSet",
                        selections: [{
                            kind: "Field",
                            name: {
                                kind: "Name",
                                value: "id"
                            }
                        }, {
                            kind: "Field",
                            name: {
                                kind: "Name",
                                value: "name"
                            }
                        }, {
                            kind: "Field",
                            name: {
                                kind: "Name",
                                value: "icon"
                            }
                        }]
                    }
                }]
            }
        }]
            , ze = [{
            kind: "FragmentDefinition",
            name: {
                kind: "Name",
                value: "UserPageOneTimePlanData"
            },
            typeCondition: {
                kind: "NamedType",
                name: {
                    kind: "Name",
                    value: "OneTimePlan"
                }
            },
            selectionSet: {
                kind: "SelectionSet",
                selections: [{
                    kind: "Field",
                    name: {
                        kind: "Name",
                        value: "id"
                    }
                }, {
                    kind: "Field",
                    name: {
                        kind: "Name",
                        value: "parentPlanType"
                    }
                }, {
                    kind: "Field",
                    name: {
                        kind: "Name",
                        value: "parentPlanId"
                    }
                }, {
                    kind: "Field",
                    name: {
                        kind: "Name",
                        value: "productType"
                    }
                }, {
                    kind: "Field",
                    name: {
                        kind: "Name",
                        value: "productId"
                    }
                }, {
                    kind: "Field",
                    name: {
                        kind: "Name",
                        value: "name"
                    }
                }, {
                    kind: "Field",
                    name: {
                        kind: "Name",
                        value: "amount"
                    }
                }, {
                    kind: "Field",
                    name: {
                        kind: "Name",
                        value: "currency"
                    }
                }, {
                    kind: "Field",
                    name: {
                        kind: "Name",
                        value: "isPurchasable"
                    }
                }, {
                    kind: "Field",
                    name: {
                        kind: "Name",
                        value: "viewerPurchasedPlan"
                    },
                    selectionSet: {
                        kind: "SelectionSet",
                        selections: [{
                            kind: "Field",
                            name: {
                                kind: "Name",
                                value: "isActive"
                            }
                        }]
                    }
                }]
            }
        }]
            , Xe = {
            kind: "Document",
            definitions: re()(pe = [{
                kind: "FragmentDefinition",
                name: {
                    kind: "Name",
                    value: "UserPageLiveExtensionData"
                },
                typeCondition: {
                    kind: "NamedType",
                    name: {
                        kind: "Name",
                        value: "LiveExtension"
                    }
                },
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "id"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "extensionTime"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "oneTimePlanId"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "oneTimePlan"
                        },
                        selectionSet: {
                            kind: "SelectionSet",
                            selections: [{
                                kind: "FragmentSpread",
                                name: {
                                    kind: "Name",
                                    value: "UserPageOneTimePlanData"
                                }
                            }]
                        }
                    }]
                }
            }]).call(pe, qe()(ze))
        }
            , Be = {
            kind: "Document",
            definitions: re()(ge = [{
                kind: "FragmentDefinition",
                name: {
                    kind: "Name",
                    value: "UserPageProgramData"
                },
                typeCondition: {
                    kind: "NamedType",
                    name: {
                        kind: "Name",
                        value: "Program"
                    }
                },
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "id"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "channelId"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "tenantId"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "programSlug"
                        },
                        directives: [{
                            kind: "Directive",
                            name: {
                                kind: "Name",
                                value: "client"
                            }
                        }]
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "adminComment"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "adminCommentDisappearAt"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "broadcastAt"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "detail"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "mainTime"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "previewTime"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "release"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "tags"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "title"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "totalPlayTime"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "viewerPlanType"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "isExtensionChargedToSubscribers"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "thumbnailUrl"
                        },
                        directives: [{
                            kind: "Directive",
                            name: {
                                kind: "Name",
                                value: "client"
                            }
                        }]
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "status"
                        },
                        directives: [{
                            kind: "Directive",
                            name: {
                                kind: "Name",
                                value: "client"
                            }
                        }]
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "archivedAt"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "releaseState"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "shouldArchive"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "myReview"
                        },
                        selectionSet: {
                            kind: "SelectionSet",
                            selections: [{
                                kind: "FragmentSpread",
                                name: {
                                    kind: "Name",
                                    value: "UserPageReviewData"
                                }
                            }, {
                                kind: "Field",
                                name: {
                                    kind: "Name",
                                    value: "state"
                                }
                            }]
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "extensions"
                        },
                        selectionSet: {
                            kind: "SelectionSet",
                            selections: [{
                                kind: "FragmentSpread",
                                name: {
                                    kind: "Name",
                                    value: "UserPageLiveExtensionData"
                                }
                            }]
                        }
                    }]
                }
            }]).call(ge, qe()(Ye), qe()(Xe.definitions))
        }
            , Je = {
            kind: "Document",
            definitions: re()(ve = [{
                kind: "OperationDefinition",
                operation: "query",
                name: {
                    kind: "Name",
                    value: "GetProgram"
                },
                variableDefinitions: [{
                    kind: "VariableDefinition",
                    variable: {
                        kind: "Variable",
                        name: {
                            kind: "Name",
                            value: "id"
                        }
                    },
                    type: {
                        kind: "NonNullType",
                        type: {
                            kind: "NamedType",
                            name: {
                                kind: "Name",
                                value: "ID"
                            }
                        }
                    }
                }, {
                    kind: "VariableDefinition",
                    variable: {
                        kind: "Variable",
                        name: {
                            kind: "Name",
                            value: "focusedReviewAuthorName"
                        }
                    },
                    type: {
                        kind: "NamedType",
                        name: {
                            kind: "Name",
                            value: "String"
                        }
                    }
                }, {
                    kind: "VariableDefinition",
                    variable: {
                        kind: "Variable",
                        name: {
                            kind: "Name",
                            value: "reviewsNextToken"
                        }
                    },
                    type: {
                        kind: "NamedType",
                        name: {
                            kind: "Name",
                            value: "String"
                        }
                    }
                }],
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "viewer"
                        },
                        selectionSet: {
                            kind: "SelectionSet",
                            selections: [{
                                kind: "Field",
                                name: {
                                    kind: "Name",
                                    value: "name"
                                }
                            }, {
                                kind: "Field",
                                name: {
                                    kind: "Name",
                                    value: "icon"
                                }
                            }]
                        }
                    }, {
                        kind: "Field",
                        alias: {
                            kind: "Name",
                            value: "program"
                        },
                        name: {
                            kind: "Name",
                            value: "getProgram"
                        },
                        arguments: [{
                            kind: "Argument",
                            name: {
                                kind: "Name",
                                value: "id"
                            },
                            value: {
                                kind: "Variable",
                                name: {
                                    kind: "Name",
                                    value: "id"
                                }
                            }
                        }],
                        selectionSet: {
                            kind: "SelectionSet",
                            selections: [{
                                kind: "FragmentSpread",
                                name: {
                                    kind: "Name",
                                    value: "UserPageProgramData"
                                }
                            }, {
                                kind: "Field",
                                name: {
                                    kind: "Name",
                                    value: "extensions"
                                },
                                selectionSet: {
                                    kind: "SelectionSet",
                                    selections: [{
                                        kind: "FragmentSpread",
                                        name: {
                                            kind: "Name",
                                            value: "UserPageLiveExtensionData"
                                        }
                                    }]
                                }
                            }, {
                                kind: "Field",
                                name: {
                                    kind: "Name",
                                    value: "channel"
                                },
                                selectionSet: {
                                    kind: "SelectionSet",
                                    selections: [{
                                        kind: "FragmentSpread",
                                        name: {
                                            kind: "Name",
                                            value: "UserPageChannelData"
                                        }
                                    }]
                                }
                            }, {
                                kind: "Field",
                                name: {
                                    kind: "Name",
                                    value: "handouts"
                                },
                                arguments: [{
                                    kind: "Argument",
                                    name: {
                                        kind: "Name",
                                        value: "sortDirection"
                                    },
                                    value: {
                                        kind: "EnumValue",
                                        value: "DESC"
                                    }
                                }],
                                selectionSet: {
                                    kind: "SelectionSet",
                                    selections: [{
                                        kind: "Field",
                                        name: {
                                            kind: "Name",
                                            value: "items"
                                        },
                                        selectionSet: {
                                            kind: "SelectionSet",
                                            selections: [{
                                                kind: "FragmentSpread",
                                                name: {
                                                    kind: "Name",
                                                    value: "UserPageHandoutData"
                                                }
                                            }]
                                        }
                                    }, {
                                        kind: "Field",
                                        name: {
                                            kind: "Name",
                                            value: "nextToken"
                                        }
                                    }]
                                }
                            }, {
                                kind: "Field",
                                name: {
                                    kind: "Name",
                                    value: "videos"
                                },
                                selectionSet: {
                                    kind: "SelectionSet",
                                    selections: [{
                                        kind: "Field",
                                        name: {
                                            kind: "Name",
                                            value: "items"
                                        },
                                        selectionSet: {
                                            kind: "SelectionSet",
                                            selections: [{
                                                kind: "FragmentSpread",
                                                name: {
                                                    kind: "Name",
                                                    value: "UserPageVideoData"
                                                }
                                            }]
                                        }
                                    }, {
                                        kind: "Field",
                                        name: {
                                            kind: "Name",
                                            value: "nextToken"
                                        }
                                    }]
                                }
                            }, {
                                kind: "Field",
                                name: {
                                    kind: "Name",
                                    value: "reviews"
                                },
                                arguments: [{
                                    kind: "Argument",
                                    name: {
                                        kind: "Name",
                                        value: "limit"
                                    },
                                    value: {
                                        kind: "IntValue",
                                        value: "10"
                                    }
                                }, {
                                    kind: "Argument",
                                    name: {
                                        kind: "Name",
                                        value: "state"
                                    },
                                    value: {
                                        kind: "EnumValue",
                                        value: "open"
                                    }
                                }, {
                                    kind: "Argument",
                                    name: {
                                        kind: "Name",
                                        value: "nextToken"
                                    },
                                    value: {
                                        kind: "Variable",
                                        name: {
                                            kind: "Name",
                                            value: "reviewsNextToken"
                                        }
                                    }
                                }],
                                selectionSet: {
                                    kind: "SelectionSet",
                                    selections: [{
                                        kind: "Field",
                                        name: {
                                            kind: "Name",
                                            value: "items"
                                        },
                                        selectionSet: {
                                            kind: "SelectionSet",
                                            selections: [{
                                                kind: "FragmentSpread",
                                                name: {
                                                    kind: "Name",
                                                    value: "UserPageReviewData"
                                                }
                                            }]
                                        }
                                    }, {
                                        kind: "Field",
                                        name: {
                                            kind: "Name",
                                            value: "nextToken"
                                        }
                                    }]
                                }
                            }, {
                                kind: "Field",
                                alias: {
                                    kind: "Name",
                                    value: "focusedReview"
                                },
                                name: {
                                    kind: "Name",
                                    value: "review"
                                },
                                arguments: [{
                                    kind: "Argument",
                                    name: {
                                        kind: "Name",
                                        value: "authorName"
                                    },
                                    value: {
                                        kind: "Variable",
                                        name: {
                                            kind: "Name",
                                            value: "focusedReviewAuthorName"
                                        }
                                    }
                                }],
                                selectionSet: {
                                    kind: "SelectionSet",
                                    selections: [{
                                        kind: "FragmentSpread",
                                        name: {
                                            kind: "Name",
                                            value: "UserPageReviewData"
                                        }
                                    }]
                                }
                            }, {
                                kind: "Field",
                                name: {
                                    kind: "Name",
                                    value: "onetimePlans"
                                },
                                selectionSet: {
                                    kind: "SelectionSet",
                                    selections: [{
                                        kind: "FragmentSpread",
                                        name: {
                                            kind: "Name",
                                            value: "UserPageOneTimePlanData"
                                        }
                                    }]
                                }
                            }]
                        }
                    }]
                }
            }]).call(ve, qe()(Be.definitions), qe()(Xe.definitions), qe()([{
                kind: "FragmentDefinition",
                name: {
                    kind: "Name",
                    value: "UserPageChannelData"
                },
                typeCondition: {
                    kind: "NamedType",
                    name: {
                        kind: "Name",
                        value: "Channel"
                    }
                },
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "id"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "tenantId"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "name"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "icon"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "iconUrl"
                        },
                        directives: [{
                            kind: "Directive",
                            name: {
                                kind: "Name",
                                value: "client"
                            }
                        }]
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "textOnPurchaseScreen"
                        }
                    }]
                }
            }]), qe()([{
                kind: "FragmentDefinition",
                name: {
                    kind: "Name",
                    value: "UserPageHandoutData"
                },
                typeCondition: {
                    kind: "NamedType",
                    name: {
                        kind: "Name",
                        value: "Handout"
                    }
                },
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "id"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "programId"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "extensionId"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "name"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "createdAt"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "thumbnailUrl"
                        },
                        directives: [{
                            kind: "Directive",
                            name: {
                                kind: "Name",
                                value: "client"
                            }
                        }]
                    }]
                }
            }]), qe()([{
                kind: "FragmentDefinition",
                name: {
                    kind: "Name",
                    value: "UserPageVideoData"
                },
                typeCondition: {
                    kind: "NamedType",
                    name: {
                        kind: "Name",
                        value: "Video"
                    }
                },
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "id"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "videoType"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "mediaStatus"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "liveUrl"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "archiveUrl"
                        }
                    }]
                }
            }]), qe()(Ye), qe()(ze))
        };
        var Ve = {
            kind: "Document",
            definitions: re()(fe = [{
                kind: "OperationDefinition",
                operation: "query",
                name: {
                    kind: "Name",
                    value: "GetChannelSubscriptionPlan"
                },
                variableDefinitions: [{
                    kind: "VariableDefinition",
                    variable: {
                        kind: "Variable",
                        name: {
                            kind: "Name",
                            value: "channelId"
                        }
                    },
                    type: {
                        kind: "NonNullType",
                        type: {
                            kind: "NamedType",
                            name: {
                                kind: "Name",
                                value: "ID"
                            }
                        }
                    }
                }],
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        alias: {
                            kind: "Name",
                            value: "channel"
                        },
                        name: {
                            kind: "Name",
                            value: "getChannel"
                        },
                        arguments: [{
                            kind: "Argument",
                            name: {
                                kind: "Name",
                                value: "id"
                            },
                            value: {
                                kind: "Variable",
                                name: {
                                    kind: "Name",
                                    value: "channelId"
                                }
                            }
                        }],
                        selectionSet: {
                            kind: "SelectionSet",
                            selections: [{
                                kind: "Field",
                                name: {
                                    kind: "Name",
                                    value: "subscriptionPlan"
                                },
                                selectionSet: {
                                    kind: "SelectionSet",
                                    selections: [{
                                        kind: "FragmentSpread",
                                        name: {
                                            kind: "Name",
                                            value: "UserPageSubscriptionPlanData"
                                        }
                                    }]
                                }
                            }]
                        }
                    }]
                }
            }]).call(fe, qe()([{
                kind: "FragmentDefinition",
                name: {
                    kind: "Name",
                    value: "UserPageSubscriptionPlanData"
                },
                typeCondition: {
                    kind: "NamedType",
                    name: {
                        kind: "Name",
                        value: "SubscriptionPlan"
                    }
                },
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "id"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "parentPlanType"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "parentPlanId"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "productType"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "productId"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "name"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "amount"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "currency"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "interval"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "intervalCount"
                        }
                    }, {
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "isPurchasable"
                        }
                    }]
                }
            }]))
        };
        var Ze = {
            kind: "Document",
            definitions: re()(he = [{
                kind: "OperationDefinition",
                operation: "mutation",
                name: {
                    kind: "Name",
                    value: "PostReview"
                },
                variableDefinitions: [{
                    kind: "VariableDefinition",
                    variable: {
                        kind: "Variable",
                        name: {
                            kind: "Name",
                            value: "programId"
                        }
                    },
                    type: {
                        kind: "NonNullType",
                        type: {
                            kind: "NamedType",
                            name: {
                                kind: "Name",
                                value: "ID"
                            }
                        }
                    }
                }, {
                    kind: "VariableDefinition",
                    variable: {
                        kind: "Variable",
                        name: {
                            kind: "Name",
                            value: "body"
                        }
                    },
                    type: {
                        kind: "NonNullType",
                        type: {
                            kind: "NamedType",
                            name: {
                                kind: "Name",
                                value: "String"
                            }
                        }
                    }
                }],
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        alias: {
                            kind: "Name",
                            value: "reivew"
                        },
                        name: {
                            kind: "Name",
                            value: "postReview"
                        },
                        arguments: [{
                            kind: "Argument",
                            name: {
                                kind: "Name",
                                value: "input"
                            },
                            value: {
                                kind: "ObjectValue",
                                fields: [{
                                    kind: "ObjectField",
                                    name: {
                                        kind: "Name",
                                        value: "programId"
                                    },
                                    value: {
                                        kind: "Variable",
                                        name: {
                                            kind: "Name",
                                            value: "programId"
                                        }
                                    }
                                }, {
                                    kind: "ObjectField",
                                    name: {
                                        kind: "Name",
                                        value: "body"
                                    },
                                    value: {
                                        kind: "Variable",
                                        name: {
                                            kind: "Name",
                                            value: "body"
                                        }
                                    }
                                }]
                            }
                        }],
                        selectionSet: {
                            kind: "SelectionSet",
                            selections: [{
                                kind: "FragmentSpread",
                                name: {
                                    kind: "Name",
                                    value: "UserPageReviewData"
                                }
                            }]
                        }
                    }]
                }
            }]).call(he, qe()(Ye))
        };
        var Ge = {
            kind: "Document",
            definitions: [{
                kind: "OperationDefinition",
                operation: "mutation",
                name: {
                    kind: "Name",
                    value: "RemoveReview"
                },
                variableDefinitions: [{
                    kind: "VariableDefinition",
                    variable: {
                        kind: "Variable",
                        name: {
                            kind: "Name",
                            value: "reviewId"
                        }
                    },
                    type: {
                        kind: "NonNullType",
                        type: {
                            kind: "NamedType",
                            name: {
                                kind: "Name",
                                value: "ID"
                            }
                        }
                    }
                }],
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        name: {
                            kind: "Name",
                            value: "removeReview"
                        },
                        arguments: [{
                            kind: "Argument",
                            name: {
                                kind: "Name",
                                value: "id"
                            },
                            value: {
                                kind: "Variable",
                                name: {
                                    kind: "Name",
                                    value: "reviewId"
                                }
                            }
                        }]
                    }]
                }
            }]
        };
        t(187),
            t(73);
        var Qe = t(1202)
            , Ke = t.n(Qe)
            , $e = t(62)
            , ea = t.n($e)
            , aa = t(188)
            , ta = t.n(aa)
            , na = t(189)
            , ia = t.n(na)
            , ra = t(171)
            , oa = t.n(ra)
            , la = t(506);
        function sa(e, a) {
            var t;
            if (void 0 === ta.a || null == ia()(e)) {
                if (Array.isArray(e) || (t = function(e, a) {
                    var t;
                    if (!e)
                        return;
                    if ("string" == typeof e)
                        return ca(e, a);
                    var n = ne()(t = Object.prototype.toString.call(e)).call(t, 8, -1);
                    "Object" === n && e.constructor && (n = e.constructor.name);
                    if ("Map" === n || "Set" === n)
                        return ea()(e);
                    if ("Arguments" === n || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n))
                        return ca(e, a)
                }(e)) || a && e && "number" == typeof e.length) {
                    t && (e = t);
                    var n = 0
                        , i = function() {};
                    return {
                        s: i,
                        n: function() {
                            return n >= e.length ? {
                                done: !0
                            } : {
                                done: !1,
                                value: e[n++]
                            }
                        },
                        e: function(e) {
                            throw e
                        },
                        f: i
                    }
                }
                throw new TypeError("Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")
            }
            var r, o = !0, l = !1;
            return {
                s: function() {
                    t = oa()(e)
                },
                n: function() {
                    var e = t.next();
                    return o = e.done,
                        e
                },
                e: function(e) {
                    l = !0,
                        r = e
                },
                f: function() {
                    try {
                        o || null == t.return || t.return()
                    } finally {
                        if (l)
                            throw r
                    }
                }
            }
        }
        function ca(e, a) {
            (null == a || a > e.length) && (a = e.length);
            for (var t = 0, n = new Array(a); t < a; t++)
                n[t] = e[t];
            return n
        }
        function ma(e, a) {
            var t = b()(e);
            if (k.a) {
                var n = k()(e);
                a && (n = P()(n).call(n, (function(a) {
                        return _()(e, a).enumerable
                    }
                ))),
                    t.push.apply(t, n)
            }
            return t
        }
        function da(e) {
            for (var a = 1; a < arguments.length; a++) {
                var t = null != arguments[a] ? arguments[a] : {};
                a % 2 ? ma(Object(t), !0).forEach((function(a) {
                        o()(e, a, t[a])
                    }
                )) : C.a ? Object.defineProperties(e, C()(t)) : ma(Object(t)).forEach((function(a) {
                        Object.defineProperty(e, a, _()(t, a))
                    }
                ))
            }
            return e
        }
        function ua(e) {
            if ((null == e ? void 0 : e.videoType) !== G.VideoType.ArchivedVideo)
                return null;
            var a = e.id.split(":")[1];
            return "free" === a ? "free" : "main" === a ? "main" : f()(a).call(a, "ext.") ? "extension" : (alert("get Archive Type Error"),
                null)
        }
        function pa(e) {
            var a, t, n, i, r, o, l, s, c, d, u, p, g, v, h, b, x, k, w = e.tenantId, y = e.channelId, _ = e.programSlug, E = e.focusedReviewAuthorName, C = Object(Q.G)({
                tenantId: w,
                channelId: y,
                programSlug: _
            }), S = Object(V.h)(), R = S.isAuthenticated, A = S.loading, T = S.login, M = Object(V.q)({
                skipIfLoading: !0,
                skipIfNotAuthorized: !0
            }).hasChannelPermission({
                tenantId: w,
                channelId: y
            }, "v:program"), j = (x = {
                returnPartialData: !0,
                fetchPolicy: "cache-and-network",
                nextFetchPolicy: "cache-first",
                variables: {
                    id: C,
                    focusedReviewAuthorName: E
                },
                skip: A
            },
                k = We(We({}, Ue), x),
                je.useQuery(Je, k)), F = j.error, H = j.data, O = j.loading, L = Object(Le.a)(C, j, {
                canSubscribe: function() {
                    return R
                }
            }), D = L.commentRepos, q = L.noCommentReason, I = L.postComment, W = Object(je.useApolloClient)(), U = null === (null == H || null === (a = H.program) || void 0 === a ? void 0 : a.viewerPlanType), Y = null === (i = function(e) {
                var a = We(We({}, Ue), e);
                return je.useQuery(Ve, a)
            }({
                fetchPolicy: "cache-and-network",
                variables: {
                    channelId: null == H || null === (t = H.program) || void 0 === t ? void 0 : t.channelId
                },
                skip: !0 !== U && !(null != H && null !== (n = H.program) && void 0 !== n && n.channelId)
            }).data) || void 0 === i || null === (r = i.channel) || void 0 === r ? void 0 : r.subscriptionPlan;
            if (F)
                return {
                    loading: !1,
                    error: F,
                    isAuthenticated: R,
                    login: T,
                    commentRepos: D,
                    noCommentReason: q
                };
            if (A || O && (null == H || null === (o = H.program) || void 0 === o || !o.id))
                return {
                    loading: !0,
                    isAuthenticated: R,
                    login: T,
                    commentRepos: D,
                    noCommentReason: q
                };
            var z = H.program;
            if (!O && !z)
                throw new Oe.b;
            console.assert(z.videos && !z.videos.nextToken, "videoが取り切れないのは想定されていない"),
                console.assert(z.handouts && !z.handouts.nextToken, "handoutsが取り切れないのは想定されていない");
            var X, B = z.videos.items;
            X = G.isLiveProgramStatus(z.status) ? Ae()(B).call(B, (function(e) {
                    return e.videoType === G.VideoType.LiveVideo
                }
            )) : function(e, a, t) {
                var n = "free";
                if (e.viewerPlanType || t) {
                    n = "main";
                    var i = !t && (e.isExtensionChargedToSubscribers || "OneTimePlan" === e.viewerPlanType);
                    (e.extensions || []).forEach((function(e, a) {
                            var t;
                            if (!i || e.oneTimePlan && null !== (t = e.oneTimePlan) && void 0 !== t && t.viewerPurchasedPlan) {
                                var r = "ext.".concat(a);
                                (!f()(n).call(n, "ext") || n < r) && (n = r)
                            }
                        }
                    ))
                } else
                    n = "free";
                return Ae()(a).call(a, (function(e) {
                        var a = e.id;
                        return e.videoType === G.VideoType.ArchivedVideo && Ke()(a).call(a, ":".concat(n))
                    }
                ))
            }(z, B, M);
            var J = z.myReview
                , Z = z.focusedReview
                , K = Ae()(l = z.onetimePlans || []).call(l, (function(e) {
                    return e.isPurchasable
                }
            ))
                , $ = function() {
                var e = m()(N.a.mark((function e(a, t) {
                        var n, i;
                        return N.a.wrap((function(e) {
                                for (; ; )
                                    switch (e.prev = e.next) {
                                        case 0:
                                            return e.next = 2,
                                                W.mutate({
                                                    mutation: Ze,
                                                    variables: {
                                                        programId: z.id,
                                                        body: t
                                                    }
                                                });
                                        case 2:
                                            return n = e.sent,
                                                i = n.data.review,
                                                e.next = 6,
                                                j.refetch();
                                        case 6:
                                            return e.abrupt("return", i);
                                        case 7:
                                        case "end":
                                            return e.stop()
                                    }
                            }
                        ), e)
                    }
                )));
                return function(a, t) {
                    return e.apply(this, arguments)
                }
            }()
                , ee = function() {
                var e = m()(N.a.mark((function e(a) {
                        var t, n;
                        return N.a.wrap((function(e) {
                                for (; ; )
                                    switch (e.prev = e.next) {
                                        case 0:
                                            return e.next = 2,
                                                W.mutate({
                                                    mutation: Ge,
                                                    variables: {
                                                        reviewId: a
                                                    },
                                                    update: function(e, t) {
                                                        var n, i, r = e.readQuery({
                                                            query: Je,
                                                            variables: {
                                                                id: z.id
                                                            }
                                                        }), o = r;
                                                        null !== (n = r.program) && void 0 !== n && n.reviews.items && (o = He()(r, {
                                                            program: {
                                                                myReview: null,
                                                                reviews: {
                                                                    items: P()(i = r.program.reviews.items).call(i, (function(e) {
                                                                            return e.id !== a
                                                                        }
                                                                    ))
                                                                }
                                                            }
                                                        }, {
                                                            arrayMerge: function(e, a) {
                                                                return a
                                                            }
                                                        }));
                                                        e.writeQuery({
                                                            query: Je,
                                                            data: o
                                                        })
                                                    }
                                                });
                                        case 2:
                                            return t = e.sent,
                                                n = t.data.review,
                                                e.next = 6,
                                                j.refetch();
                                        case 6:
                                            return e.abrupt("return", n);
                                        case 7:
                                        case "end":
                                            return e.stop()
                                    }
                            }
                        ), e)
                    }
                )));
                return function(a) {
                    return e.apply(this, arguments)
                }
            }()
                , te = function() {
                var e = m()(N.a.mark((function e() {
                        var a, t, n, i;
                        return N.a.wrap((function(e) {
                                for (; ; )
                                    switch (e.prev = e.next) {
                                        case 0:
                                            if (i = null === (a = j.data) || void 0 === a || null === (t = a.program) || void 0 === t || null === (n = t.reviews) || void 0 === n ? void 0 : n.nextToken) {
                                                e.next = 3;
                                                break
                                            }
                                            return e.abrupt("return");
                                        case 3:
                                            return e.next = 5,
                                                j.fetchMore({
                                                    variables: {
                                                        id: C,
                                                        reviewsNextToken: i
                                                    },
                                                    updateQuery: function(e, a) {
                                                        var t, n = a.fetchMoreResult, i = He()({}, n);
                                                        return i.program.reviews.items = re()(t = []).call(t, e.program.reviews.items, n.program.reviews.items),
                                                            i
                                                    }
                                                });
                                        case 5:
                                        case "end":
                                            return e.stop()
                                    }
                            }
                        ), e)
                    }
                )));
                return function() {
                    return e.apply(this, arguments)
                }
            }()
                , ne = function(e, a, t) {
                var n, i;
                t || (t = Object(la.c)());
                var r = !!e.viewerPlanType
                    , o = (t - new Date(e.broadcastAt).getTime()) / 1e3
                    , l = e.isExtensionChargedToSubscribers || "OneTimePlan" === e.viewerPlanType
                    , s = {
                    isMainPurcahsed: r,
                    hasViewProgramPrivilege: a,
                    mainPlanType: e.viewerPlanType,
                    extOneTimePlans: P()(n = ae()(i = e.extensions).call(i, (function(e) {
                            var a;
                            return !l || null !== (a = e.oneTimePlan) && void 0 !== a && a.viewerPurchasedPlan ? null : e.oneTimePlan
                        }
                    ))).call(n, (function(e) {
                            return e
                        }
                    ))
                };
                if (o < 0)
                    return da(da({}, s), {}, {
                        what: "notStarted",
                        canSee: !1,
                        currentExtensionIndex: 0
                    });
                if (!r && o < e.previewTime)
                    return da(da({}, s), {}, {
                        what: "preview",
                        canSee: !0,
                        currentExtensionIndex: 0
                    });
                if (o < e.mainTime) {
                    var c, m = 0, d = sa(e.extensions);
                    try {
                        for (d.s(); !(c = d.n()).done; ) {
                            var u, p = c.value;
                            p.oneTimePlan && null !== (u = p.oneTimePlan) && void 0 !== u && u.viewerPurchasedPlan && (m += 1)
                        }
                    } catch (e) {
                        d.e(e)
                    } finally {
                        d.f()
                    }
                    return da(da({}, s), {}, {
                        what: "main",
                        canSee: a || r,
                        currentExtensionIndex: 0,
                        watchableExntensionIndex: m
                    })
                }
                var g, v, f = !0, h = 0, b = 0, x = e.mainTime, k = sa(e.extensions);
                try {
                    for (k.s(); !(v = k.n()).done; ) {
                        var w, y = v.value;
                        y.oneTimePlan && null !== (w = y.oneTimePlan) && void 0 !== w && w.viewerPurchasedPlan && (b += 1);
                        var _, E = x + y.extensionTime;
                        if (o < x)
                            ;
                        else if (x <= o && o < E) {
                            var C;
                            g = y.id,
                                h += 1,
                            !l || !y.oneTimePlan || null !== (C = y.oneTimePlan) && void 0 !== C && C.viewerPurchasedPlan || (f = !1)
                        }
                        if (E <= o)
                            !l || !y.oneTimePlan || null !== (_ = y.oneTimePlan) && void 0 !== _ && _.viewerPurchasedPlan || (f = !1),
                                h += 1;
                        x = E
                    }
                } catch (e) {
                    k.e(e)
                } finally {
                    k.f()
                }
                return da(da({}, s), {}, g ? {
                    what: "extension",
                    extensionId: g,
                    canSee: a || f,
                    currentExtensionIndex: h,
                    watchableExntensionIndex: b
                } : {
                    what: "finished",
                    canSee: !1,
                    currentExtensionIndex: 0,
                    watchableExntensionIndex: b
                })
            }(z, M);
            return {
                loading: !1,
                data: {
                    program: z,
                    channel: z.channel,
                    handouts: z.handouts.items,
                    video: X,
                    myReview: J,
                    reviews: void 0 === (null === (s = j.data) || void 0 === s || null === (c = s.program) || void 0 === c ? void 0 : c.reviews) ? null : null !== (d = null === (u = j.data) || void 0 === u || null === (p = u.program) || void 0 === p ? void 0 : p.reviews.items) && void 0 !== d ? d : [],
                    focusedReview: (null == J ? void 0 : J.id) !== (null == Z ? void 0 : Z.id) ? Z : null,
                    hasMoreReviews: !(null === (g = j.data) || void 0 === g || null === (v = g.program) || void 0 === v || null === (h = v.reviews) || void 0 === h || !h.nextToken),
                    subscriptionPlan: Y,
                    onetimePlan: K,
                    liveAiredWhat: ne,
                    shouldShowReview: Me()(b = ["genron", "nagoyadagaya", "glucose", "testtenant01", "testtenant02"]).call(b, w),
                    canUseHandout: (ne.isMainPurcahsed || ne.hasViewProgramPrivilege) && z.status !== G.ProgramStatus.ended,
                    canComment: ga(z, ne)
                },
                commentRepos: D,
                noCommentReason: q,
                isAuthenticated: R,
                login: T,
                mutations: {
                    postComment: I,
                    postReview: $,
                    removeReview: ee,
                    fetchMoreReviews: te
                }
            }
        }
        function ga(e, a) {
            return e.status === G.ProgramStatus.ended ? "program_ended" : e.status !== G.ProgramStatus.onAir && e.status !== G.ProgramStatus.archived ? "not_playing" : e.viewerPlanType || a.hasViewProgramPrivilege ? "ok" : "no_purchase"
        }
        var va = t(2137)
            , fa = {
            insert: "head",
            singleton: !1
        }
            , ha = (le()(va.a, fa),
        va.a.locals || {})
            , ba = Object(T.a)({
            loginRequired: {
                id: "users.pages.Program.components.PlayerContainer.loginRequired",
                defaultMessage: "※ ログインが必要です"
            },
            or: {
                id: "users.pages.Program.components.PlayerContainer.or",
                defaultMessage: "もしくは"
            },
            purchaseProgramWithLinefeed: {
                id: "users.pages.Program.components.PlayerContainer.purchaseProgramWithLinefeed",
                defaultMessage: "{price}円で{linefeed}番組本編を購入"
            },
            purchaseExtensionWithLinefeed: {
                id: "users.pages.Program.components.PlayerContainer.purchaseExtensionWithLinefeed",
                defaultMessage: "{price}円で{linefeed}延長を購入"
            },
            subscribeChannelWithLinefeed: {
                id: "users.pages.Program.components.PlayerContainer.subscribeChannelWithLinefeed",
                defaultMessage: "月額{price}円で{linefeed}チャンネル購読"
            },
            toWatchProgram: {
                id: "users.pages.Program.components.PlayerContainer.toWatchProgram",
                defaultMessage: "この番組を視聴するためには"
            },
            toContinueWatching: {
                id: "users.pages.Program.components.PlayerContainer.toContinueWatching",
                defaultMessage: "続けて視聴するには"
            },
            watchBeginningForFree: {
                id: "users.pages.Program.components.PlayerContainer.watchBeginningForFree",
                defaultMessage: "冒頭を無料で見る"
            },
            previewExistMessage: {
                id: "users.pages.Program.components.PlayerContainer.previewExistMessage",
                defaultMessage: "冒頭を無料で見ることができます。{br}番組開始後に冒頭無料視聴をお選びください。"
            },
            watchRepeat: {
                id: "users.pages.Program.components.PlayerContainer.watchRepeat",
                defaultMessage: "冒頭から見る"
            }
        })
            , xa = Object(T.a)({
            purchase: {
                id: "users.pages.Program.components.PlayerContainer.purchase",
                defaultMessage: "購入する"
            },
            purchaseProgram: {
                id: "users.pages.Program.components.PlayerContainer.purchaseProgram",
                defaultMessage: "{price}円で番組本編を購入"
            },
            purchaseExtension: {
                id: "users.pages.Program.components.PlayerContainer.purchaseExtension",
                defaultMessage: "{price}円で延長を購入"
            },
            subscribeChannel: {
                id: "users.pages.Program.components.PlayerContainer.subscribeChannel",
                defaultMessage: "月額{price}円でチャンネルを購読"
            }
        })
            , ka = Object(T.a)({
            closePublic: {
                id: "users.pages.Program.components.PlayerContainer.closePublic",
                defaultMessage: "この動画の公開は終了しました"
            },
            draft: {
                id: "users.pages.Program.components.PlayerContainer.draft",
                defaultMessage: "生放送は下書き中です"
            },
            private: {
                id: "users.pages.Program.components.PlayerContainer.private",
                defaultMessage: "この動画は非公開です"
            },
            waitForArchived: {
                id: "users.pages.Program.components.PlayerContainer.waitForArchived",
                defaultMessage: "アーカイブ化までお待ちください"
            },
            waitForBroadCast: {
                id: "users.pages.Program.components.PlayerContainer.waitForBroadCast",
                defaultMessage: "放送開始までお待ちください"
            },
            ended: {
                id: "users.pages.Program.components.PlayerContainer.ended",
                defaultMessage: "アーカイブ動画の公開は終了しました"
            }
        })
            , wa = function(e) {
            var a = e.className
                , t = e.thumbnailUrl
                , n = e.children;
            return i.a.createElement("div", {
                className: A()(ha.ProgramThumbnail, a),
                style: t ? {
                    "--transparentImage": "url(".concat(t, ")")
                } : {}
            }, n)
        }
            , Pa = function(e) {
            var a = e.isExtension
                , t = void 0 !== a && a
                , n = e.canPreview
                , r = e.isAuthenticated
                , o = e.subscriptionPlan
                , l = e.onetimePlans
                , s = e.shouldShowPreviewExistMessage
                , c = void 0 !== s && s
                , m = e.canRepeat
                , d = void 0 !== m && m
                , u = g()(e, ["isExtension", "canPreview", "isAuthenticated", "subscriptionPlan", "onetimePlans", "shouldShowPreviewExistMessage", "canRepeat"])
                , p = Object(V.i)(ba);
            console.assert(o || l && l.length >= 1),
            o && console.assert("jpy" === o.currency);
            var v = l ? Object(Ne.g)(Ee()(l).call(l, (function(e, a) {
                    return console.assert("jpy" === a.currency),
                    e + a.amount
                }
            ), 0)) : 0;
            return i.a.createElement("div", {
                className: ha.SuggestPlans
            }, t ? p.toContinueWatching() : p.toWatchProgram(), i.a.createElement("div", {
                className: ha.SuggestButtons
            }, o && i.a.createElement(J.b, {
                onClick: function() {
                    var e;
                    return null === (e = u.onPurchaseClicked) || void 0 === e ? void 0 : e.call(u, o)
                }
            }, p.subscribeChannelWithLinefeed({
                price: Object(Ne.g)(o.amount),
                linefeed: i.a.createElement("br", {
                    key: "br"
                })
            })), l && l.length >= 1 && i.a.createElement(J.b, {
                onClick: function() {
                    var e;
                    return null === (e = u.onPurchaseClicked) || void 0 === e ? void 0 : e.call(u, l)
                }
            }, t ? p.purchaseExtensionWithLinefeed({
                price: v,
                linefeed: i.a.createElement("br", {
                    key: "br"
                })
            }) : p.purchaseProgramWithLinefeed({
                price: v,
                linefeed: i.a.createElement("br", {
                    key: "br"
                })
            }))), n && i.a.createElement(i.a.Fragment, null, p.or(), i.a.createElement(J.b, {
                className: ha.SuggestPlayPreview,
                onClick: u.onSeePreviewClicked
            }, p.watchBeginningForFree(), !r && i.a.createElement("p", {
                className: ha.note
            }, p.loginRequired()))), d && i.a.createElement(i.a.Fragment, null, p.or(), i.a.createElement(J.b, {
                className: ha.SuggestPlayPreview,
                onClick: u.onWatchRepeatClicked
            }, p.watchRepeat())), c && i.a.createElement("div", {
                className: ha.previewExistMessage
            }, p.previewExistMessage({
                br: i.a.createElement("br", null)
            })))
        }
            , ya = function(e) {
            var a = e.isExtension
                , t = void 0 !== a && a
                , n = e.subscriptionPlan
                , r = e.onetimePlans
                , o = g()(e, ["isExtension", "subscriptionPlan", "onetimePlans"])
                , l = Object(V.i)(xa)
                , s = r ? Object(Ne.g)(Ee()(r).call(r, (function(e, a) {
                    return console.assert("jpy" === a.currency),
                    e + a.amount
                }
            ), 0)) : 0;
            return i.a.createElement("div", {
                className: ha.SuggestPlansOverlay
            }, n && i.a.createElement("div", {
                className: ha.SuggestPlansOverlayPlan
            }, i.a.createElement("span", null, l.subscribeChannel({
                price: Object(Ne.g)(n.amount)
            })), i.a.createElement(J.b, {
                onClick: m()(N.a.mark((function e() {
                        var a;
                        return N.a.wrap((function(e) {
                                for (; ; )
                                    switch (e.prev = e.next) {
                                        case 0:
                                            if (!document.fullscreenElement) {
                                                e.next = 3;
                                                break
                                            }
                                            return e.next = 3,
                                                document.exitFullscreen();
                                        case 3:
                                            null === (a = o.onPurchaseClicked) || void 0 === a || a.call(o, n);
                                        case 4:
                                        case "end":
                                            return e.stop()
                                    }
                            }
                        ), e)
                    }
                )))
            }, l.purchase())), r && r.length >= 1 && i.a.createElement("div", {
                className: ha.SuggestPlansOverlayPlan
            }, i.a.createElement("span", null, t ? l.purchaseExtension({
                price: s
            }) : l.purchaseProgram({
                price: s
            })), i.a.createElement(J.b, {
                onClick: m()(N.a.mark((function e() {
                        var a;
                        return N.a.wrap((function(e) {
                                for (; ; )
                                    switch (e.prev = e.next) {
                                        case 0:
                                            if (!document.fullscreenElement) {
                                                e.next = 3;
                                                break
                                            }
                                            return e.next = 3,
                                                document.exitFullscreen();
                                        case 3:
                                            null === (a = o.onPurchaseClicked) || void 0 === a || a.call(o, r);
                                        case 4:
                                        case "end":
                                            return e.stop()
                                    }
                            }
                        ), e)
                    }
                )))
            }, l.purchase())))
        }
            , _a = function(e) {
            var a = e.children;
            return i.a.createElement("div", {
                className: ha.MessageOverlay
            }, a)
        }
            , Ea = function(e) {
            var a, t, n, r, o, l, c = e.className, m = e.videoPlayerRef, d = e.program, p = e.video, v = e.liveAiredWhat, f = e.subscriptionPlan, h = e.onetimePlan, b = e.isFullwidth, x = e.isAuthenticated, k = e.thumbnailUrl, w = e.savedVideoPlayerStateRef, P = g()(e, ["className", "videoPlayerRef", "program", "video", "liveAiredWhat", "subscriptionPlan", "onetimePlan", "isFullwidth", "isAuthenticated", "thumbnailUrl", "savedVideoPlayerStateRef"]), y = Object(V.m)(ka), _ = d.status, E = i.a.useState(!1), C = u()(E, 2), S = C[0], N = C[1], R = i.a.useRef(null), T = i.a.useState(!1), M = u()(T, 2), j = M[0], F = M[1], H = i.a.useCallback((function(e) {
                    var a;
                    (e.preventDefault(),
                        e.stopPropagation(),
                    x || !P.onLoginRequired) ? (N(!0),
                        console.assert(_ === G.ProgramStatus.onAir || G.ProgramStatus.archived)) : null === (a = P.onLoginRequired) || void 0 === a || a.call(P)
                }
            ), [x, P.onLoginRequired]), O = i.a.useCallback((function(e) {
                    e.preventDefault(),
                        e.stopPropagation(),
                        F(!0)
                }
            ), []), L = !1;
            if (v.isMainPurcahsed || v.hasViewProgramPrivilege)
                switch (_) {
                    case G.ProgramStatus.draft:
                        o = i.a.createElement(_a, null, y.draft);
                        break;
                    case G.ProgramStatus.unaired:
                        o = i.a.createElement(_a, null, y.waitForBroadCast);
                        break;
                    case G.ProgramStatus.onAir:
                        console.assert(p.videoType === G.VideoType.LiveVideo);
                        var D = v.canSee
                            , q = v.extOneTimePlans;
                        D && (r = p),
                        null != q && q.length && (D ? (l = !0,
                            o = i.a.createElement(ya, s()({
                                isExtension: !0,
                                subscriptionPlan: null,
                                onetimePlans: q
                            }, P))) : o = i.a.createElement(Pa, s()({
                            isExtension: !0,
                            canPreview: !1,
                            subscriptionPlan: null,
                            onetimePlans: q
                        }, P)));
                        break;
                    case G.ProgramStatus.archiving:
                        o = i.a.createElement(_a, null, y.waitForArchived);
                        break;
                    case G.ProgramStatus.private:
                        o = i.a.createElement(_a, null, y.private);
                        break;
                    case G.ProgramStatus.archived:
                        p && p.videoType === G.VideoType.ArchivedVideo && (r = p);
                        break;
                    case G.ProgramStatus.ended:
                        o = i.a.createElement(_a, null, y.ended);
                        break;
                    default:
                        console.error("INCONSISTENCY ERROR", _)
                }
            else {
                var I = (null == p ? void 0 : p.videoType) === G.VideoType.LiveVideo ? "preview" === v.what : "free" === ua(p)
                    , W = "notStarted" === v.what && d.previewTime > 0;
                _ === G.ProgramStatus.draft ? o = i.a.createElement(_a, null, y.draft) : _ === G.ProgramStatus.private ? o = i.a.createElement(_a, null, y.private) : _ === G.ProgramStatus.ended ? o = i.a.createElement(_a, null, y.closePublic) : _ === G.ProgramStatus.onAir && I && S ? (console.assert(p.videoType === G.VideoType.LiveVideo),
                    r = p,
                    o = i.a.createElement(ya, s()({
                        subscriptionPlan: f,
                        onetimePlans: h ? [h] : []
                    }, P))) : (f || h) && (o = i.a.createElement(Pa, s()({
                    canPreview: I,
                    isAuthenticated: x,
                    subscriptionPlan: f,
                    onetimePlans: h ? [h] : []
                }, P, {
                    onSeePreviewClicked: I ? H : void 0,
                    shouldShowPreviewExistMessage: W
                })))
            }
            if ((null == p ? void 0 : p.videoType) === G.VideoType.ArchivedVideo) {
                var U = null == m ? void 0 : m.current
                    , Y = null == U ? void 0 : U.getArchivePlayerStatus()
                    , z = ua(p)
                    , X = v.extOneTimePlans
                    , B = 0 < X.length;
                if ("free" === z && S && "ended" === Y)
                    L = !0,
                        o = i.a.createElement(Pa, s()({
                            canPreview: !1,
                            isAuthenticated: x,
                            subscriptionPlan: f,
                            onetimePlans: h ? [h] : []
                        }, P));
                else if ("free" === z && S)
                    r = p,
                        o = i.a.createElement(ya, s()({
                            subscriptionPlan: f,
                            onetimePlans: h ? [h] : []
                        }, P));
                else if ("playing" === Y) {
                    var J = Math.min(900, (null == U ? void 0 : U.getArchiveDuration()) / 4);
                    ((null == U ? void 0 : U.getArchiveDuration()) - (null == U ? void 0 : U.getCurrentTime())) / 1e3 < J && B && (l = !0,
                        o = i.a.createElement(ya, s()({
                            isExtension: !0,
                            subscriptionPlan: null,
                            onetimePlans: X
                        }, P)))
                } else
                    "ended" === (null == U ? void 0 : U.getArchivePlayerStatus()) && B && (L = !0,
                    j && F(!1),
                        o = i.a.createElement(Pa, s()({
                            isExtension: !0,
                            canPreview: !1,
                            subscriptionPlan: null,
                            onetimePlans: X,
                            canRepeat: !0,
                            onWatchRepeatClicked: O
                        }, P)))
            }
            return i.a.createElement("div", {
                className: A()(ha.PlayerContainer, c),
                ref: R
            }, "LiveVideo" === (null === (a = r) || void 0 === a ? void 0 : a.videoType) ? i.a.createElement(Se.b, {
                key: "VideoPlayer",
                ref: m,
                videoId: r.id,
                className: ha.VideoPlayer,
                liveUrl: r.liveUrl,
                liveStartedAt: d.broadcastAt,
                liveWillEndAt: new Date(new Date(d.broadcastAt).getTime() + 1e3 * d.totalPlayTime).toISOString(),
                playerContainerRef: R,
                isExtensionOverlayDisplayed: l,
                isSeeingPreview: S,
                posterUrl: k
            }) : L ? i.a.createElement(wa, {
                className: ha.ProgramThumbnail,
                thumbnailUrl: k
            }) : "ArchivedVideo" === (null === (t = r) || void 0 === t ? void 0 : t.videoType) ? i.a.createElement(Se.a, {
                key: "VideoPlayer",
                className: ha.VideoPlayer,
                ref: m,
                videoId: r.id,
                manifestUrl: null === (n = r) || void 0 === n ? void 0 : n.archiveUrl,
                playerContainerRef: R,
                savedVideoPlayerStateRef: w,
                posterUrl: k
            }) : i.a.createElement(wa, {
                className: ha.ProgramThumbnail,
                thumbnailUrl: k
            }), o, (d.adminComment || b) && i.a.createElement("div", {
                className: ha.OperatorCommentOverlay
            }, i.a.createElement(Ce.a, {
                comment: d.adminComment,
                disappearAt: d.adminCommentDisappearAt
            }), b && i.a.createElement("div", {
                className: ha.ToggleCommentButtonContainer
            }, i.a.createElement("i", {
                className: "fas fa-comments",
                onClick: P.onToggleComments
            }))))
        }
            , Ca = t(2139)
            , Sa = {
            insert: "head",
            singleton: !1
        }
            , Na = (le()(Ca.a, Sa),
        Ca.a.locals || {})
            , Ra = Object(T.a)({
            draft: {
                id: "users.pages.Program.components.ProgramNotice.draft",
                defaultMessage: "この放送はまだ下書き中です"
            },
            saving: {
                id: "users.pages.Program.components.ProgramNotice.saving",
                defaultMessage: "この放送は終了しました。アーカイブ動画への変換中です。視聴可能になるまで、少々お待ちください。"
            }
        })
            , Aa = Object(T.a)({
            beginAt: {
                id: "users.pages.Program.components.ProgramNotice.beginAt",
                defaultMessage: "この生放送は<b>{datetime}</b>から<wbr></wbr>開始予定です"
            },
            duration: {
                id: "users.pages.Program.components.ProgramNotice.duration",
                defaultMessage: "この生放送はあと<b>{duration}</b>で<wbr></wbr>開始予定です"
            }
        })
            , Ta = function(e) {
            var a = e.style
                , t = e.children;
            return i.a.createElement("div", {
                className: A()(Na.ProgramNotice, a && Na[a])
            }, t)
        }
            , Ma = function(e) {
            var a = e.broadcastAt
                , t = Object(V.i)(Aa)
                , n = i.a.useMemo((function() {
                    return new Date(a).getTime()
                }
            ), [a])
                , r = i.a.useState(Math.floor((n - (new Date).getTime()) / 1e3))
                , o = u()(r, 2)
                , l = o[0]
                , s = o[1]
                , c = i.a.useRef(void 0);
            return i.a.useEffect((function() {
                    return 0 < l && l < 7200 ? c.current || (c.current = setInterval((function() {
                            var e = Math.floor((n - (new Date).getTime()) / 1e3);
                            s(e)
                        }
                    ), 1e3)) : c.current && (clearInterval(c.current),
                        c.current = void 0),
                        function() {
                            c.current && (clearInterval(c.current),
                                c.current = void 0)
                        }
                }
            ), [n]),
                l <= 0 ? i.a.createElement(i.a.Fragment, null) : l <= 7200 ? i.a.createElement(Ta, {
                    style: "red"
                }, t.duration({
                    duration: Object(Q.m)(l),
                    b: function() {
                        for (var e = arguments.length, a = new Array(e), t = 0; t < e; t++)
                            a[t] = arguments[t];
                        return i.a.createElement("b", null, a)
                    },
                    wbr: function() {
                        return i.a.createElement("wbr", null)
                    }
                })) : i.a.createElement(Ta, {
                    style: "red"
                }, t.beginAt({
                    datetime: Object(Q.l)(a),
                    b: function() {
                        for (var e = arguments.length, a = new Array(e), t = 0; t < e; t++)
                            a[t] = arguments[t];
                        return i.a.createElement("b", null, a)
                    },
                    wbr: function() {
                        return i.a.createElement("wbr", null)
                    }
                }))
        }
            , ja = function(e) {
            var a = e.className
                , t = e.program
                , n = Object(V.m)(Ra)
                , r = t.status
                , o = t.broadcastAt
                , l = [];
            switch (r) {
                case G.ProgramStatus.draft:
                    l.push(i.a.createElement(Ta, {
                        key: "draft"
                    }, n.draft));
                    break;
                case G.ProgramStatus.unaired:
                    l.push(i.a.createElement(Ma, {
                        key: "timer",
                        broadcastAt: o
                    }));
                    break;
                case G.ProgramStatus.archiving:
                    l.push(i.a.createElement(Ta, {
                        key: "archiving"
                    }, n.saving))
            }
            return l.length ? i.a.createElement("div", {
                className: a
            }, l) : i.a.createElement(i.a.Fragment, null)
        }
            , Fa = t(124)
            , Ha = Object(T.a)({
            recommend: {
                id: "users.pages.Program.message.recommend",
                defaultMessage: "おすすめ"
            },
            handouts: {
                id: "users.pages.Program.message.handouts",
                defaultMessage: "関連資料"
            },
            reviews: {
                id: "users.pages.Program.message.reviews",
                defaultMessage: "レビュー"
            }
        })
            , Oa = t(2140)
            , La = {
            insert: "head",
            singleton: !1
        }
            , Da = (le()(Oa.a, La),
        Oa.a.locals || {})
            , qa = function() {
            return i.a.createElement("div", {
                className: Da.Player
            }, i.a.createElement(J.R, null))
        }
            , Ia = function() {
            return i.a.createElement("div", {
                className: Da.Comments
            })
        }
            , Wa = function() {
            return i.a.createElement(i.a.Fragment, null, i.a.createElement(Fa.a, {
                className: Da.title,
                viewBox: "0 0 100 24",
                height: "24",
                width: "100%",
                preserveAspectRatio: "none"
            }, i.a.createElement("rect", {
                height: "24",
                width: "100"
            })), i.a.createElement(Fa.a, {
                className: Da.title,
                viewBox: "0 0 100 24",
                height: "24",
                width: "50%",
                preserveAspectRatio: "none"
            }, i.a.createElement("rect", {
                height: "24",
                width: "100"
            })), i.a.createElement("div", {
                className: Da.detail
            }, i.a.createElement(J.f, {
                r: 24
            }), i.a.createElement("div", {
                className: Da.channelName
            }, i.a.createElement(Fa.a, {
                viewBox: "0 0 100 20",
                height: "20",
                width: "50%",
                preserveAspectRatio: "none",
                style: {
                    marginBottom: 8
                }
            }, i.a.createElement("rect", {
                height: "20",
                width: "100"
            })), i.a.createElement(Fa.a, {
                viewBox: "0 0 100 20",
                height: "20",
                width: "50%",
                preserveAspectRatio: "none"
            }, i.a.createElement("rect", {
                height: "20",
                width: "100"
            })))))
        }
            , Ua = function() {
            var e;
            return i.a.createElement("ul", {
                className: Da.HandoutList
            }, ae()(e = Object(Q.I)(6)).call(e, (function(e) {
                    return i.a.createElement(Ya, {
                        key: e
                    })
                }
            )))
        }
            , Ya = function() {
            return i.a.createElement("li", null, i.a.createElement(Fa.a, {
                className: Da.handoutThumbnail,
                viewBox: "0 0 144 81",
                height: "81",
                width: "144px"
            }, i.a.createElement("rect", {
                width: "144",
                height: "81"
            })), i.a.createElement("div", {
                className: Da.handoutDetail
            }, i.a.createElement(Fa.a, {
                viewBox: "0 0 100 28",
                height: "28",
                width: "100%",
                preserveAspectRatio: "none",
                style: {
                    marginBottom: 8
                }
            }, i.a.createElement("rect", {
                width: "100",
                height: "28"
            })), i.a.createElement(Fa.a, {
                viewBox: "0 0 100 28",
                height: "28",
                width: "50%",
                preserveAspectRatio: "none"
            }, i.a.createElement("rect", {
                width: "100",
                height: "28"
            }))))
        }
            , za = function() {
            var e = Object(V.m)(Ha);
            return i.a.createElement("div", {
                className: Da.PCProgramPage
            }, i.a.createElement("main", null, i.a.createElement("div", {
                className: Da.PlayerContainer
            }, i.a.createElement(qa, null), i.a.createElement(Ia, null))), i.a.createElement("aside", null, i.a.createElement("div", null, i.a.createElement("section", {
                className: Da.TitleAndDetail
            }, i.a.createElement(Wa, null)), i.a.createElement("section", {
                className: Da.Handouts
            }, i.a.createElement(J.B, {
                className: Da.heading,
                level: 2,
                text: e.handouts,
                underline: !0
            }), i.a.createElement(Ua, null)))))
        }
            , Xa = function() {
            return i.a.createElement("div", {
                className: Da.SPOnelineComment
            }, i.a.createElement("div", {
                className: Da.OpenButton
            }))
        }
            , Ba = function() {
            var e;
            return i.a.createElement(J.fb, null, i.a.createElement("div", {
                className: Da.SPProgramTabHeader
            }, ae()(e = Object(Q.I)(4)).call(e, (function(e) {
                    return i.a.createElement("div", {
                        key: e
                    }, i.a.createElement(J.f, {
                        r: 20
                    }))
                }
            ))))
        }
            , Ja = function() {
            return i.a.createElement("div", {
                className: Da.SPProgramPage
            }, i.a.createElement(qa, null), i.a.createElement(Xa, null), i.a.createElement(Ba, null), i.a.createElement("section", {
                className: Da.TitleAndDetail
            }, i.a.createElement(Wa, null)))
        }
            , Va = function() {
            return i.a.createElement(X, {
                queries: {
                    small: "(max-width:560px)"
                }
            }, (function(e) {
                    var a = e.small;
                    return i.a.createElement(i.a.Fragment, null, a ? i.a.createElement(Ja, null) : i.a.createElement(za, null))
                }
            ))
        }
            , Za = t(154)
            , Ga = t.n(Za)
            , Qa = t(1312)
            , Ka = t.n(Qa)
            , $a = t(106)
            , et = t.n($a)
            , at = (t(1180),
            t(1181),
            t(348),
            t(1330))
            , tt = t(2147)
            , nt = {
            insert: "head",
            singleton: !1
        }
            , it = (le()(tt.a, nt),
        tt.a.locals || {})
            , rt = Object(T.a)({
            subscriptionPurcahseButtonLabel: {
                id: "users.pages.Program.components.ProgramPurchaseModal.subscriptionPurcahseButtonLabel",
                defaultMessage: "チャンネルを購読する",
                description: "購入ボタン"
            },
            onetimePlanPurcahseButtonLabel: {
                id: "users.pages.Program.components.ProgramPurchaseModal.onetimePlanPurcahseButtonLabel",
                defaultMessage: "購入する"
            },
            subscriptionPurchasedText: {
                id: "users.pages.Program.components.ProgramPurchaseModal.subscriptionPurchasedText",
                defaultMessage: "{planTitle}を購読しました",
                description: "購入完了後"
            },
            onetimePurchasedText: {
                id: "users.pages.Program.components.ProgramPurchaseModal.onetimePurchasedText",
                defaultMessage: "{productText}を購入しました"
            },
            extensionPurchasedText: {
                id: "users.pages.Program.components.ProgramPurchaseModal.extensionPurchasedText",
                defaultMessage: "延長購入が完了しました"
            },
            completeButtonLabel: {
                id: "users.pages.Program.components.ProgramPurchaseModal.completeButtonLabel",
                defaultMessage: "番組を見る",
                description: "購入完了後ボタン"
            },
            purchaseTitle: {
                id: "users.pages.Program.components.ProgramPurchaseModal.purchaseTitle",
                defaultMessage: "{productText}を購入",
                description: "延長"
            },
            subscriptionPurchaseTitle: {
                id: "users.pages.Program.components.ProgramPurchaseModal.subscriptionPurchaseTitle",
                defaultMessage: "{planTitle}を購読"
            },
            productTextLiveExtensionProgram: {
                id: "users.pages.Program.components.ProgramPurchaseModal.productTextLiveExtensionProgram",
                defaultMessage: "{programTitle}の番組と延長"
            },
            productTextLiveExtension: {
                id: "users.pages.Program.components.ProgramPurchaseModal.productTextLiveExtension",
                defaultMessage: "{programTitle}の延長"
            },
            productTextProgram: {
                id: "users.pages.Program.components.ProgramPurchaseModal.productTextProgram",
                defaultMessage: "{programTitle}の番組"
            },
            productTextAny: {
                id: "users.pages.Program.components.ProgramPurchaseModal.productTextAny",
                defaultMessage: "{programTitle}"
            },
            productSubscription: {
                id: "users.pages.Program.components.ProgramPurchaseModal.productSubscription",
                defaultMessage: "{planTitle}の購読"
            }
        })
            , ot = function(e) {
            var a, t, n, r = e.program, o = e.plan, l = e.description, s = g()(e, ["program", "plan", "description"]), c = Object(V.i)(rt), m = Object(V.h)(), d = m.user, u = m.login, p = m.loading, v = i.a.useCallback((function() {
                    location.reload()
                }
            ), []);
            return i.a.useEffect((function() {
                    p || d || u(location.pathname)
                }
            ), [d, p]),
                i.a.createElement(at.b, {
                    planIds: [o.id],
                    planType: o.__typename,
                    onRequestClose: s.onRequestClose,
                    onPurchaseCompleted: v,
                    purchaseButtonLabel: c.subscriptionPurcahseButtonLabel({
                        planTitle: null !== (a = o.name) && void 0 !== a ? a : "-"
                    }),
                    completeButtonLabel: c.completeButtonLabel(),
                    purchasedText: c.subscriptionPurchasedText({
                        planTitle: null !== (t = o.name) && void 0 !== t ? t : "-"
                    }),
                    isOpen: !0,
                    description: l
                }, i.a.createElement("div", {
                    className: it.ThumbnailWithTitle
                }, i.a.createElement(J.jb, {
                    className: it.Thumbnail,
                    program: r
                }), i.a.createElement("h4", null, c.subscriptionPurchaseTitle({
                    planTitle: null !== (n = o.name) && void 0 !== n ? n : "-"
                })), i.a.createElement("p", null, o.name)))
        }
            , lt = function(e) {
            var a, t = e.program, n = e.plans, r = g()(e, ["program", "plans"]), o = Object(V.i)(rt), l = Object(V.h)(), s = l.user, c = l.login, m = l.loading, d = i.a.useMemo((function() {
                    var e, a;
                    switch (Ga()(e = ea()(Ka()(a = new et.a(ae()(n).call(n, (function(e) {
                            return e.productType
                        }
                    )))).call(a))).call(e).join(",")) {
                        case "LiveExtension,Program":
                            return o.productTextLiveExtensionProgram({
                                programTitle: t.title
                            });
                        case "LiveExtension":
                            return o.productTextLiveExtension({
                                programTitle: t.title
                            });
                        case "Program":
                            return o.productTextProgram({
                                programTitle: t.title
                            });
                        default:
                            return o.productTextAny({
                                programTitle: t.title
                            })
                    }
                }
            ), re()(a = [o, G]).call(a, ae()(n).call(n, (function(e) {
                    return e.id
                }
            )))), u = i.a.useCallback((function() {
                    location.reload()
                }
            ), [t.id, n]);
            i.a.useEffect((function() {
                    m || s || c(location.pathname)
                }
            ), [s, m]);
            var p = ae()(n).call(n, (function(e) {
                    return e.name
                }
            )).join(", ");
            return i.a.createElement(at.b, {
                planIds: ae()(n).call(n, (function(e) {
                        return e.id
                    }
                )),
                planType: G.PlanType.OneTimePlan,
                onRequestClose: r.onRequestClose,
                onPurchaseCompleted: u,
                purchaseButtonLabel: o.onetimePlanPurcahseButtonLabel(),
                completeButtonLabel: o.completeButtonLabel(),
                purchasedText: o.onetimePurchasedText({
                    productText: d
                }),
                isOpen: !0
            }, i.a.createElement("div", {
                className: it.ThumbnailWithTitle
            }, i.a.createElement(J.jb, {
                className: it.Thumbnail,
                program: t
            }), i.a.createElement("h4", null, o.purchaseTitle({
                productText: d
            })), i.a.createElement("p", null, p)))
        };
        var st = function(e) {
            var a = e.plans
                , t = g()(e, ["plans"]);
            if (function(e) {
                return !Array.isArray(e)
            }(a)) {
                var n = a;
                return i.a.createElement(ot, s()({
                    plan: n
                }, t))
            }
            return i.a.createElement(lt, s()({
                plans: a
            }, t))
        }
            , ct = t(133)
            , mt = t(2148)
            , dt = {
            insert: "head",
            singleton: !1
        }
            , ut = (le()(mt.a, dt),
        mt.a.locals || {})
            , pt = Object(T.a)({
            preview: {
                id: "users.pages.Program.components.ProgramAndPurchaseStatus.preview",
                defaultMessage: "冒頭無料放送中"
            },
            main: {
                id: "users.pages.Program.components.ProgramAndPurchaseStatus.main",
                defaultMessage: "本編放送中"
            },
            extension: {
                id: "users.pages.Program.components.ProgramAndPurchaseStatus.extension",
                defaultMessage: "延長({extensionCount}回目)放送中"
            },
            notStarted: {
                id: "users.pages.Program.components.ProgramAndPurchaseStatus.notStarted",
                defaultMessage: "放送前"
            },
            finished: {
                id: "users.pages.Program.components.ProgramAndPurchaseStatus.finished",
                defaultMessage: "放送終了"
            },
            notPurchased: {
                id: "users.pages.Program.components.ProgramAndPurchaseStatus.notPurchased",
                defaultMessage: "未購入"
            },
            subscribed: {
                id: "users.pages.Program.components.ProgramAndPurchaseStatus.subscribed",
                defaultMessage: "チャンネル購読済"
            },
            mainPurchased: {
                id: "users.pages.Program.components.ProgramAndPurchaseStatus.mainPurchased",
                defaultMessage: "本編購入済"
            },
            extensionPurchased: {
                id: "users.pages.Program.components.ProgramAndPurchaseStatus.extensionPurchased",
                defaultMessage: "本編+延長{extensionCount}回購入済"
            },
            subscriborExtensionPurchased: {
                id: "users.pages.Program.components.ProgramAndPurchaseStatus.subscriborExtensionPurchased",
                defaultMessage: "チャンネル購読済 / 延長{extensionCount}回購入済"
            },
            archive: {
                id: "users.pages.Program.components.ProgramAndPurchaseStatus.archive",
                defaultMessage: "アーカイブ"
            }
        })
            , gt = function(e) {
            var a = e.isLive
                , t = e.liveAiredWhat;
            return a ? i.a.createElement(vt, {
                liveAiredWhat: t
            }) : i.a.createElement(ft, {
                liveAiredWhat: t
            })
        }
            , vt = function(e) {
            var a = e.liveAiredWhat
                , t = Object(V.i)(pt)
                , n = a.currentExtensionIndex
                , r = a.watchableExntensionIndex
                , o = a.what
                , l = a.isMainPurcahsed
                , s = a.mainPlanType;
            return i.a.createElement("div", {
                className: ut.root
            }, function() {
                switch (o) {
                    case "preview":
                        return t.preview();
                    case "main":
                        return t.main();
                    case "extension":
                        return t.extension({
                            extensionCount: n
                        });
                    case "notStarted":
                        return t.notStarted();
                    case "finished":
                        return t.finished();
                    default:
                        throw new Error("liveAiredWhatType Error")
                }
            }(), " / ", function() {
                if (!s)
                    return t.notPurchased();
                if (s === G.PlanType.SubscriptionPlan)
                    return r > 0 ? t.subscriborExtensionPurchased({
                        extensionCount: r
                    }) : t.subscribed();
                if (a.canSee) {
                    if ("preview" === o)
                        return t.notPurchased();
                    if ("main" === o)
                        return r > 0 ? t.extensionPurchased({
                            extensionCount: r
                        }) : t.mainPurchased();
                    if ("extension" === o)
                        return t.extensionPurchased({
                            extensionCount: r
                        })
                }
                return l ? "notStarted" === o || "finished" === o ? t.mainPurchased() : t.extensionPurchased({
                    extensionCount: r
                }) : t.notPurchased()
            }())
        }
            , ft = function(e) {
            var a = e.liveAiredWhat
                , t = Object(V.i)(pt)
                , n = a.mainPlanType
                , r = a.watchableExntensionIndex;
            return i.a.createElement("div", {
                className: ut.root
            }, t.archive(), " / ", n === G.PlanType.SubscriptionPlan ? r > 0 ? t.subscriborExtensionPurchased({
                extensionCount: r
            }) : t.subscribed() : n === G.PlanType.OneTimePlan ? r > 0 ? t.extensionPurchased({
                extensionCount: r
            }) : t.mainPurchased() : t.notPurchased())
        }
            , ht = t(2149)
            , bt = {
            insert: "head",
            singleton: !1
        }
            , xt = (le()(ht.a, bt),
        ht.a.locals || {})
            , kt = Object(T.a)({
            detail: {
                id: "users.pages.Program.components.ProgramTitleAndDetail.detail",
                defaultMessage: "概要"
            },
            share: {
                id: "users.pages.Program.components.ProgramTitleAndDetail.share",
                defaultMessage: "共有"
            },
            start: {
                id: "users.pages.Program.components.ProgramTitleAndDetail.start",
                defaultMessage: "開始"
            },
            end: {
                id: "users.pages.Program.components.ProgramTitleAndDetail.end",
                defaultMessage: "終了"
            },
            scheduledToEnd: {
                id: "users.pages.Program.components.ProgramTitleAndDetail.scheduledToEnd",
                defaultMessage: "終了予定"
            }
        })
            , wt = function(e) {
            var a = e.program
                , t = e.channel
                , n = e.isLive
                , r = e.liveAiredWhat
                , o = Object(ct.a)()
                , l = Object(V.m)(kt)
                , s = i.a.useState(!1)
                , c = u()(s, 2)
                , m = c[0]
                , d = c[1]
                , p = o.formatTime(new Date(a.broadcastAt).getTime() + 1e3 * a.totalPlayTime, {
                hour12: !1
            });
            return i.a.createElement("div", {
                className: xt.ProgramTitleAndDetail
            }, i.a.createElement(gt, {
                isLive: n,
                liveAiredWhat: r
            }), i.a.createElement("h2", null, a.title), i.a.createElement("div", {
                className: xt.programStartDate
            }, Object(Q.l)(a.broadcastAt), " ", l.start, " ", p, " ", "unaired" === a.status || "onAir" === a.status ? l.scheduledToEnd : l.end), i.a.createElement(J.Gb, {
                className: xt.programTagList,
                tags: a.tags
            }), i.a.createElement("div", {
                className: xt.programChannelBox
            }, i.a.createElement("div", {
                className: xt.programChannel
            }, i.a.createElement(J.Q, {
                to: Z.b.user.channelTop({
                    channelId: t.id
                })
            }, i.a.createElement(J.d, {
                channel: t
            }), i.a.createElement("span", null, t.name))), i.a.createElement("div", {
                className: xt.shareIcon
            }, i.a.createElement("button", {
                onClick: function() {
                    return d(!0)
                }
            }, l.share))), i.a.createElement("div", {
                className: xt.programInfo
            }, i.a.createElement("h4", null, l.detail), i.a.createElement(J.u, {
                text: a.detail
            })), i.a.createElement(J.tb, {
                sharingText: a.title,
                sharingUrl: Z.b.user.program.fullpath(a),
                onRequestClose: function() {
                    return d(!1)
                },
                isOpen: m
            }))
        }
            , Pt = t(516)
            , yt = t.n(Pt)
            , _t = t(198)
            , Et = t.n(_t)
            , Ct = t(166)
            , St = t(95)
            , Nt = t(2150)
            , Rt = {
            insert: "head",
            singleton: !1
        }
            , At = (le()(Nt.a, Rt),
        Nt.a.locals || {})
            , Tt = Object(T.a)({
            review: {
                id: "users.pages.Program.components.ReviewModal.review",
                defaultMessage: "レビュー"
            },
            writeReview: {
                id: "users.pages.Program.components.ReviewModal.writeReview",
                defaultMessage: "レビュー記入"
            },
            postReview: {
                id: "users.pages.Program.components.ReviewModal.postReview",
                defaultMessage: "レビューを投稿する"
            },
            rewriteReview: {
                id: "users.pages.Program.components.ReviewModal.rewriteReview",
                defaultMessage: "レビューを書き直す"
            },
            rewriteReviewConfirm: {
                id: "users.pages.Program.components.ReviewModal.rewriteReviewConfirm",
                defaultMessage: "公開済みのレビューを書き直した場合、書き直した後の内容で再び審査を受けることになります。{br}内容によっては公開が承認されず差し戻されることがあります。本当に書き直しますか？"
            },
            removeReview: {
                id: "users.pages.Program.components.ReviewModal.removeReview",
                defaultMessage: "レビューを削除する"
            },
            removeReviewConfirm: {
                id: "users.pages.Program.components.ReviewModal.removeReviewConfirm",
                defaultMessage: "レビューを削除すると元に戻せません。本当に削除してもよろしいですか？"
            },
            postReviewFailed: {
                id: "users.pages.Program.components.ReviewModal.postReviewFailed",
                defaultMessage: "レビューを投稿できませんでした"
            },
            postReviewSucceeded: {
                id: "users.pages.Program.components.ReviewModal.postReviewSucceeded",
                defaultMessage: "レビューを投稿しました"
            },
            removeReviewFailed: {
                id: "users.pages.Program.components.ReviewModal.removeReviewFailed",
                defaultMessage: "レビューを削除できませんでした"
            },
            removeReviewSucceeded: {
                id: "users.pages.Program.components.ReviewModal.removeReviewSucceeded",
                defaultMessage: "レビューを削除しました"
            }
        })
            , Mt = function(e) {
            var a, t = e.program, n = e.review, r = e.isOpen, o = e.onCloseModal, l = e.postReview, s = e.removeReview, c = Object(V.i)(Tt), d = Object(V.p)(), p = d.confirmation, g = d.notificationSystem, v = Object(V.u)().review, f = Object(V.t)(null !== (a = null == n ? void 0 : n.body) && void 0 !== a ? a : "", v.bodyValidator), h = u()(f, 5), b = h[0], x = h[1], k = h[2], w = h[3], P = h[4], y = (null == n ? void 0 : n.state) === G.ReviewState.open, _ = i.a.useCallback((function(e) {
                    x(e.currentTarget.value)
                }
            ), []), E = Object(V.g)(i.a.useCallback(function() {
                var e = m()(N.a.mark((function e(a) {
                        var t;
                        return N.a.wrap((function(e) {
                                for (; ; )
                                    switch (e.prev = e.next) {
                                        case 0:
                                            if (a.preventDefault(),
                                                a.stopPropagation(),
                                                b) {
                                                e.next = 4;
                                                break
                                            }
                                            return e.abrupt("return");
                                        case 4:
                                            if (!y) {
                                                e.next = 10;
                                                break
                                            }
                                            return e.next = 7,
                                                p.show(c.rewriteReviewConfirm({
                                                    br: i.a.createElement("br", null)
                                                }));
                                        case 7:
                                            if (e.sent) {
                                                e.next = 10;
                                                break
                                            }
                                            return e.abrupt("return");
                                        case 10:
                                            return e.prev = 10,
                                                e.next = 13,
                                                l(null !== (t = null == n ? void 0 : n.id) && void 0 !== t ? t : null, b);
                                        case 13:
                                            g.info(c.postReviewSucceeded()),
                                                e.next = 21;
                                            break;
                                        case 16:
                                            return e.prev = 16,
                                                e.t0 = e.catch(10),
                                                g.error(c.postReviewFailed()),
                                                St.a(e.t0),
                                                e.abrupt("return");
                                        case 21:
                                            o();
                                        case 22:
                                        case "end":
                                            return e.stop()
                                    }
                            }
                        ), e, null, [[10, 16]])
                    }
                )));
                return function(a) {
                    return e.apply(this, arguments)
                }
            }(), [b, null == n ? void 0 : n.id, l, c, g])), C = u()(E, 2), S = C[0], R = C[1], A = Object(V.g)(i.a.useCallback(function() {
                var e = m()(N.a.mark((function e(a) {
                        return N.a.wrap((function(e) {
                                for (; ; )
                                    switch (e.prev = e.next) {
                                        case 0:
                                            return console.assert(null == n ? void 0 : n.id),
                                                a.preventDefault(),
                                                a.stopPropagation(),
                                                e.next = 5,
                                                p.show(c.removeReviewConfirm());
                                        case 5:
                                            if (e.sent) {
                                                e.next = 8;
                                                break
                                            }
                                            return e.abrupt("return");
                                        case 8:
                                            return e.prev = 8,
                                                e.next = 11,
                                                s(null == n ? void 0 : n.id);
                                        case 11:
                                            g.info(c.removeReviewSucceeded()),
                                                x(""),
                                                e.next = 21;
                                            break;
                                        case 15:
                                            return e.prev = 15,
                                                e.t0 = e.catch(8),
                                                console.error(e.t0),
                                                g.error(c.removeReviewFailed()),
                                                St.a(e.t0),
                                                e.abrupt("return");
                                        case 21:
                                            o();
                                        case 22:
                                        case "end":
                                            return e.stop()
                                    }
                            }
                        ), e, null, [[8, 15]])
                    }
                )));
                return function(a) {
                    return e.apply(this, arguments)
                }
            }(), [null == n ? void 0 : n.id])), T = u()(A, 2), M = T[0], j = T[1];
            i.a.useEffect((function() {
                    b.length && w()
                }
            ), [b]);
            var F = R || j
                , H = F || !b || !!k;
            return i.a.createElement(J.C, {
                isOpen: r,
                onRequestClose: o,
                headline: c.review(),
                classes: {
                    content: At.content
                }
            }, i.a.createElement("div", {
                className: At.reviewTargetProgram
            }, i.a.createElement(J.jb, {
                className: At.programThumbnail,
                program: t
            }), i.a.createElement("h4", null, t.title)), i.a.createElement("div", {
                className: At.formContainer
            }, i.a.createElement("h4", null, c.writeReview()), i.a.createElement("form", {
                onSubmit: S,
                className: At.formContent
            }, i.a.createElement("textarea", {
                value: b,
                onChange: _
            }), P && k && i.a.createElement(J.bb, null, k), i.a.createElement(J.b, {
                type: "submit",
                className: At.postReviewButton,
                disabled: H
            }, null != n && n.id ? c.rewriteReview() : c.postReview()), (null == n ? void 0 : n.id) && i.a.createElement(J.b, {
                type: "button",
                buttonStyle: "danger",
                className: At.removeReviewButton,
                disabled: F,
                onClick: M
            }, c.removeReview()))))
        }
            , jt = t(2151)
            , Ft = {
            insert: "head",
            singleton: !1
        }
            , Ht = (le()(jt.a, Ft),
        jt.a.locals || {})
            , Ot = Object(T.a)({
            listIsEmpty: {
                id: "users.pages.Program.components.ReviewSection.listIsEmpty",
                defaultMessage: "まだレビューはありません"
            },
            moreReview: {
                id: "users.pages.Program.components.ReviewSection.moreReview",
                defaultMessage: "レビューをもっと見る"
            },
            review: {
                id: "users.pages.Program.components.ReviewSection.review",
                defaultMessage: "レビュー"
            },
            rewriteReview: {
                id: "users.pages.Program.components.ReviewSection.rewriteReview",
                defaultMessage: "レビューを書き直す"
            },
            removeReview: {
                id: "users.pages.Program.components.ReviewSection.removeReview",
                defaultMessage: "削除する"
            },
            removeReviewConfirm: {
                id: "users.pages.Program.components.ReviewSection.removeReviewConfirm",
                defaultMessage: "レビューを削除すると元に戻せません。本当に削除してもよろしいですか？"
            },
            writeReview: {
                id: "users.pages.Program.components.ReviewSection.writeReview",
                defaultMessage: "レビューを書く"
            },
            stateInReview: {
                id: "users.pages.Program.components.ReviewSection.stateInReview",
                defaultMessage: "承認待ち"
            },
            stateNg: {
                id: "users.pages.Program.components.ReviewSection.stateNg",
                defaultMessage: "承認されませんでした"
            },
            stateOpen: {
                id: "users.pages.Program.components.ReviewSection.stateOpen",
                defaultMessage: "公開"
            },
            purchaseRequired: {
                id: "users.pages.Program.components.ReviewSection.purchaseRequired",
                defaultMessage: "レビューを投稿するためには、購入またはチャンネル購読をする必要があります。"
            },
            showAll: {
                id: "users.pages.Program.components.ReviewSection.showAll",
                defaultMessage: "すべて表示する"
            },
            ellipsize: {
                id: "users.pages.Program.components.ReviewSection.ellipsize",
                defaultMessage: "折りたたむ"
            },
            reviewNote: {
                id: "users.pages.Program.components.ReviewSection.reviewNote",
                defaultMessage: "この投稿はまだ投稿者にしか見えていません。レビューは配信者の承認を得たもののみが公開されます。内容によっては公開が承認されず差し戻されることがあります。確認をお待ちください。"
            },
            notifyReviewRemoved: {
                id: "users.pages.Program.components.ReviewSection.notifyReviewRemoved",
                defaultMessage: "レビューを削除しました"
            },
            share: {
                id: "users.pages.Program.components.ReviewSection.share",
                defaultMessage: "共有"
            },
            reviewShareText: {
                id: "users.pages.Program.components.ReviewSection.reviewShareText",
                defaultMessage: "{name}さんがレビューを投稿しました！「{body}」"
            }
        })
            , Lt = function(e) {
            var a, t = e.className, n = e.canWrite, r = e.myReview, o = e.focusedReview, l = e.reviews, c = e.removeReview, d = e.fetchMoreReviews, p = e.program, v = g()(e, ["className", "canWrite", "myReview", "focusedReview", "reviews", "removeReview", "fetchMoreReviews", "program"]), f = Object(V.i)(Ot), h = Object(V.p)(), b = h.confirmation, x = h.notificationSystem, k = i.a.useState(!1), w = u()(k, 2), y = w[0], _ = w[1], E = i.a.useCallback((function() {
                    return _(!0)
                }
            ), []), C = i.a.useCallback((function() {
                    return _(!1)
                }
            ), []), S = i.a.useState(!1), R = u()(S, 2), T = R[0], M = R[1], j = i.a.useState(), F = u()(j, 2), H = F[0], O = F[1], L = function() {
                var e = m()(N.a.mark((function e() {
                        return N.a.wrap((function(e) {
                                for (; ; )
                                    switch (e.prev = e.next) {
                                        case 0:
                                            return e.next = 2,
                                                b.show(f.removeReviewConfirm());
                                        case 2:
                                            if (e.sent) {
                                                e.next = 5;
                                                break
                                            }
                                            return e.abrupt("return");
                                        case 5:
                                            return e.next = 7,
                                                c(r.id);
                                        case 7:
                                            x.info(f.notifyReviewRemoved());
                                        case 8:
                                        case "end":
                                            return e.stop()
                                    }
                            }
                        ), e)
                    }
                )));
                return function() {
                    return e.apply(this, arguments)
                }
            }(), D = i.a.useCallback((function(e) {
                    var a;
                    if (e) {
                        var t = e.body.length > 30 ? "".concat(ne()(a = e.body).call(a, 0, 30), "...") : e.body
                            , n = f.reviewShareText({
                            name: e.user.name,
                            body: t
                        })
                            , i = "".concat(Z.b.user.program.fullpath(p))
                            , r = "review-".concat(encodeURIComponent(e.user.name));
                        O({
                            text: n,
                            url: i,
                            hash: r
                        }),
                            M(!0)
                    }
                }
            ), []), q = [];
            return r && q.push(r.id),
            o && q.push(o.id),
                i.a.createElement("div", {
                    className: A()(Ht.root, t)
                }, n ? !r && i.a.createElement(J.b, {
                    className: Ht.writeButton,
                    onClick: E
                }, f.writeReview()) : i.a.createElement(J.bb, {
                    className: Ht.purhcaseRequired
                }, f.purchaseRequired()), i.a.createElement(Mt, s()({
                    program: p,
                    review: r,
                    isOpen: y,
                    onCloseModal: C,
                    removeReview: c
                }, v)), null === l ? i.a.createElement(J.R, {
                    size: 32,
                    className: Ht.loading
                }) : 0 !== l.length || r ? i.a.createElement("ul", {
                    className: Ht.reviewList
                }, r && i.a.createElement(i.a.Fragment, null, i.a.createElement(qt, {
                    review: r,
                    showState: !0,
                    onShareButtonClick: "open" === r.state ? D : void 0
                }), "open" !== r.state && i.a.createElement(J.bb, {
                    className: Ht.reviewNote
                }, f.reviewNote()), i.a.createElement("div", {
                    className: Ht.buttonContainer
                }, i.a.createElement(J.b, {
                    className: Ht.rewriteButton,
                    onClick: E
                }, f.rewriteReview()), i.a.createElement(J.b, {
                    className: Ht.removeButton,
                    onClick: L,
                    buttonStyle: "danger"
                }, f.removeReview()))), o && i.a.createElement(qt, {
                    review: o,
                    onShareButtonClick: D
                }), ae()(a = P()(l).call(l, (function(e) {
                        return !Me()(q).call(q, e.id)
                    }
                ))).call(a, (function(e) {
                        return i.a.createElement(qt, {
                            key: e.id,
                            review: e,
                            onShareButtonClick: D
                        })
                    }
                ))) : i.a.createElement(J.bb, {
                    className: Ht.listIsEmpty
                }, f.listIsEmpty()), d && i.a.createElement("div", {
                    className: Ht.reviewListMore
                }, i.a.createElement("a", {
                    onClick: function() {
                        return d()
                    }
                }, f.moreReview())), H && i.a.createElement(J.tb, {
                    sharingText: H.text,
                    sharingUrl: H.url,
                    sharingUrlHash: H.hash,
                    onRequestClose: function() {
                        return M(!1)
                    },
                    isOpen: T,
                    media: ["twitter"]
                }))
        }
            , Dt = function(e) {
            var a, t, n, r, o = e.text;
            return i.a.createElement("p", null, P()(a = yt()(t = ae()(n = P()(r = Et()(o).call(o).split("\n")).call(r, (function(e) {
                    return e
                }
            ))).call(n, (function(e, a) {
                    return [0 !== a && i.a.createElement("br", {
                        key: a
                    }), e]
                }
            ))).call(t)).call(a, (function(e) {
                    return e
                }
            )))
        }
            , qt = function(e) {
            var a, t = e.review, n = e.showState, r = e.onShareButtonClick, o = Object(V.i)(Ot), l = i.a.useState(t.body.length > 140 || t.body.split("\n").length > 4), s = u()(l, 2), c = s[0], m = s[1];
            return i.a.createElement("li", {
                id: "review-".concat(encodeURIComponent(t.user.name))
            }, i.a.createElement(J.Rb, {
                size: 32,
                user: t.user,
                className: Ht.reviewUser
            }), i.a.createElement("div", {
                className: Ht.reviewContent
            }, i.a.createElement("div", {
                className: Ht.reviewMeta
            }, i.a.createElement("span", {
                className: Ht.reviewUserName
            }, t.user.name), i.a.createElement("span", {
                className: Ht.reviewDate
            }, Object(Q.l)(t.createdAt)), n && i.a.createElement("span", {
                className: Ht.reviewState
            }, t.state === G.ReviewState.inReview ? o.stateInReview() : t.state === G.ReviewState.ng ? o.stateNg() : o.stateOpen())), i.a.createElement("div", {
                className: A()(Ht.reviewBody, c && Ht.isEllipsized)
            }, c ? i.a.createElement(Dt, {
                text: ne()(a = t.body).call(a, 0, 300)
            }) : i.a.createElement(Ct.m, {
                text: t.body,
                shouldConvertLink: !1
            })), c ? i.a.createElement("a", {
                className: Ht.showAll,
                onClick: function() {
                    return m(!1)
                }
            }, o.showAll()) : i.a.createElement("a", {
                className: Ht.ellipsize,
                onClick: function() {
                    return m(!0)
                }
            }, o.ellipsize())), r && i.a.createElement("div", {
                className: Ht.shareIconContainer
            }, i.a.createElement("div", {
                className: Ht.shareIcon
            }, i.a.createElement("button", {
                onClick: function() {
                    r(t)
                }
            }, o.share()))))
        }
            , It = t(2152)
            , Wt = {
            insert: "head",
            singleton: !1
        }
            , Ut = (le()(It.a, Wt),
        It.a.locals || {})
            , Yt = Object(T.a)({
            comment: {
                id: "users.pages.Program.components.SPCommentsContainer.comment",
                defaultMessage: "コメント"
            }
        })
            , zt = function(e) {
            var a = e.className
                , t = e.currentTime
                , n = e.commentRepos
                , r = e.noCommentReason
                , o = g()(e, ["className", "currentTime", "commentRepos", "noCommentReason"])
                , l = Object(V.m)(Yt);
            return i.a.createElement("div", {
                className: A()(Ut.SPCommentsContainer, a)
            }, i.a.createElement("div", {
                className: Ut.Header,
                onClick: o.onCloseClicked
            }, l.comment), r ? i.a.createElement(be.b, {
                reason: r
            }) : i.a.createElement(be.a, {
                className: Ut.commentList,
                currentTime: t,
                commentRepos: n
            }))
        }
            , Xt = t(2153)
            , Bt = {
            insert: "head",
            singleton: !1
        }
            , Jt = (le()(Xt.a, Bt),
        Xt.a.locals || {})
            , Vt = function(e) {
            var a, t, n = e.className, r = e.comment, o = g()(e, ["className", "comment"]);
            return i.a.createElement("div", s()({
                className: A()(Jt.SPOnelineComment, n)
            }, o), r && i.a.createElement(i.a.Fragment, null, i.a.createElement(J.Rb, {
                className: Jt.UserIcon,
                size: 16,
                user: r.user
            }), i.a.createElement("div", {
                className: Jt.CommentTime
            }, Object(Q.m)(r.commentTime / 1e3)), i.a.createElement("div", {
                className: Jt.CommentName
            }, null !== (a = null === (t = r.user) || void 0 === t ? void 0 : t.name) && void 0 !== a ? a : ""), i.a.createElement("div", {
                className: Jt.CommentText
            }, r.text)), i.a.createElement("div", {
                className: Jt.OpenButton
            }))
        }
            , Zt = t(2154)
            , Gt = {
            insert: "head",
            singleton: !1
        }
            , Qt = (le()(Zt.a, Gt),
        Zt.a.locals || {});
        function Kt(e, a) {
            var t = b()(e);
            if (k.a) {
                var n = k()(e);
                a && (n = P()(n).call(n, (function(a) {
                        return _()(e, a).enumerable
                    }
                ))),
                    t.push.apply(t, n)
            }
            return t
        }
        function $t(e) {
            for (var a = 1; a < arguments.length; a++) {
                var t = null != arguments[a] ? arguments[a] : {};
                a % 2 ? Kt(Object(t), !0).forEach((function(a) {
                        o()(e, a, t[a])
                    }
                )) : C.a ? Object.defineProperties(e, C()(t)) : Kt(Object(t)).forEach((function(a) {
                        Object.defineProperty(e, a, _()(t, a))
                    }
                ))
            }
            return e
        }
        var en = Object(T.a)({
            comment: {
                id: "users.pages.Program.components.SPProgramTabHeader.comment",
                defaultMessage: "コメント"
            },
            detail: {
                id: "users.pages.Program.components.SPProgramTabHeader.detail",
                defaultMessage: "概要"
            },
            handouts: {
                id: "users.pages.Program.components.SPProgramTabHeader.handouts",
                defaultMessage: "関連資料"
            },
            reviews: {
                id: "users.pages.Program.components.SPProgramTabHeader.reviews",
                defaultMessage: "レビュー"
            },
            share: {
                id: "users.pages.Program.components.SPProgramTabHeader.share",
                defaultMessage: "共有"
            }
        })
            , an = function(e) {
            var a = e.className
                , t = e.activeTab
                , n = e.shouldShowReview
                , r = g()(e, ["className", "activeTab", "shouldShowReview"])
                , o = Object(V.m)(en);
            return i.a.createElement(J.Bb, {
                className: A()(Qt.SPProgramTabHeader, a),
                activeTab: t,
                onChangeTabRequested: r.onChangeTabRequested,
                tabs: $t($t({
                    information: {
                        label: o.detail,
                        className: Qt.InformationTabItem
                    },
                    comments: {
                        label: o.comment,
                        className: Qt.CommentsTabItem
                    },
                    handouts: {
                        label: o.handouts,
                        className: Qt.HandoutsTabItem
                    }
                }, n ? {
                    reviews: {
                        label: o.reviews,
                        className: Qt.ReviewTabItem
                    }
                } : {}), {}, {
                    share: {
                        label: o.share,
                        className: Qt.ShareTabItem,
                        onClick: r.onShareClicked
                    }
                })
            })
        }
            , tn = t(2155)
            , nn = {
            insert: "head",
            singleton: !1
        }
            , rn = (le()(tn.a, nn),
        tn.a.locals || {});
        function on(e, a) {
            var t = b()(e);
            if (k.a) {
                var n = k()(e);
                a && (n = P()(n).call(n, (function(a) {
                        return _()(e, a).enumerable
                    }
                ))),
                    t.push.apply(t, n)
            }
            return t
        }
        function ln(e) {
            for (var a = 1; a < arguments.length; a++) {
                var t = null != arguments[a] ? arguments[a] : {};
                a % 2 ? on(Object(t), !0).forEach((function(a) {
                        o()(e, a, t[a])
                    }
                )) : C.a ? Object.defineProperties(e, C()(t)) : on(Object(t)).forEach((function(a) {
                        Object.defineProperty(e, a, _()(t, a))
                    }
                ))
            }
            return e
        }
        var sn = Object(T.a)({
            documentTitle: {
                id: "users.pages.Program.ProgramPage.documentTitle",
                defaultMessage: "{programTitle} | {channelName} | シラス"
            }
        })
            , cn = function(e) {
            var a = e.data
                , t = a.program
                , n = a.channel
                , r = a.subscriptionPlan
                , o = a.onetimePlan
                , l = a.video
                , c = a.myReview
                , d = a.focusedReview
                , p = a.reviews
                , v = a.hasMoreReviews
                , f = a.liveAiredWhat
                , h = a.handouts
                , b = a.shouldShowReview
                , x = a.canUseHandout
                , k = a.canComment
                , w = e.isAuthenticated
                , P = e.mutations
                , y = e.commentRepos
                , _ = e.noCommentReason
                , E = e.savedVideoPlayerStateRef
                , C = g()(e, ["data", "isAuthenticated", "mutations", "commentRepos", "noCommentReason", "savedVideoPlayerStateRef"])
                , S = i.a.useRef()
                , R = Object(V.m)(Ha)
                , T = (null == l ? void 0 : l.videoType) === G.VideoType.LiveVideo || (null == l ? void 0 : l.videoType) !== G.VideoType.ArchivedVideo && "finished" === f.what
                , M = i.a.useState(!1)
                , j = u()(M, 2)
                , F = j[0]
                , H = j[1]
                , O = i.a.useState(void 0)
                , L = u()(O, 2)
                , D = L[0]
                , q = L[1]
                , I = i.a.useCallback((function() {
                    return H(!0)
                }
            ), [])
                , W = i.a.useCallback((function() {
                    return H(!1)
                }
            ), [])
                , U = i.a.useCallback(function() {
                var e = m()(N.a.mark((function e(a) {
                        var t;
                        return N.a.wrap((function(e) {
                                for (; ; )
                                    switch (e.prev = e.next) {
                                        case 0:
                                            if (console.assert(a.length > 0),
                                            null != (t = S.current) && t.isReady()) {
                                                e.next = 4;
                                                break
                                            }
                                            throw new Error("VideoPlayer not ready");
                                        case 4:
                                            return e.next = 6,
                                                P.postComment(t.getCurrentTime(), a);
                                        case 6:
                                        case "end":
                                            return e.stop()
                                    }
                            }
                        ), e)
                    }
                )));
                return function(a) {
                    return e.apply(this, arguments)
                }
            }(), []);
            return Object(V.f)((function() {
                    var e = S.current;
                    null != e && e.isReady() && q(e.getCurrentTime())
                }
            ), 5),
                i.a.useLayoutEffect((function() {
                        if (location.hash) {
                            var e = location.hash.substr(1)
                                , a = document.getElementById(e);
                            if (a)
                                a.querySelector("div > a").click(),
                                    B.scroller.scrollTo(e, {
                                        duration: 300,
                                        smooth: !0
                                    })
                        }
                    }
                ), []),
                i.a.createElement("div", {
                    className: A()(rn.PCProgramPage, F && rn.isFullwidth),
                    "data-testid": "pc-program-page"
                }, i.a.createElement("main", null, i.a.createElement("div", {
                    className: rn.PlayerContainer
                }, i.a.createElement(ja, {
                    className: rn.Notices,
                    program: t
                }), i.a.createElement(Ea, s()({
                    className: rn.Player,
                    videoPlayerRef: S,
                    program: t,
                    subscriptionPlan: r,
                    video: l,
                    onetimePlan: o,
                    isFullwidth: F,
                    thumbnailUrl: t.thumbnailUrl,
                    liveAiredWhat: f,
                    onToggleComments: W,
                    isAuthenticated: w,
                    savedVideoPlayerStateRef: E
                }, C)), i.a.createElement(ye, {
                    className: rn.Comments,
                    canComment: k,
                    currentTime: D,
                    commentRepos: y,
                    noCommentReason: _,
                    onFullscreenClicked: I,
                    onRequestSendComment: U
                }))), i.a.createElement("aside", null, i.a.createElement("div", null, i.a.createElement("section", {
                    className: rn.TitleAndDetail
                }, i.a.createElement(wt, {
                    program: t,
                    isLive: T,
                    liveAiredWhat: f,
                    channel: n
                }), "finished" === f.what && i.a.createElement(ue, {
                    program: t,
                    mainOneTimePlan: o,
                    onPurchaseClicked: C.onPurchaseClicked
                })), b && i.a.createElement("section", {
                    className: rn.Reviews
                }, i.a.createElement(J.B, {
                    className: rn.heading,
                    level: 2,
                    text: R.reviews,
                    underline: !0
                }), Q.a.shouldShowReview(t) && i.a.createElement(Lt, {
                    program: t,
                    canWrite: f.isMainPurcahsed,
                    myReview: c,
                    focusedReview: d,
                    reviews: p,
                    postReview: P.postReview,
                    removeReview: P.removeReview,
                    fetchMoreReviews: v ? P.fetchMoreReviews : null
                })), i.a.createElement("section", {
                    className: rn.Handouts
                }, i.a.createElement(J.B, {
                    className: rn.heading,
                    level: 2,
                    text: R.handouts,
                    underline: !0
                }), i.a.createElement(J.z, {
                    handouts: h,
                    size: "large",
                    disabled: !x
                })))))
        }
            , mn = function(e) {
            var a, t = e.data, n = t.program, r = t.channel, o = t.subscriptionPlan, l = t.onetimePlan, c = t.video, d = t.myReview, p = t.focusedReview, v = t.reviews, f = t.hasMoreReviews, h = t.liveAiredWhat, b = t.handouts, x = t.shouldShowReview, k = t.canUseHandout, w = t.canComment, P = e.commentRepos, y = e.noCommentReason, _ = e.isAuthenticated, E = e.mutations, C = e.savedVideoPlayerStateRef, S = g()(e, ["data", "commentRepos", "noCommentReason", "isAuthenticated", "mutations", "savedVideoPlayerStateRef"]), R = i.a.useRef(), T = Object(V.m)(Ha), M = i.a.useState("information"), j = u()(M, 2), F = j[0], H = j[1], O = i.a.useState(!1), L = u()(O, 2), D = L[0], q = L[1], I = i.a.useState(void 0), W = u()(I, 2), U = W[0], Y = W[1], z = null == P || null === (a = P.useComments(U).comments) || void 0 === a ? void 0 : a[0], X = (null == c ? void 0 : c.videoType) === G.VideoType.LiveVideo || (null == c ? void 0 : c.videoType) !== G.VideoType.ArchivedVideo && "finished" === h.what, B = i.a.useCallback(function() {
                var e = m()(N.a.mark((function e(a) {
                        var t;
                        return N.a.wrap((function(e) {
                                for (; ; )
                                    switch (e.prev = e.next) {
                                        case 0:
                                            if (console.assert(a.length > 0),
                                            null != (t = R.current) && t.isReady()) {
                                                e.next = 4;
                                                break
                                            }
                                            throw new Error("VideoPlayer not ready");
                                        case 4:
                                            return e.next = 6,
                                                E.postComment(t.getCurrentTime(), a);
                                        case 6:
                                        case "end":
                                            return e.stop()
                                    }
                            }
                        ), e)
                    }
                )));
                return function(a) {
                    return e.apply(this, arguments)
                }
            }(), []);
            return Object(V.f)((function() {
                    var e = R.current;
                    null != e && e.isReady() && Y(e.getCurrentTime())
                }
            ), 5),
                i.a.createElement("div", {
                    className: A()(rn.SPProgramPage),
                    "data-testid": "sp-program-page"
                }, i.a.createElement(ja, {
                    className: rn.Notices,
                    program: n
                }), i.a.createElement(Ea, s()({
                    className: rn.Player,
                    videoPlayerRef: R,
                    program: n,
                    subscriptionPlan: o,
                    onetimePlan: l,
                    video: c,
                    liveAiredWhat: h,
                    thumbnailUrl: n.thumbnailUrl,
                    isAuthenticated: _,
                    savedVideoPlayerStateRef: C
                }, S)), "comments" !== F && i.a.createElement(i.a.Fragment, null, i.a.createElement(Vt, {
                    className: rn.OnelineComment,
                    comment: z,
                    onClick: function() {
                        return H("comments")
                    }
                }), i.a.createElement(an, {
                    className: rn.TabHeader,
                    activeTab: F,
                    shouldShowReview: x,
                    onChangeTabRequested: H,
                    onShareClicked: function() {
                        return q(!0)
                    }
                })), "information" === F && i.a.createElement(i.a.Fragment, null, i.a.createElement("section", {
                    className: rn.TitleAndDetail
                }, i.a.createElement(wt, {
                    program: n,
                    channel: r,
                    isLive: X,
                    liveAiredWhat: h
                }), "finished" === h.what && i.a.createElement(ue, {
                    program: n,
                    mainOneTimePlan: l,
                    onPurchaseClicked: S.onPurchaseClicked
                }))), "comments" === F && i.a.createElement(i.a.Fragment, null, i.a.createElement(zt, {
                    className: rn.Comments,
                    currentTime: U,
                    commentRepos: P,
                    noCommentReason: y,
                    onCloseClicked: function() {
                        return H("information")
                    }
                }), i.a.createElement(J.U, {
                    noOverlay: !0,
                    contentClassName: rn.BottomFixedModalContent,
                    isOpen: !0,
                    responsive: !0
                }, i.a.createElement(J.g, {
                    className: rn.SPCommentForm,
                    canComment: w,
                    onRequestSendComment: B
                }))), "handouts" === F && i.a.createElement("section", {
                    className: rn.Handouts
                }, i.a.createElement(J.B, {
                    className: rn.heading,
                    level: 4,
                    text: T.handouts,
                    underline: !0
                }), i.a.createElement(J.z, {
                    handouts: b,
                    disabled: !k
                })), x && "reviews" === F && i.a.createElement("section", {
                    className: rn.Reviews
                }, i.a.createElement(J.B, {
                    className: rn.heading,
                    level: 2,
                    text: T.reviews,
                    underline: !0
                }), Q.a.shouldShowReview(n) && i.a.createElement(Lt, {
                    canWrite: h.isMainPurcahsed,
                    program: n,
                    myReview: d,
                    focusedReview: p,
                    reviews: v,
                    postReview: E.postReview,
                    removeReview: E.removeReview,
                    fetchMoreReviews: f ? E.fetchMoreReviews : null
                })), i.a.createElement(J.tb, {
                    sharingText: n.title,
                    sharingUrl: Z.b.user.program.fullpath(n),
                    onRequestClose: function() {
                        return q(!1)
                    },
                    isOpen: D
                }))
        }
            , dn = function(e) {
            var a, t = null !== (a = location.hash) && void 0 !== a ? a : "", n = f()(t).call(t, "#review-") ? decodeURIComponent(t.substr("#review-".length)) : null;
            return i.a.createElement(J.w, s()({}, pa(ln(ln({}, e), {}, {
                focusedReviewAuthorName: n
            })), {
                LoadingComponent: Va
            }), (function(e) {
                    var a = e.data
                        , t = e.mutations
                        , n = e.isAuthenticated
                        , r = e.login
                        , o = e.commentRepos
                        , l = e.noCommentReason
                        , s = a.program
                        , c = a.channel
                        , m = Object(V.i)(sn);
                    Object(V.k)((function() {
                            return m.documentTitle({
                                programTitle: s.title,
                                channelName: c.name
                            })
                        }
                    ), [s.title, c.name]);
                    var d = i.a.useRef()
                        , p = i.a.useState()
                        , g = u()(p, 2)
                        , v = g[0]
                        , f = g[1]
                        , h = i.a.useCallback((function(e) {
                            return f(e)
                        }
                    ), [s.id])
                        , b = i.a.useCallback((function(e) {
                            f(e)
                        }
                    ), [s.id])
                        , x = i.a.useCallback((function() {
                            f(void 0)
                        }
                    ), [])
                        , k = i.a.useCallback((function() {
                            r(location.pathname)
                        }
                    ), []);
                    return i.a.createElement(X, {
                        queries: {
                            small: "(max-width: 560px)"
                        }
                    }, (function(e) {
                            var r = e.small;
                            return i.a.createElement(i.a.Fragment, null, r ? i.a.createElement(mn, {
                                data: a,
                                mutations: t,
                                isAuthenticated: n,
                                commentRepos: o,
                                noCommentReason: l,
                                savedVideoPlayerStateRef: d,
                                onPurchaseClicked: h,
                                onExtPurchaseClicked: b,
                                onLoginRequired: k
                            }) : i.a.createElement(cn, {
                                data: a,
                                mutations: t,
                                isAuthenticated: n,
                                commentRepos: o,
                                noCommentReason: l,
                                savedVideoPlayerStateRef: d,
                                onPurchaseClicked: h,
                                onExtPurchaseClicked: b,
                                onLoginRequired: k
                            }), v && i.a.createElement(st, {
                                plans: v,
                                program: s,
                                onRequestClose: x,
                                description: c.textOnPurchaseScreen
                            }))
                        }
                    ))
                }
            ))
        };
        a.default = function(e) {
            var a = e.match;
            return i.a.createElement(dn, a.params)
        }
    }
}]);
