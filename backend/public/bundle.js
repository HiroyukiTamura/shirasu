(function(){function r(e,n,t){function o(i,f){if(!n[i]){if(!e[i]){var c="function"==typeof require&&require;if(!f&&c)return c(i,!0);if(u)return u(i,!0);var a=new Error("Cannot find module '"+i+"'");throw a.code="MODULE_NOT_FOUND",a}var p=n[i]={exports:{}};e[i][0].call(p.exports,function(r){var n=e[i][1][r];return o(n||r)},p,p.exports,r,e,n,t)}return n[i].exports}for(var u="function"==typeof require&&require,i=0;i<t.length;i++)o(t[i]);return o}return r})()({1:[function(require,module,exports){
"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _auth0SpaJs = _interopRequireDefault(require("@auth0/auth0-spa-js"));

var _Statics = _interopRequireDefault(require("./Statics"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

var __awaiter = void 0 && (void 0).__awaiter || function (thisArg, _arguments, P, generator) {
  function adopt(value) {
    return value instanceof P ? value : new P(function (resolve) {
      resolve(value);
    });
  }

  return new (P || (P = Promise))(function (resolve, reject) {
    function fulfilled(value) {
      try {
        step(generator.next(value));
      } catch (e) {
        reject(e);
      }
    }

    function rejected(value) {
      try {
        step(generator["throw"](value));
      } catch (e) {
        reject(e);
      }
    }

    function step(result) {
      result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected);
    }

    step((generator = generator.apply(thisArg, _arguments || [])).next());
  });
};

var AuthClient = /*#__PURE__*/function () {
  function AuthClient() {
    _classCallCheck(this, AuthClient);
  }

  _createClass(AuthClient, [{
    key: "initClient",
    value: function initClient() {
      return __awaiter(this, void 0, void 0, /*#__PURE__*/regeneratorRuntime.mark(function _callee() {
        return regeneratorRuntime.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                _context.next = 2;
                return (0, _auth0SpaJs["default"])({
                  domain: _Statics["default"].AUTH0_DOMAIN,
                  client_id: _Statics["default"].AUTH0_CLIENT_ID
                });

              case 2:
                this.auth0Client = _context.sent;

              case 3:
              case "end":
                return _context.stop();
            }
          }
        }, _callee, this);
      }));
    }
  }, {
    key: "request2AuthPage",
    value: function request2AuthPage() {
      return __awaiter(this, void 0, void 0, /*#__PURE__*/regeneratorRuntime.mark(function _callee2() {
        var url;
        return regeneratorRuntime.wrap(function _callee2$(_context2) {
          while (1) {
            switch (_context2.prev = _context2.next) {
              case 0:
                _context2.next = 2;
                return this.auth0Client.buildAuthorizeUrl();

              case 2:
                url = _context2.sent;
                console.log(url);

              case 4:
              case "end":
                return _context2.stop();
            }
          }
        }, _callee2, this);
      }));
    }
  }]);

  return AuthClient;
}();

exports["default"] = AuthClient;

},{"./Statics":2,"@auth0/auth0-spa-js":4}],2:[function(require,module,exports){
"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var Statics = function Statics() {
  _classCallCheck(this, Statics);
};

exports["default"] = Statics;
Statics.AUTH0_CLIENT_ID = 'kyjTJ5lQ7RU7mAyeSmX8nLYcxVRtA3nB';
Statics.AUTH0_DOMAIN = 'shirasu.auth0.com';

},{}],3:[function(require,module,exports){
"use strict";

var _AuthClient = _interopRequireDefault(require("./AuthClient"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

var __awaiter = void 0 && (void 0).__awaiter || function (thisArg, _arguments, P, generator) {
  function adopt(value) {
    return value instanceof P ? value : new P(function (resolve) {
      resolve(value);
    });
  }

  return new (P || (P = Promise))(function (resolve, reject) {
    function fulfilled(value) {
      try {
        step(generator.next(value));
      } catch (e) {
        reject(e);
      }
    }

    function rejected(value) {
      try {
        step(generator["throw"](value));
      } catch (e) {
        reject(e);
      }
    }

    function step(result) {
      result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected);
    }

    step((generator = generator.apply(thisArg, _arguments || [])).next());
  });
};

(function () {
  return __awaiter(void 0, void 0, void 0, /*#__PURE__*/regeneratorRuntime.mark(function _callee() {
    var authClient;
    return regeneratorRuntime.wrap(function _callee$(_context) {
      while (1) {
        switch (_context.prev = _context.next) {
          case 0:
            authClient = new _AuthClient["default"]();
            _context.next = 3;
            return authClient.initClient();

          case 3:
            _context.next = 5;
            return authClient.request2AuthPage();

          case 5:
          case "end":
            return _context.stop();
        }
      }
    }, _callee);
  }));
})()["catch"](function (e) {
  console.error(e);
});

},{"./AuthClient":1}],4:[function(require,module,exports){
(function (global,Buffer,setImmediate){(function (){
"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.Auth0Client = exports["default"] = void 0;

function _typeof(obj) { "@babel/helpers - typeof"; if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") { _typeof = function _typeof(obj) { return typeof obj; }; } else { _typeof = function _typeof(obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }; } return _typeof(obj); }

/*! *****************************************************************************
Copyright (c) Microsoft Corporation. All rights reserved.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use
this file except in compliance with the License. You may obtain a copy of the
License at http://www.apache.org/licenses/LICENSE-2.0

THIS CODE IS PROVIDED ON AN *AS IS* BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION ANY IMPLIED
WARRANTIES OR CONDITIONS OF TITLE, FITNESS FOR A PARTICULAR PURPOSE,
MERCHANTABLITY OR NON-INFRINGEMENT.

See the Apache Version 2.0 License for specific language governing permissions
and limitations under the License.
***************************************************************************** */
var _e2 = function e(t, n) {
  return (_e2 = Object.setPrototypeOf || {
    __proto__: []
  } instanceof Array && function (e, t) {
    e.__proto__ = t;
  } || function (e, t) {
    for (var n in t) {
      t.hasOwnProperty(n) && (e[n] = t[n]);
    }
  })(t, n);
};

function t(t, n) {
  function i() {
    this.constructor = t;
  }

  _e2(t, n), t.prototype = null === n ? Object.create(n) : (i.prototype = n.prototype, new i());
}

var _n2 = function n() {
  return (_n2 = Object.assign || function (e) {
    for (var t, n = 1, i = arguments.length; n < i; n++) {
      for (var r in t = arguments[n]) {
        Object.prototype.hasOwnProperty.call(t, r) && (e[r] = t[r]);
      }
    }

    return e;
  }).apply(this, arguments);
};

function i(e, t) {
  var n = {};

  for (var i in e) {
    Object.prototype.hasOwnProperty.call(e, i) && t.indexOf(i) < 0 && (n[i] = e[i]);
  }

  if (null != e && "function" == typeof Object.getOwnPropertySymbols) {
    var r = 0;

    for (i = Object.getOwnPropertySymbols(e); r < i.length; r++) {
      t.indexOf(i[r]) < 0 && Object.prototype.propertyIsEnumerable.call(e, i[r]) && (n[i[r]] = e[i[r]]);
    }
  }

  return n;
}

function r(e, t, n, i) {
  return new (n || (n = Promise))(function (r, o) {
    function c(e) {
      try {
        a(i.next(e));
      } catch (e) {
        o(e);
      }
    }

    function s(e) {
      try {
        a(i["throw"](e));
      } catch (e) {
        o(e);
      }
    }

    function a(e) {
      e.done ? r(e.value) : new n(function (t) {
        t(e.value);
      }).then(c, s);
    }

    a((i = i.apply(e, t || [])).next());
  });
}

function o(e, t) {
  var n,
      i,
      r,
      o,
      c = {
    label: 0,
    sent: function sent() {
      if (1 & r[0]) throw r[1];
      return r[1];
    },
    trys: [],
    ops: []
  };
  return o = {
    next: s(0),
    "throw": s(1),
    "return": s(2)
  }, "function" == typeof Symbol && (o[Symbol.iterator] = function () {
    return this;
  }), o;

  function s(o) {
    return function (s) {
      return function (o) {
        if (n) throw new TypeError("Generator is already executing.");

        for (; c;) {
          try {
            if (n = 1, i && (r = 2 & o[0] ? i["return"] : o[0] ? i["throw"] || ((r = i["return"]) && r.call(i), 0) : i.next) && !(r = r.call(i, o[1])).done) return r;

            switch (i = 0, r && (o = [2 & o[0], r.value]), o[0]) {
              case 0:
              case 1:
                r = o;
                break;

              case 4:
                return c.label++, {
                  value: o[1],
                  done: !1
                };

              case 5:
                c.label++, i = o[1], o = [0];
                continue;

              case 7:
                o = c.ops.pop(), c.trys.pop();
                continue;

              default:
                if (!(r = c.trys, (r = r.length > 0 && r[r.length - 1]) || 6 !== o[0] && 2 !== o[0])) {
                  c = 0;
                  continue;
                }

                if (3 === o[0] && (!r || o[1] > r[0] && o[1] < r[3])) {
                  c.label = o[1];
                  break;
                }

                if (6 === o[0] && c.label < r[1]) {
                  c.label = r[1], r = o;
                  break;
                }

                if (r && c.label < r[2]) {
                  c.label = r[2], c.ops.push(o);
                  break;
                }

                r[2] && c.ops.pop(), c.trys.pop();
                continue;
            }

            o = t.call(e, c);
          } catch (e) {
            o = [6, e], i = 0;
          } finally {
            n = r = 0;
          }
        }

        if (5 & o[0]) throw o[1];
        return {
          value: o[0] ? o[1] : void 0,
          done: !0
        };
      }([o, s]);
    };
  }
}

var c = "undefined" != typeof globalThis ? globalThis : "undefined" != typeof window ? window : "undefined" != typeof global ? global : "undefined" != typeof self ? self : {};

function s(e) {
  return e && e.__esModule && Object.prototype.hasOwnProperty.call(e, "default") ? e["default"] : e;
}

function a(e, t) {
  return e(t = {
    exports: {}
  }, t.exports), t.exports;
}

var u = function u(e) {
  return e && e.Math == Math && e;
},
    l = u("object" == (typeof globalThis === "undefined" ? "undefined" : _typeof(globalThis)) && globalThis) || u("object" == (typeof window === "undefined" ? "undefined" : _typeof(window)) && window) || u("object" == (typeof self === "undefined" ? "undefined" : _typeof(self)) && self) || u("object" == _typeof(c) && c) || Function("return this")(),
    d = function d(e) {
  try {
    return !!e();
  } catch (e) {
    return !0;
  }
},
    g = !d(function () {
  return 7 != Object.defineProperty({}, 1, {
    get: function get() {
      return 7;
    }
  })[1];
}),
    f = {}.propertyIsEnumerable,
    I = Object.getOwnPropertyDescriptor,
    p = {
  f: I && !f.call({
    1: 2
  }, 1) ? function (e) {
    var t = I(this, e);
    return !!t && t.enumerable;
  } : f
},
    h = function h(e, t) {
  return {
    enumerable: !(1 & e),
    configurable: !(2 & e),
    writable: !(4 & e),
    value: t
  };
},
    y = {}.toString,
    b = function b(e) {
  return y.call(e).slice(8, -1);
},
    m = "".split,
    B = d(function () {
  return !Object("z").propertyIsEnumerable(0);
}) ? function (e) {
  return "String" == b(e) ? m.call(e, "") : Object(e);
} : Object,
    v = function v(e) {
  if (null == e) throw TypeError("Can't call method on " + e);
  return e;
},
    C = function C(e) {
  return B(v(e));
},
    F = function F(e) {
  return "object" == _typeof(e) ? null !== e : "function" == typeof e;
},
    U = function U(e, t) {
  if (!F(e)) return e;
  var n, i;
  if (t && "function" == typeof (n = e.toString) && !F(i = n.call(e))) return i;
  if ("function" == typeof (n = e.valueOf) && !F(i = n.call(e))) return i;
  if (!t && "function" == typeof (n = e.toString) && !F(i = n.call(e))) return i;
  throw TypeError("Can't convert object to primitive value");
},
    S = {}.hasOwnProperty,
    V = function V(e, t) {
  return S.call(e, t);
},
    Z = l.document,
    w = F(Z) && F(Z.createElement),
    X = function X(e) {
  return w ? Z.createElement(e) : {};
},
    G = !g && !d(function () {
  return 7 != Object.defineProperty(X("div"), "a", {
    get: function get() {
      return 7;
    }
  }).a;
}),
    x = Object.getOwnPropertyDescriptor,
    A = {
  f: g ? x : function (e, t) {
    if (e = C(e), t = U(t, !0), G) try {
      return x(e, t);
    } catch (e) {}
    if (V(e, t)) return h(!p.f.call(e, t), e[t]);
  }
},
    R = function R(e) {
  if (!F(e)) throw TypeError(String(e) + " is not an object");
  return e;
},
    W = Object.defineProperty,
    Q = {
  f: g ? W : function (e, t, n) {
    if (R(e), t = U(t, !0), R(n), G) try {
      return W(e, t, n);
    } catch (e) {}
    if ("get" in n || "set" in n) throw TypeError("Accessors not supported");
    return "value" in n && (e[t] = n.value), e;
  }
},
    L = g ? function (e, t, n) {
  return Q.f(e, t, h(1, n));
} : function (e, t, n) {
  return e[t] = n, e;
},
    J = function J(e, t) {
  try {
    L(l, e, t);
  } catch (n) {
    l[e] = t;
  }

  return t;
},
    H = l["__core-js_shared__"] || J("__core-js_shared__", {}),
    k = Function.toString;

"function" != typeof H.inspectSource && (H.inspectSource = function (e) {
  return k.call(e);
});

var E,
    T,
    Y,
    N = H.inspectSource,
    K = l.WeakMap,
    O = "function" == typeof K && /native code/.test(N(K)),
    j = a(function (e) {
  (e.exports = function (e, t) {
    return H[e] || (H[e] = void 0 !== t ? t : {});
  })("versions", []).push({
    version: "3.6.5",
    mode: "global",
    copyright: "© 2020 Denis Pushkarev (zloirock.ru)"
  });
}),
    z = 0,
    P = Math.random(),
    _ = function _(e) {
  return "Symbol(" + String(void 0 === e ? "" : e) + ")_" + (++z + P).toString(36);
},
    D = j("keys"),
    M = function M(e) {
  return D[e] || (D[e] = _(e));
},
    q = {},
    $ = l.WeakMap;

if (O) {
  var ee = new $(),
      te = ee.get,
      ne = ee.has,
      ie = ee.set;
  E = function E(e, t) {
    return ie.call(ee, e, t), t;
  }, T = function T(e) {
    return te.call(ee, e) || {};
  }, Y = function Y(e) {
    return ne.call(ee, e);
  };
} else {
  var re = M("state");
  q[re] = !0, E = function E(e, t) {
    return L(e, re, t), t;
  }, T = function T(e) {
    return V(e, re) ? e[re] : {};
  }, Y = function Y(e) {
    return V(e, re);
  };
}

var oe,
    ce = {
  set: E,
  get: T,
  has: Y,
  enforce: function enforce(e) {
    return Y(e) ? T(e) : E(e, {});
  },
  getterFor: function getterFor(e) {
    return function (t) {
      var n;
      if (!F(t) || (n = T(t)).type !== e) throw TypeError("Incompatible receiver, " + e + " required");
      return n;
    };
  }
},
    se = a(function (e) {
  var t = ce.get,
      n = ce.enforce,
      i = String(String).split("String");
  (e.exports = function (e, t, r, o) {
    var c = !!o && !!o.unsafe,
        s = !!o && !!o.enumerable,
        a = !!o && !!o.noTargetGet;
    "function" == typeof r && ("string" != typeof t || V(r, "name") || L(r, "name", t), n(r).source = i.join("string" == typeof t ? t : "")), e !== l ? (c ? !a && e[t] && (s = !0) : delete e[t], s ? e[t] = r : L(e, t, r)) : s ? e[t] = r : J(t, r);
  })(Function.prototype, "toString", function () {
    return "function" == typeof this && t(this).source || N(this);
  });
}),
    ae = l,
    ue = function ue(e) {
  return "function" == typeof e ? e : void 0;
},
    le = function le(e, t) {
  return arguments.length < 2 ? ue(ae[e]) || ue(l[e]) : ae[e] && ae[e][t] || l[e] && l[e][t];
},
    de = Math.ceil,
    ge = Math.floor,
    fe = function fe(e) {
  return isNaN(e = +e) ? 0 : (e > 0 ? ge : de)(e);
},
    Ie = Math.min,
    pe = function pe(e) {
  return e > 0 ? Ie(fe(e), 9007199254740991) : 0;
},
    he = Math.max,
    ye = Math.min,
    be = function be(e) {
  return function (t, n, i) {
    var r,
        o = C(t),
        c = pe(o.length),
        s = function (e, t) {
      var n = fe(e);
      return n < 0 ? he(n + t, 0) : ye(n, t);
    }(i, c);

    if (e && n != n) {
      for (; c > s;) {
        if ((r = o[s++]) != r) return !0;
      }
    } else for (; c > s; s++) {
      if ((e || s in o) && o[s] === n) return e || s || 0;
    }

    return !e && -1;
  };
},
    me = {
  includes: be(!0),
  indexOf: be(!1)
},
    Be = me.indexOf,
    ve = function ve(e, t) {
  var n,
      i = C(e),
      r = 0,
      o = [];

  for (n in i) {
    !V(q, n) && V(i, n) && o.push(n);
  }

  for (; t.length > r;) {
    V(i, n = t[r++]) && (~Be(o, n) || o.push(n));
  }

  return o;
},
    Ce = ["constructor", "hasOwnProperty", "isPrototypeOf", "propertyIsEnumerable", "toLocaleString", "toString", "valueOf"],
    Fe = Ce.concat("length", "prototype"),
    Ue = {
  f: Object.getOwnPropertyNames || function (e) {
    return ve(e, Fe);
  }
},
    Se = {
  f: Object.getOwnPropertySymbols
},
    Ve = le("Reflect", "ownKeys") || function (e) {
  var t = Ue.f(R(e)),
      n = Se.f;
  return n ? t.concat(n(e)) : t;
},
    Ze = function Ze(e, t) {
  for (var n = Ve(t), i = Q.f, r = A.f, o = 0; o < n.length; o++) {
    var c = n[o];
    V(e, c) || i(e, c, r(t, c));
  }
},
    we = /#|\.prototype\./,
    Xe = function Xe(e, t) {
  var n = xe[Ge(e)];
  return n == Re || n != Ae && ("function" == typeof t ? d(t) : !!t);
},
    Ge = Xe.normalize = function (e) {
  return String(e).replace(we, ".").toLowerCase();
},
    xe = Xe.data = {},
    Ae = Xe.NATIVE = "N",
    Re = Xe.POLYFILL = "P",
    We = Xe,
    Qe = A.f,
    Le = function Le(e, t) {
  var n,
      i,
      r,
      o,
      c,
      s = e.target,
      a = e.global,
      u = e.stat;
  if (n = a ? l : u ? l[s] || J(s, {}) : (l[s] || {}).prototype) for (i in t) {
    if (o = t[i], r = e.noTargetGet ? (c = Qe(n, i)) && c.value : n[i], !We(a ? i : s + (u ? "." : "#") + i, e.forced) && void 0 !== r) {
      if (_typeof(o) == _typeof(r)) continue;
      Ze(o, r);
    }

    (e.sham || r && r.sham) && L(o, "sham", !0), se(n, i, o, e);
  }
},
    Je = !!Object.getOwnPropertySymbols && !d(function () {
  return !String(Symbol());
}),
    He = Je && !Symbol.sham && "symbol" == _typeof(Symbol.iterator),
    ke = j("wks"),
    Ee = l.Symbol,
    Te = He ? Ee : Ee && Ee.withoutSetter || _,
    Ye = function Ye(e) {
  return V(ke, e) || (Je && V(Ee, e) ? ke[e] = Ee[e] : ke[e] = Te("Symbol." + e)), ke[e];
},
    Ne = Ye("match"),
    Ke = function Ke(e) {
  if (function (e) {
    var t;
    return F(e) && (void 0 !== (t = e[Ne]) ? !!t : "RegExp" == b(e));
  }(e)) throw TypeError("The method doesn't accept regular expressions");
  return e;
},
    Oe = Ye("match"),
    je = function je(e) {
  var t = /./;

  try {
    "/./"[e](t);
  } catch (n) {
    try {
      return t[Oe] = !1, "/./"[e](t);
    } catch (e) {}
  }

  return !1;
},
    ze = A.f,
    Pe = "".startsWith,
    _e = Math.min,
    De = je("startsWith"),
    Me = !(De || (oe = ze(String.prototype, "startsWith"), !oe || oe.writable));

Le({
  target: "String",
  proto: !0,
  forced: !Me && !De
}, {
  startsWith: function startsWith(e) {
    var t = String(v(this));
    Ke(e);
    var n = pe(_e(arguments.length > 1 ? arguments[1] : void 0, t.length)),
        i = String(e);
    return Pe ? Pe.call(t, i, n) : t.slice(n, n + i.length) === i;
  }
});

var qe,
    $e,
    et = function et(e) {
  if ("function" != typeof e) throw TypeError(String(e) + " is not a function");
  return e;
},
    tt = function tt(e, t, n) {
  if (et(e), void 0 === t) return e;

  switch (n) {
    case 0:
      return function () {
        return e.call(t);
      };

    case 1:
      return function (n) {
        return e.call(t, n);
      };

    case 2:
      return function (n, i) {
        return e.call(t, n, i);
      };

    case 3:
      return function (n, i, r) {
        return e.call(t, n, i, r);
      };
  }

  return function () {
    return e.apply(t, arguments);
  };
},
    nt = Function.call,
    it = function it(e, t, n) {
  return tt(nt, l[e].prototype[t], n);
},
    rt = (it("String", "startsWith"), Array.isArray || function (e) {
  return "Array" == b(e);
}),
    ot = function ot(e) {
  return Object(v(e));
},
    ct = function ct(e, t, n) {
  var i = U(t);
  i in e ? Q.f(e, i, h(0, n)) : e[i] = n;
},
    st = Ye("species"),
    at = function at(e, t) {
  var n;
  return rt(e) && ("function" != typeof (n = e.constructor) || n !== Array && !rt(n.prototype) ? F(n) && null === (n = n[st]) && (n = void 0) : n = void 0), new (void 0 === n ? Array : n)(0 === t ? 0 : t);
},
    ut = le("navigator", "userAgent") || "",
    lt = l.process,
    dt = lt && lt.versions,
    gt = dt && dt.v8;

gt ? $e = (qe = gt.split("."))[0] + qe[1] : ut && (!(qe = ut.match(/Edge\/(\d+)/)) || qe[1] >= 74) && (qe = ut.match(/Chrome\/(\d+)/)) && ($e = qe[1]);

var ft = $e && +$e,
    It = Ye("species"),
    pt = Ye("isConcatSpreadable"),
    ht = ft >= 51 || !d(function () {
  var e = [];
  return e[pt] = !1, e.concat()[0] !== e;
}),
    yt = function (e) {
  return ft >= 51 || !d(function () {
    var t = [];
    return (t.constructor = {})[It] = function () {
      return {
        foo: 1
      };
    }, 1 !== t[e](Boolean).foo;
  });
}("concat"),
    bt = function bt(e) {
  if (!F(e)) return !1;
  var t = e[pt];
  return void 0 !== t ? !!t : rt(e);
};

Le({
  target: "Array",
  proto: !0,
  forced: !ht || !yt
}, {
  concat: function concat(e) {
    var t,
        n,
        i,
        r,
        o,
        c = ot(this),
        s = at(c, 0),
        a = 0;

    for (t = -1, i = arguments.length; t < i; t++) {
      if (bt(o = -1 === t ? c : arguments[t])) {
        if (a + (r = pe(o.length)) > 9007199254740991) throw TypeError("Maximum allowed index exceeded");

        for (n = 0; n < r; n++, a++) {
          n in o && ct(s, a, o[n]);
        }
      } else {
        if (a >= 9007199254740991) throw TypeError("Maximum allowed index exceeded");
        ct(s, a++, o);
      }
    }

    return s.length = a, s;
  }
});
var mt = {};
mt[Ye("toStringTag")] = "z";
var Bt = "[object z]" === String(mt),
    vt = Ye("toStringTag"),
    Ct = "Arguments" == b(function () {
  return arguments;
}()),
    Ft = Bt ? b : function (e) {
  var t, n, i;
  return void 0 === e ? "Undefined" : null === e ? "Null" : "string" == typeof (n = function (e, t) {
    try {
      return e[t];
    } catch (e) {}
  }(t = Object(e), vt)) ? n : Ct ? b(t) : "Object" == (i = b(t)) && "function" == typeof t.callee ? "Arguments" : i;
},
    Ut = Bt ? {}.toString : function () {
  return "[object " + Ft(this) + "]";
};
Bt || se(Object.prototype, "toString", Ut, {
  unsafe: !0
});

var St,
    Vt = Object.keys || function (e) {
  return ve(e, Ce);
},
    Zt = g ? Object.defineProperties : function (e, t) {
  R(e);

  for (var n, i = Vt(t), r = i.length, o = 0; r > o;) {
    Q.f(e, n = i[o++], t[n]);
  }

  return e;
},
    wt = le("document", "documentElement"),
    Xt = M("IE_PROTO"),
    Gt = function Gt() {},
    xt = function xt(e) {
  return "<script>" + e + "<\/script>";
},
    _At = function At() {
  try {
    St = document.domain && new ActiveXObject("htmlfile");
  } catch (e) {}

  var e, t;
  _At = St ? function (e) {
    e.write(xt("")), e.close();
    var t = e.parentWindow.Object;
    return e = null, t;
  }(St) : ((t = X("iframe")).style.display = "none", wt.appendChild(t), t.src = String("javascript:"), (e = t.contentWindow.document).open(), e.write(xt("document.F=Object")), e.close(), e.F);

  for (var n = Ce.length; n--;) {
    delete _At.prototype[Ce[n]];
  }

  return _At();
};

q[Xt] = !0;

var Rt = Object.create || function (e, t) {
  var n;
  return null !== e ? (Gt.prototype = R(e), n = new Gt(), Gt.prototype = null, n[Xt] = e) : n = _At(), void 0 === t ? n : Zt(n, t);
},
    Wt = Ue.f,
    Qt = {}.toString,
    Lt = "object" == (typeof window === "undefined" ? "undefined" : _typeof(window)) && window && Object.getOwnPropertyNames ? Object.getOwnPropertyNames(window) : [],
    Jt = {
  f: function f(e) {
    return Lt && "[object Window]" == Qt.call(e) ? function (e) {
      try {
        return Wt(e);
      } catch (e) {
        return Lt.slice();
      }
    }(e) : Wt(C(e));
  }
},
    Ht = {
  f: Ye
},
    kt = Q.f,
    Et = function Et(e) {
  var t = ae.Symbol || (ae.Symbol = {});
  V(t, e) || kt(t, e, {
    value: Ht.f(e)
  });
},
    Tt = Q.f,
    Yt = Ye("toStringTag"),
    Nt = function Nt(e, t, n) {
  e && !V(e = n ? e : e.prototype, Yt) && Tt(e, Yt, {
    configurable: !0,
    value: t
  });
},
    Kt = [].push,
    Ot = function Ot(e) {
  var t = 1 == e,
      n = 2 == e,
      i = 3 == e,
      r = 4 == e,
      o = 6 == e,
      c = 5 == e || o;
  return function (s, a, u, l) {
    for (var d, g, f = ot(s), I = B(f), p = tt(a, u, 3), h = pe(I.length), y = 0, b = l || at, m = t ? b(s, h) : n ? b(s, 0) : void 0; h > y; y++) {
      if ((c || y in I) && (g = p(d = I[y], y, f), e)) if (t) m[y] = g;else if (g) switch (e) {
        case 3:
          return !0;

        case 5:
          return d;

        case 6:
          return y;

        case 2:
          Kt.call(m, d);
      } else if (r) return !1;
    }

    return o ? -1 : i || r ? r : m;
  };
},
    jt = {
  forEach: Ot(0),
  map: Ot(1),
  filter: Ot(2),
  some: Ot(3),
  every: Ot(4),
  find: Ot(5),
  findIndex: Ot(6)
}.forEach,
    zt = M("hidden"),
    Pt = Ye("toPrimitive"),
    _t = ce.set,
    Dt = ce.getterFor("Symbol"),
    Mt = Object.prototype,
    _qt = l.Symbol,
    $t = le("JSON", "stringify"),
    en = A.f,
    tn = Q.f,
    nn = Jt.f,
    rn = p.f,
    on = j("symbols"),
    cn = j("op-symbols"),
    sn = j("string-to-symbol-registry"),
    an = j("symbol-to-string-registry"),
    un = j("wks"),
    ln = l.QObject,
    dn = !ln || !ln.prototype || !ln.prototype.findChild,
    gn = g && d(function () {
  return 7 != Rt(tn({}, "a", {
    get: function get() {
      return tn(this, "a", {
        value: 7
      }).a;
    }
  })).a;
}) ? function (e, t, n) {
  var i = en(Mt, t);
  i && delete Mt[t], tn(e, t, n), i && e !== Mt && tn(Mt, t, i);
} : tn,
    fn = function fn(e, t) {
  var n = on[e] = Rt(_qt.prototype);
  return _t(n, {
    type: "Symbol",
    tag: e,
    description: t
  }), g || (n.description = t), n;
},
    In = He ? function (e) {
  return "symbol" == _typeof(e);
} : function (e) {
  return Object(e) instanceof _qt;
},
    pn = function pn(e, t, n) {
  e === Mt && pn(cn, t, n), R(e);
  var i = U(t, !0);
  return R(n), V(on, i) ? (n.enumerable ? (V(e, zt) && e[zt][i] && (e[zt][i] = !1), n = Rt(n, {
    enumerable: h(0, !1)
  })) : (V(e, zt) || tn(e, zt, h(1, {})), e[zt][i] = !0), gn(e, i, n)) : tn(e, i, n);
},
    hn = function hn(e, t) {
  R(e);
  var n = C(t),
      i = Vt(n).concat(Bn(n));
  return jt(i, function (t) {
    g && !yn.call(n, t) || pn(e, t, n[t]);
  }), e;
},
    yn = function yn(e) {
  var t = U(e, !0),
      n = rn.call(this, t);
  return !(this === Mt && V(on, t) && !V(cn, t)) && (!(n || !V(this, t) || !V(on, t) || V(this, zt) && this[zt][t]) || n);
},
    bn = function bn(e, t) {
  var n = C(e),
      i = U(t, !0);

  if (n !== Mt || !V(on, i) || V(cn, i)) {
    var r = en(n, i);
    return !r || !V(on, i) || V(n, zt) && n[zt][i] || (r.enumerable = !0), r;
  }
},
    mn = function mn(e) {
  var t = nn(C(e)),
      n = [];
  return jt(t, function (e) {
    V(on, e) || V(q, e) || n.push(e);
  }), n;
},
    Bn = function Bn(e) {
  var t = e === Mt,
      n = nn(t ? cn : C(e)),
      i = [];
  return jt(n, function (e) {
    !V(on, e) || t && !V(Mt, e) || i.push(on[e]);
  }), i;
};

if (Je || (se((_qt = function qt() {
  if (this instanceof _qt) throw TypeError("Symbol is not a constructor");

  var e = arguments.length && void 0 !== arguments[0] ? String(arguments[0]) : void 0,
      t = _(e),
      n = function n(e) {
    this === Mt && n.call(cn, e), V(this, zt) && V(this[zt], t) && (this[zt][t] = !1), gn(this, t, h(1, e));
  };

  return g && dn && gn(Mt, t, {
    configurable: !0,
    set: n
  }), fn(t, e);
}).prototype, "toString", function () {
  return Dt(this).tag;
}), se(_qt, "withoutSetter", function (e) {
  return fn(_(e), e);
}), p.f = yn, Q.f = pn, A.f = bn, Ue.f = Jt.f = mn, Se.f = Bn, Ht.f = function (e) {
  return fn(Ye(e), e);
}, g && (tn(_qt.prototype, "description", {
  configurable: !0,
  get: function get() {
    return Dt(this).description;
  }
}), se(Mt, "propertyIsEnumerable", yn, {
  unsafe: !0
}))), Le({
  global: !0,
  wrap: !0,
  forced: !Je,
  sham: !Je
}, {
  Symbol: _qt
}), jt(Vt(un), function (e) {
  Et(e);
}), Le({
  target: "Symbol",
  stat: !0,
  forced: !Je
}, {
  "for": function _for(e) {
    var t = String(e);
    if (V(sn, t)) return sn[t];

    var n = _qt(t);

    return sn[t] = n, an[n] = t, n;
  },
  keyFor: function keyFor(e) {
    if (!In(e)) throw TypeError(e + " is not a symbol");
    if (V(an, e)) return an[e];
  },
  useSetter: function useSetter() {
    dn = !0;
  },
  useSimple: function useSimple() {
    dn = !1;
  }
}), Le({
  target: "Object",
  stat: !0,
  forced: !Je,
  sham: !g
}, {
  create: function create(e, t) {
    return void 0 === t ? Rt(e) : hn(Rt(e), t);
  },
  defineProperty: pn,
  defineProperties: hn,
  getOwnPropertyDescriptor: bn
}), Le({
  target: "Object",
  stat: !0,
  forced: !Je
}, {
  getOwnPropertyNames: mn,
  getOwnPropertySymbols: Bn
}), Le({
  target: "Object",
  stat: !0,
  forced: d(function () {
    Se.f(1);
  })
}, {
  getOwnPropertySymbols: function getOwnPropertySymbols(e) {
    return Se.f(ot(e));
  }
}), $t) {
  var vn = !Je || d(function () {
    var e = _qt();

    return "[null]" != $t([e]) || "{}" != $t({
      a: e
    }) || "{}" != $t(Object(e));
  });
  Le({
    target: "JSON",
    stat: !0,
    forced: vn
  }, {
    stringify: function stringify(e, t, n) {
      for (var i, r = [e], o = 1; arguments.length > o;) {
        r.push(arguments[o++]);
      }

      if (i = t, (F(t) || void 0 !== e) && !In(e)) return rt(t) || (t = function t(e, _t2) {
        if ("function" == typeof i && (_t2 = i.call(this, e, _t2)), !In(_t2)) return _t2;
      }), r[1] = t, $t.apply(null, r);
    }
  });
}

_qt.prototype[Pt] || L(_qt.prototype, Pt, _qt.prototype.valueOf), Nt(_qt, "Symbol"), q[zt] = !0, Et("asyncIterator");
var Cn = Q.f,
    Fn = l.Symbol;

if (g && "function" == typeof Fn && (!("description" in Fn.prototype) || void 0 !== Fn().description)) {
  var Un = {},
      Sn = function Sn() {
    var e = arguments.length < 1 || void 0 === arguments[0] ? void 0 : String(arguments[0]),
        t = this instanceof Sn ? new Fn(e) : void 0 === e ? Fn() : Fn(e);
    return "" === e && (Un[t] = !0), t;
  };

  Ze(Sn, Fn);
  var Vn = Sn.prototype = Fn.prototype;
  Vn.constructor = Sn;
  var Zn = Vn.toString,
      wn = "Symbol(test)" == String(Fn("test")),
      Xn = /^Symbol\((.*)\)[^)]+$/;
  Cn(Vn, "description", {
    configurable: !0,
    get: function get() {
      var e = F(this) ? this.valueOf() : this,
          t = Zn.call(e);
      if (V(Un, e)) return "";
      var n = wn ? t.slice(7, -1) : t.replace(Xn, "$1");
      return "" === n ? void 0 : n;
    }
  }), Le({
    global: !0,
    forced: !0
  }, {
    Symbol: Sn
  });
}

Et("hasInstance"), Et("isConcatSpreadable"), Et("iterator"), Et("match"), Et("matchAll"), Et("replace"), Et("search"), Et("species"), Et("split"), Et("toPrimitive"), Et("toStringTag"), Et("unscopables"), Nt(Math, "Math", !0), Nt(l.JSON, "JSON", !0);
ae.Symbol;

var Gn,
    xn,
    An,
    Rn = function Rn(e) {
  return function (t, n) {
    var i,
        r,
        o = String(v(t)),
        c = fe(n),
        s = o.length;
    return c < 0 || c >= s ? e ? "" : void 0 : (i = o.charCodeAt(c)) < 55296 || i > 56319 || c + 1 === s || (r = o.charCodeAt(c + 1)) < 56320 || r > 57343 ? e ? o.charAt(c) : i : e ? o.slice(c, c + 2) : r - 56320 + (i - 55296 << 10) + 65536;
  };
},
    Wn = {
  codeAt: Rn(!1),
  charAt: Rn(!0)
},
    Qn = !d(function () {
  function e() {}

  return e.prototype.constructor = null, Object.getPrototypeOf(new e()) !== e.prototype;
}),
    Ln = M("IE_PROTO"),
    Jn = Object.prototype,
    Hn = Qn ? Object.getPrototypeOf : function (e) {
  return e = ot(e), V(e, Ln) ? e[Ln] : "function" == typeof e.constructor && e instanceof e.constructor ? e.constructor.prototype : e instanceof Object ? Jn : null;
},
    kn = Ye("iterator"),
    En = !1;

[].keys && ("next" in (An = [].keys()) ? (xn = Hn(Hn(An))) !== Object.prototype && (Gn = xn) : En = !0), null == Gn && (Gn = {}), V(Gn, kn) || L(Gn, kn, function () {
  return this;
});

var Tn = {
  IteratorPrototype: Gn,
  BUGGY_SAFARI_ITERATORS: En
},
    Yn = {},
    Nn = Tn.IteratorPrototype,
    Kn = function Kn() {
  return this;
},
    On = Object.setPrototypeOf || ("__proto__" in {} ? function () {
  var e,
      t = !1,
      n = {};

  try {
    (e = Object.getOwnPropertyDescriptor(Object.prototype, "__proto__").set).call(n, []), t = n instanceof Array;
  } catch (e) {}

  return function (n, i) {
    return R(n), function (e) {
      if (!F(e) && null !== e) throw TypeError("Can't set " + String(e) + " as a prototype");
    }(i), t ? e.call(n, i) : n.__proto__ = i, n;
  };
}() : void 0),
    jn = Tn.IteratorPrototype,
    zn = Tn.BUGGY_SAFARI_ITERATORS,
    Pn = Ye("iterator"),
    _n = function _n() {
  return this;
},
    Dn = function Dn(e, t, n, i, r, o, c) {
  !function (e, t, n) {
    var i = t + " Iterator";
    e.prototype = Rt(Nn, {
      next: h(1, n)
    }), Nt(e, i, !1), Yn[i] = Kn;
  }(n, t, i);

  var s,
      a,
      u,
      l = function l(e) {
    if (e === r && p) return p;
    if (!zn && e in f) return f[e];

    switch (e) {
      case "keys":
      case "values":
      case "entries":
        return function () {
          return new n(this, e);
        };
    }

    return function () {
      return new n(this);
    };
  },
      d = t + " Iterator",
      g = !1,
      f = e.prototype,
      I = f[Pn] || f["@@iterator"] || r && f[r],
      p = !zn && I || l(r),
      y = "Array" == t && f.entries || I;

  if (y && (s = Hn(y.call(new e())), jn !== Object.prototype && s.next && (Hn(s) !== jn && (On ? On(s, jn) : "function" != typeof s[Pn] && L(s, Pn, _n)), Nt(s, d, !0))), "values" == r && I && "values" !== I.name && (g = !0, p = function p() {
    return I.call(this);
  }), f[Pn] !== p && L(f, Pn, p), Yn[t] = p, r) if (a = {
    values: l("values"),
    keys: o ? p : l("keys"),
    entries: l("entries")
  }, c) for (u in a) {
    (zn || g || !(u in f)) && se(f, u, a[u]);
  } else Le({
    target: t,
    proto: !0,
    forced: zn || g
  }, a);
  return a;
},
    Mn = Wn.charAt,
    qn = ce.set,
    $n = ce.getterFor("String Iterator");

Dn(String, "String", function (e) {
  qn(this, {
    type: "String Iterator",
    string: String(e),
    index: 0
  });
}, function () {
  var e,
      t = $n(this),
      n = t.string,
      i = t.index;
  return i >= n.length ? {
    value: void 0,
    done: !0
  } : (e = Mn(n, i), t.index += e.length, {
    value: e,
    done: !1
  });
});

var ei = function ei(e, t, n, i) {
  try {
    return i ? t(R(n)[0], n[1]) : t(n);
  } catch (t) {
    var r = e["return"];
    throw void 0 !== r && R(r.call(e)), t;
  }
},
    ti = Ye("iterator"),
    ni = Array.prototype,
    ii = function ii(e) {
  return void 0 !== e && (Yn.Array === e || ni[ti] === e);
},
    ri = Ye("iterator"),
    oi = function oi(e) {
  if (null != e) return e[ri] || e["@@iterator"] || Yn[Ft(e)];
},
    ci = Ye("iterator"),
    si = !1;

try {
  var ai = 0,
      ui = {
    next: function next() {
      return {
        done: !!ai++
      };
    },
    "return": function _return() {
      si = !0;
    }
  };
  ui[ci] = function () {
    return this;
  }, Array.from(ui, function () {
    throw 2;
  });
} catch (e) {}

var li = function li(e, t) {
  if (!t && !si) return !1;
  var n = !1;

  try {
    var i = {};
    i[ci] = function () {
      return {
        next: function next() {
          return {
            done: n = !0
          };
        }
      };
    }, e(i);
  } catch (e) {}

  return n;
},
    di = !li(function (e) {
  Array.from(e);
});

Le({
  target: "Array",
  stat: !0,
  forced: di
}, {
  from: function from(e) {
    var t,
        n,
        i,
        r,
        o,
        c,
        s = ot(e),
        a = "function" == typeof this ? this : Array,
        u = arguments.length,
        l = u > 1 ? arguments[1] : void 0,
        d = void 0 !== l,
        g = oi(s),
        f = 0;
    if (d && (l = tt(l, u > 2 ? arguments[2] : void 0, 2)), null == g || a == Array && ii(g)) for (n = new a(t = pe(s.length)); t > f; f++) {
      c = d ? l(s[f], f) : s[f], ct(n, f, c);
    } else for (o = (r = g.call(s)).next, n = new a(); !(i = o.call(r)).done; f++) {
      c = d ? ei(r, l, [i.value, f], !0) : i.value, ct(n, f, c);
    }
    return n.length = f, n;
  }
});
ae.Array.from;

var gi,
    fi = "undefined" != typeof ArrayBuffer && "undefined" != typeof DataView,
    Ii = Q.f,
    pi = l.Int8Array,
    hi = pi && pi.prototype,
    yi = l.Uint8ClampedArray,
    bi = yi && yi.prototype,
    mi = pi && Hn(pi),
    Bi = hi && Hn(hi),
    vi = Object.prototype,
    Ci = vi.isPrototypeOf,
    Fi = Ye("toStringTag"),
    Ui = _("TYPED_ARRAY_TAG"),
    Si = fi && !!On && "Opera" !== Ft(l.opera),
    Vi = {
  Int8Array: 1,
  Uint8Array: 1,
  Uint8ClampedArray: 1,
  Int16Array: 2,
  Uint16Array: 2,
  Int32Array: 4,
  Uint32Array: 4,
  Float32Array: 4,
  Float64Array: 8
},
    Zi = function Zi(e) {
  return F(e) && V(Vi, Ft(e));
};

for (gi in Vi) {
  l[gi] || (Si = !1);
}

if ((!Si || "function" != typeof mi || mi === Function.prototype) && (mi = function mi() {
  throw TypeError("Incorrect invocation");
}, Si)) for (gi in Vi) {
  l[gi] && On(l[gi], mi);
}
if ((!Si || !Bi || Bi === vi) && (Bi = mi.prototype, Si)) for (gi in Vi) {
  l[gi] && On(l[gi].prototype, Bi);
}
if (Si && Hn(bi) !== Bi && On(bi, Bi), g && !V(Bi, Fi)) for (gi in !0, Ii(Bi, Fi, {
  get: function get() {
    return F(this) ? this[Ui] : void 0;
  }
}), Vi) {
  l[gi] && L(l[gi], Ui, gi);
}

var wi = function wi(e) {
  if (Zi(e)) return e;
  throw TypeError("Target is not a typed array");
},
    Xi = function Xi(e) {
  if (On) {
    if (Ci.call(mi, e)) return e;
  } else for (var t in Vi) {
    if (V(Vi, gi)) {
      var n = l[t];
      if (n && (e === n || Ci.call(n, e))) return e;
    }
  }

  throw TypeError("Target is not a typed array constructor");
},
    Gi = function Gi(e, t, n) {
  if (g) {
    if (n) for (var i in Vi) {
      var r = l[i];
      r && V(r.prototype, e) && delete r.prototype[e];
    }
    Bi[e] && !n || se(Bi, e, n ? t : Si && hi[e] || t);
  }
},
    xi = Ye("species"),
    Ai = wi,
    Ri = Xi,
    Wi = [].slice;

Gi("slice", function (e, t) {
  for (var n = Wi.call(Ai(this), e, t), i = function (e, t) {
    var n,
        i = R(e).constructor;
    return void 0 === i || null == (n = R(i)[xi]) ? t : et(n);
  }(this, this.constructor), r = 0, o = n.length, c = new (Ri(i))(o); o > r;) {
    c[r] = n[r++];
  }

  return c;
}, d(function () {
  new Int8Array(1).slice();
}));
var Qi = Ye("unscopables"),
    Li = Array.prototype;
null == Li[Qi] && Q.f(Li, Qi, {
  configurable: !0,
  value: Rt(null)
});

var Ji = function Ji(e) {
  Li[Qi][e] = !0;
},
    Hi = Object.defineProperty,
    ki = {},
    Ei = function Ei(e) {
  throw e;
},
    Ti = me.includes,
    Yi = function (e, t) {
  if (V(ki, e)) return ki[e];
  t || (t = {});
  var n = [][e],
      i = !!V(t, "ACCESSORS") && t.ACCESSORS,
      r = V(t, 0) ? t[0] : Ei,
      o = V(t, 1) ? t[1] : void 0;
  return ki[e] = !!n && !d(function () {
    if (i && !g) return !0;
    var e = {
      length: -1
    };
    i ? Hi(e, 1, {
      enumerable: !0,
      get: Ei
    }) : e[1] = 1, n.call(e, r, o);
  });
}("indexOf", {
  ACCESSORS: !0,
  1: 0
});

Le({
  target: "Array",
  proto: !0,
  forced: !Yi
}, {
  includes: function includes(e) {
    return Ti(this, e, arguments.length > 1 ? arguments[1] : void 0);
  }
}), Ji("includes");
it("Array", "includes");
Le({
  target: "String",
  proto: !0,
  forced: !je("includes")
}, {
  includes: function includes(e) {
    return !!~String(v(this)).indexOf(Ke(e), arguments.length > 1 ? arguments[1] : void 0);
  }
});
it("String", "includes");

var Ni = !d(function () {
  return Object.isExtensible(Object.preventExtensions({}));
}),
    Ki = a(function (e) {
  var t = Q.f,
      n = _("meta"),
      i = 0,
      r = Object.isExtensible || function () {
    return !0;
  },
      o = function o(e) {
    t(e, n, {
      value: {
        objectID: "O" + ++i,
        weakData: {}
      }
    });
  },
      c = e.exports = {
    REQUIRED: !1,
    fastKey: function fastKey(e, t) {
      if (!F(e)) return "symbol" == _typeof(e) ? e : ("string" == typeof e ? "S" : "P") + e;

      if (!V(e, n)) {
        if (!r(e)) return "F";
        if (!t) return "E";
        o(e);
      }

      return e[n].objectID;
    },
    getWeakData: function getWeakData(e, t) {
      if (!V(e, n)) {
        if (!r(e)) return !0;
        if (!t) return !1;
        o(e);
      }

      return e[n].weakData;
    },
    onFreeze: function onFreeze(e) {
      return Ni && c.REQUIRED && r(e) && !V(e, n) && o(e), e;
    }
  };

  q[n] = !0;
}),
    Oi = (Ki.REQUIRED, Ki.fastKey, Ki.getWeakData, Ki.onFreeze, a(function (e) {
  var t = function t(e, _t3) {
    this.stopped = e, this.result = _t3;
  };

  (e.exports = function (e, n, i, r, o) {
    var c,
        s,
        a,
        u,
        l,
        d,
        g,
        f = tt(n, i, r ? 2 : 1);
    if (o) c = e;else {
      if ("function" != typeof (s = oi(e))) throw TypeError("Target is not iterable");

      if (ii(s)) {
        for (a = 0, u = pe(e.length); u > a; a++) {
          if ((l = r ? f(R(g = e[a])[0], g[1]) : f(e[a])) && l instanceof t) return l;
        }

        return new t(!1);
      }

      c = s.call(e);
    }

    for (d = c.next; !(g = d.call(c)).done;) {
      if ("object" == _typeof(l = ei(c, f, g.value, r)) && l && l instanceof t) return l;
    }

    return new t(!1);
  }).stop = function (e) {
    return new t(!0, e);
  };
})),
    ji = function ji(e, t, n) {
  if (!(e instanceof t)) throw TypeError("Incorrect " + (n ? n + " " : "") + "invocation");
  return e;
},
    zi = function zi(e, t, n) {
  for (var i in t) {
    se(e, i, t[i], n);
  }

  return e;
},
    Pi = Ye("species"),
    _i = Q.f,
    Di = Ki.fastKey,
    Mi = ce.set,
    qi = ce.getterFor,
    $i = (function (e, t, n) {
  var i = -1 !== e.indexOf("Map"),
      r = -1 !== e.indexOf("Weak"),
      o = i ? "set" : "add",
      c = l[e],
      s = c && c.prototype,
      a = c,
      u = {},
      g = function g(e) {
    var t = s[e];
    se(s, e, "add" == e ? function (e) {
      return t.call(this, 0 === e ? 0 : e), this;
    } : "delete" == e ? function (e) {
      return !(r && !F(e)) && t.call(this, 0 === e ? 0 : e);
    } : "get" == e ? function (e) {
      return r && !F(e) ? void 0 : t.call(this, 0 === e ? 0 : e);
    } : "has" == e ? function (e) {
      return !(r && !F(e)) && t.call(this, 0 === e ? 0 : e);
    } : function (e, n) {
      return t.call(this, 0 === e ? 0 : e, n), this;
    });
  };

  if (We(e, "function" != typeof c || !(r || s.forEach && !d(function () {
    new c().entries().next();
  })))) a = n.getConstructor(t, e, i, o), Ki.REQUIRED = !0;else if (We(e, !0)) {
    var f = new a(),
        I = f[o](r ? {} : -0, 1) != f,
        p = d(function () {
      f.has(1);
    }),
        h = li(function (e) {
      new c(e);
    }),
        y = !r && d(function () {
      for (var e = new c(), t = 5; t--;) {
        e[o](t, t);
      }

      return !e.has(-0);
    });
    h || ((a = t(function (t, n) {
      ji(t, a, e);

      var r = function (e, t, n) {
        var i, r;
        return On && "function" == typeof (i = t.constructor) && i !== n && F(r = i.prototype) && r !== n.prototype && On(e, r), e;
      }(new c(), t, a);

      return null != n && Oi(n, r[o], r, i), r;
    })).prototype = s, s.constructor = a), (p || y) && (g("delete"), g("has"), i && g("get")), (y || I) && g(o), r && s.clear && delete s.clear;
  }
  u[e] = a, Le({
    global: !0,
    forced: a != c
  }, u), Nt(a, e), r || n.setStrong(a, e, i);
}("Set", function (e) {
  return function () {
    return e(this, arguments.length ? arguments[0] : void 0);
  };
}, {
  getConstructor: function getConstructor(e, t, n, i) {
    var r = e(function (e, o) {
      ji(e, r, t), Mi(e, {
        type: t,
        index: Rt(null),
        first: void 0,
        last: void 0,
        size: 0
      }), g || (e.size = 0), null != o && Oi(o, e[i], e, n);
    }),
        o = qi(t),
        c = function c(e, t, n) {
      var i,
          r,
          c = o(e),
          a = s(e, t);
      return a ? a.value = n : (c.last = a = {
        index: r = Di(t, !0),
        key: t,
        value: n,
        previous: i = c.last,
        next: void 0,
        removed: !1
      }, c.first || (c.first = a), i && (i.next = a), g ? c.size++ : e.size++, "F" !== r && (c.index[r] = a)), e;
    },
        s = function s(e, t) {
      var n,
          i = o(e),
          r = Di(t);
      if ("F" !== r) return i.index[r];

      for (n = i.first; n; n = n.next) {
        if (n.key == t) return n;
      }
    };

    return zi(r.prototype, {
      clear: function clear() {
        for (var e = o(this), t = e.index, n = e.first; n;) {
          n.removed = !0, n.previous && (n.previous = n.previous.next = void 0), delete t[n.index], n = n.next;
        }

        e.first = e.last = void 0, g ? e.size = 0 : this.size = 0;
      },
      "delete": function _delete(e) {
        var t = this,
            n = o(t),
            i = s(t, e);

        if (i) {
          var r = i.next,
              c = i.previous;
          delete n.index[i.index], i.removed = !0, c && (c.next = r), r && (r.previous = c), n.first == i && (n.first = r), n.last == i && (n.last = c), g ? n.size-- : t.size--;
        }

        return !!i;
      },
      forEach: function forEach(e) {
        for (var t, n = o(this), i = tt(e, arguments.length > 1 ? arguments[1] : void 0, 3); t = t ? t.next : n.first;) {
          for (i(t.value, t.key, this); t && t.removed;) {
            t = t.previous;
          }
        }
      },
      has: function has(e) {
        return !!s(this, e);
      }
    }), zi(r.prototype, n ? {
      get: function get(e) {
        var t = s(this, e);
        return t && t.value;
      },
      set: function set(e, t) {
        return c(this, 0 === e ? 0 : e, t);
      }
    } : {
      add: function add(e) {
        return c(this, e = 0 === e ? 0 : e, e);
      }
    }), g && _i(r.prototype, "size", {
      get: function get() {
        return o(this).size;
      }
    }), r;
  },
  setStrong: function setStrong(e, t, n) {
    var i = t + " Iterator",
        r = qi(t),
        o = qi(i);
    Dn(e, t, function (e, t) {
      Mi(this, {
        type: i,
        target: e,
        state: r(e),
        kind: t,
        last: void 0
      });
    }, function () {
      for (var e = o(this), t = e.kind, n = e.last; n && n.removed;) {
        n = n.previous;
      }

      return e.target && (e.last = n = n ? n.next : e.state.first) ? "keys" == t ? {
        value: n.key,
        done: !1
      } : "values" == t ? {
        value: n.value,
        done: !1
      } : {
        value: [n.key, n.value],
        done: !1
      } : (e.target = void 0, {
        value: void 0,
        done: !0
      });
    }, n ? "entries" : "values", !n, !0), function (e) {
      var t = le(e),
          n = Q.f;
      g && t && !t[Pi] && n(t, Pi, {
        configurable: !0,
        get: function get() {
          return this;
        }
      });
    }(t);
  }
}), {
  CSSRuleList: 0,
  CSSStyleDeclaration: 0,
  CSSValueList: 0,
  ClientRectList: 0,
  DOMRectList: 0,
  DOMStringList: 0,
  DOMTokenList: 1,
  DataTransferItemList: 0,
  FileList: 0,
  HTMLAllCollection: 0,
  HTMLCollection: 0,
  HTMLFormElement: 0,
  HTMLSelectElement: 0,
  MediaList: 0,
  MimeTypeArray: 0,
  NamedNodeMap: 0,
  NodeList: 1,
  PaintRequestList: 0,
  Plugin: 0,
  PluginArray: 0,
  SVGLengthList: 0,
  SVGNumberList: 0,
  SVGPathSegList: 0,
  SVGPointList: 0,
  SVGStringList: 0,
  SVGTransformList: 0,
  SourceBufferList: 0,
  StyleSheetList: 0,
  TextTrackCueList: 0,
  TextTrackList: 0,
  TouchList: 0
}),
    er = ce.set,
    tr = ce.getterFor("Array Iterator"),
    nr = Dn(Array, "Array", function (e, t) {
  er(this, {
    type: "Array Iterator",
    target: C(e),
    index: 0,
    kind: t
  });
}, function () {
  var e = tr(this),
      t = e.target,
      n = e.kind,
      i = e.index++;
  return !t || i >= t.length ? (e.target = void 0, {
    value: void 0,
    done: !0
  }) : "keys" == n ? {
    value: i,
    done: !1
  } : "values" == n ? {
    value: t[i],
    done: !1
  } : {
    value: [i, t[i]],
    done: !1
  };
}, "values");

Yn.Arguments = Yn.Array, Ji("keys"), Ji("values"), Ji("entries");
var ir = Ye("iterator"),
    rr = Ye("toStringTag"),
    or = nr.values;

for (var cr in $i) {
  var sr = l[cr],
      ar = sr && sr.prototype;

  if (ar) {
    if (ar[ir] !== or) try {
      L(ar, ir, or);
    } catch (e) {
      ar[ir] = or;
    }
    if (ar[rr] || L(ar, rr, cr), $i[cr]) for (var ur in nr) {
      if (ar[ur] !== nr[ur]) try {
        L(ar, ur, nr[ur]);
      } catch (e) {
        ar[ur] = nr[ur];
      }
    }
  }
}

ae.Set;

function lr(e) {
  var t = this.constructor;
  return this.then(function (n) {
    return t.resolve(e()).then(function () {
      return n;
    });
  }, function (n) {
    return t.resolve(e()).then(function () {
      return t.reject(n);
    });
  });
}

var dr = setTimeout;

function gr(e) {
  return Boolean(e && void 0 !== e.length);
}

function fr() {}

function Ir(e) {
  if (!(this instanceof Ir)) throw new TypeError("Promises must be constructed via new");
  if ("function" != typeof e) throw new TypeError("not a function");
  this._state = 0, this._handled = !1, this._value = void 0, this._deferreds = [], Br(e, this);
}

function pr(e, t) {
  for (; 3 === e._state;) {
    e = e._value;
  }

  0 !== e._state ? (e._handled = !0, Ir._immediateFn(function () {
    var n = 1 === e._state ? t.onFulfilled : t.onRejected;

    if (null !== n) {
      var i;

      try {
        i = n(e._value);
      } catch (e) {
        return void yr(t.promise, e);
      }

      hr(t.promise, i);
    } else (1 === e._state ? hr : yr)(t.promise, e._value);
  })) : e._deferreds.push(t);
}

function hr(e, t) {
  try {
    if (t === e) throw new TypeError("A promise cannot be resolved with itself.");

    if (t && ("object" == _typeof(t) || "function" == typeof t)) {
      var n = t.then;
      if (t instanceof Ir) return e._state = 3, e._value = t, void br(e);
      if ("function" == typeof n) return void Br((i = n, r = t, function () {
        i.apply(r, arguments);
      }), e);
    }

    e._state = 1, e._value = t, br(e);
  } catch (t) {
    yr(e, t);
  }

  var i, r;
}

function yr(e, t) {
  e._state = 2, e._value = t, br(e);
}

function br(e) {
  2 === e._state && 0 === e._deferreds.length && Ir._immediateFn(function () {
    e._handled || Ir._unhandledRejectionFn(e._value);
  });

  for (var t = 0, n = e._deferreds.length; t < n; t++) {
    pr(e, e._deferreds[t]);
  }

  e._deferreds = null;
}

function mr(e, t, n) {
  this.onFulfilled = "function" == typeof e ? e : null, this.onRejected = "function" == typeof t ? t : null, this.promise = n;
}

function Br(e, t) {
  var n = !1;

  try {
    e(function (e) {
      n || (n = !0, hr(t, e));
    }, function (e) {
      n || (n = !0, yr(t, e));
    });
  } catch (e) {
    if (n) return;
    n = !0, yr(t, e);
  }
}

Ir.prototype["catch"] = function (e) {
  return this.then(null, e);
}, Ir.prototype.then = function (e, t) {
  var n = new this.constructor(fr);
  return pr(this, new mr(e, t, n)), n;
}, Ir.prototype["finally"] = lr, Ir.all = function (e) {
  return new Ir(function (t, n) {
    if (!gr(e)) return n(new TypeError("Promise.all accepts an array"));
    var i = Array.prototype.slice.call(e);
    if (0 === i.length) return t([]);
    var r = i.length;

    function o(e, c) {
      try {
        if (c && ("object" == _typeof(c) || "function" == typeof c)) {
          var s = c.then;
          if ("function" == typeof s) return void s.call(c, function (t) {
            o(e, t);
          }, n);
        }

        i[e] = c, 0 == --r && t(i);
      } catch (e) {
        n(e);
      }
    }

    for (var c = 0; c < i.length; c++) {
      o(c, i[c]);
    }
  });
}, Ir.resolve = function (e) {
  return e && "object" == _typeof(e) && e.constructor === Ir ? e : new Ir(function (t) {
    t(e);
  });
}, Ir.reject = function (e) {
  return new Ir(function (t, n) {
    n(e);
  });
}, Ir.race = function (e) {
  return new Ir(function (t, n) {
    if (!gr(e)) return n(new TypeError("Promise.race accepts an array"));

    for (var i = 0, r = e.length; i < r; i++) {
      Ir.resolve(e[i]).then(t, n);
    }
  });
}, Ir._immediateFn = "function" == typeof setImmediate && function (e) {
  setImmediate(e);
} || function (e) {
  dr(e, 0);
}, Ir._unhandledRejectionFn = function (e) {
  "undefined" != typeof console && console && console.warn("Possible Unhandled Promise Rejection:", e);
};

var vr = function () {
  if ("undefined" != typeof self) return self;
  if ("undefined" != typeof window) return window;
  if ("undefined" != typeof global) return global;
  throw new Error("unable to locate global object");
}();

"Promise" in vr ? vr.Promise.prototype["finally"] || (vr.Promise.prototype["finally"] = lr) : vr.Promise = Ir, function (e) {
  function t() {}

  function n(e, t) {
    if (e = void 0 === e ? "utf-8" : e, t = void 0 === t ? {
      fatal: !1
    } : t, -1 === r.indexOf(e.toLowerCase())) throw new RangeError("Failed to construct 'TextDecoder': The encoding label provided ('" + e + "') is invalid.");
    if (t.fatal) throw Error("Failed to construct 'TextDecoder': the 'fatal' option is unsupported.");
  }

  function i(e) {
    for (var t = 0, n = Math.min(65536, e.length + 1), i = new Uint16Array(n), r = [], o = 0;;) {
      var c = t < e.length;

      if (!c || o >= n - 1) {
        if (r.push(String.fromCharCode.apply(null, i.subarray(0, o))), !c) return r.join("");
        e = e.subarray(t), o = t = 0;
      }

      if (0 == (128 & (c = e[t++]))) i[o++] = c;else if (192 == (224 & c)) {
        var s = 63 & e[t++];
        i[o++] = (31 & c) << 6 | s;
      } else if (224 == (240 & c)) {
        s = 63 & e[t++];
        var a = 63 & e[t++];
        i[o++] = (31 & c) << 12 | s << 6 | a;
      } else if (240 == (248 & c)) {
        65535 < (c = (7 & c) << 18 | (s = 63 & e[t++]) << 12 | (a = 63 & e[t++]) << 6 | 63 & e[t++]) && (c -= 65536, i[o++] = c >>> 10 & 1023 | 55296, c = 56320 | 1023 & c), i[o++] = c;
      }
    }
  }

  if (e.TextEncoder && e.TextDecoder) return !1;
  var r = ["utf-8", "utf8", "unicode-1-1-utf-8"];
  Object.defineProperty(t.prototype, "encoding", {
    value: "utf-8"
  }), t.prototype.encode = function (e, t) {
    if ((t = void 0 === t ? {
      stream: !1
    } : t).stream) throw Error("Failed to encode: the 'stream' option is unsupported.");
    t = 0;

    for (var n = e.length, i = 0, r = Math.max(32, n + (n >>> 1) + 7), o = new Uint8Array(r >>> 3 << 3); t < n;) {
      var c = e.charCodeAt(t++);

      if (55296 <= c && 56319 >= c) {
        if (t < n) {
          var s = e.charCodeAt(t);
          56320 == (64512 & s) && (++t, c = ((1023 & c) << 10) + (1023 & s) + 65536);
        }

        if (55296 <= c && 56319 >= c) continue;
      }

      if (i + 4 > o.length && (r += 8, r = (r *= 1 + t / e.length * 2) >>> 3 << 3, (s = new Uint8Array(r)).set(o), o = s), 0 == (4294967168 & c)) o[i++] = c;else {
        if (0 == (4294965248 & c)) o[i++] = c >>> 6 & 31 | 192;else if (0 == (4294901760 & c)) o[i++] = c >>> 12 & 15 | 224, o[i++] = c >>> 6 & 63 | 128;else {
          if (0 != (4292870144 & c)) continue;
          o[i++] = c >>> 18 & 7 | 240, o[i++] = c >>> 12 & 63 | 128, o[i++] = c >>> 6 & 63 | 128;
        }
        o[i++] = 63 & c | 128;
      }
    }

    return o.slice ? o.slice(0, i) : o.subarray(0, i);
  }, Object.defineProperty(n.prototype, "encoding", {
    value: "utf-8"
  }), Object.defineProperty(n.prototype, "fatal", {
    value: !1
  }), Object.defineProperty(n.prototype, "ignoreBOM", {
    value: !1
  });
  var o = i;
  "function" == typeof Buffer && Buffer.from ? o = function o(e) {
    return Buffer.from(e.buffer, e.byteOffset, e.byteLength).toString("utf-8");
  } : "function" == typeof Blob && "function" == typeof URL && "function" == typeof URL.createObjectURL && (o = function o(e) {
    var t = URL.createObjectURL(new Blob([e], {
      type: "text/plain;charset=UTF-8"
    }));

    try {
      var n = new XMLHttpRequest();
      return n.open("GET", t, !1), n.send(), n.responseText;
    } catch (t) {
      return i(e);
    } finally {
      URL.revokeObjectURL(t);
    }
  }), n.prototype.decode = function (e, t) {
    if ((t = void 0 === t ? {
      stream: !1
    } : t).stream) throw Error("Failed to decode: the 'stream' option is unsupported.");
    return e = e instanceof Uint8Array ? e : e.buffer instanceof ArrayBuffer ? new Uint8Array(e.buffer) : new Uint8Array(e), o(e);
  }, e.TextEncoder = t, e.TextDecoder = n;
}("undefined" != typeof window ? window : c), function () {
  function e(e, t) {
    if (!(e instanceof t)) throw new TypeError("Cannot call a class as a function");
  }

  function t(e, t) {
    for (var n = 0; n < t.length; n++) {
      var i = t[n];
      i.enumerable = i.enumerable || !1, i.configurable = !0, "value" in i && (i.writable = !0), Object.defineProperty(e, i.key, i);
    }
  }

  function n(e, n, i) {
    return n && t(e.prototype, n), i && t(e, i), e;
  }

  function i(e, t) {
    if ("function" != typeof t && null !== t) throw new TypeError("Super expression must either be null or a function");
    e.prototype = Object.create(t && t.prototype, {
      constructor: {
        value: e,
        writable: !0,
        configurable: !0
      }
    }), t && o(e, t);
  }

  function r(e) {
    return (r = Object.setPrototypeOf ? Object.getPrototypeOf : function (e) {
      return e.__proto__ || Object.getPrototypeOf(e);
    })(e);
  }

  function o(e, t) {
    return (o = Object.setPrototypeOf || function (e, t) {
      return e.__proto__ = t, e;
    })(e, t);
  }

  function s() {
    if ("undefined" == typeof Reflect || !Reflect.construct) return !1;
    if (Reflect.construct.sham) return !1;
    if ("function" == typeof Proxy) return !0;

    try {
      return Date.prototype.toString.call(Reflect.construct(Date, [], function () {})), !0;
    } catch (e) {
      return !1;
    }
  }

  function a(e) {
    if (void 0 === e) throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
    return e;
  }

  function u(e, t) {
    return !t || "object" != _typeof(t) && "function" != typeof t ? a(e) : t;
  }

  function l(e) {
    var t = s();
    return function () {
      var n,
          i = r(e);

      if (t) {
        var o = r(this).constructor;
        n = Reflect.construct(i, arguments, o);
      } else n = i.apply(this, arguments);

      return u(this, n);
    };
  }

  function d(e, t) {
    for (; !Object.prototype.hasOwnProperty.call(e, t) && null !== (e = r(e));) {
      ;
    }

    return e;
  }

  function g(e, t, n) {
    return (g = "undefined" != typeof Reflect && Reflect.get ? Reflect.get : function (e, t, n) {
      var i = d(e, t);

      if (i) {
        var r = Object.getOwnPropertyDescriptor(i, t);
        return r.get ? r.get.call(n) : r.value;
      }
    })(e, t, n || e);
  }

  var f = function () {
    function t() {
      e(this, t), Object.defineProperty(this, "listeners", {
        value: {},
        writable: !0,
        configurable: !0
      });
    }

    return n(t, [{
      key: "addEventListener",
      value: function value(e, t) {
        e in this.listeners || (this.listeners[e] = []), this.listeners[e].push(t);
      }
    }, {
      key: "removeEventListener",
      value: function value(e, t) {
        if (e in this.listeners) for (var n = this.listeners[e], i = 0, r = n.length; i < r; i++) {
          if (n[i] === t) return void n.splice(i, 1);
        }
      }
    }, {
      key: "dispatchEvent",
      value: function value(e) {
        var t = this;

        if (e.type in this.listeners) {
          for (var n = function n(_n3) {
            setTimeout(function () {
              return _n3.call(t, e);
            });
          }, i = this.listeners[e.type], r = 0, o = i.length; r < o; r++) {
            n(i[r]);
          }

          return !e.defaultPrevented;
        }
      }
    }]), t;
  }(),
      I = function (t) {
    i(c, t);
    var o = l(c);

    function c() {
      var t;
      return e(this, c), (t = o.call(this)).listeners || f.call(a(t)), Object.defineProperty(a(t), "aborted", {
        value: !1,
        writable: !0,
        configurable: !0
      }), Object.defineProperty(a(t), "onabort", {
        value: null,
        writable: !0,
        configurable: !0
      }), t;
    }

    return n(c, [{
      key: "toString",
      value: function value() {
        return "[object AbortSignal]";
      }
    }, {
      key: "dispatchEvent",
      value: function value(e) {
        "abort" === e.type && (this.aborted = !0, "function" == typeof this.onabort && this.onabort.call(this, e)), g(r(c.prototype), "dispatchEvent", this).call(this, e);
      }
    }]), c;
  }(f),
      p = function () {
    function t() {
      e(this, t), Object.defineProperty(this, "signal", {
        value: new I(),
        writable: !0,
        configurable: !0
      });
    }

    return n(t, [{
      key: "abort",
      value: function value() {
        var e;

        try {
          e = new Event("abort");
        } catch (t) {
          "undefined" != typeof document ? document.createEvent ? (e = document.createEvent("Event")).initEvent("abort", !1, !1) : (e = document.createEventObject()).type = "abort" : e = {
            type: "abort",
            bubbles: !1,
            cancelable: !1
          };
        }

        this.signal.dispatchEvent(e);
      }
    }, {
      key: "toString",
      value: function value() {
        return "[object AbortController]";
      }
    }]), t;
  }();

  function h(e) {
    return e.__FORCE_INSTALL_ABORTCONTROLLER_POLYFILL ? (console.log("__FORCE_INSTALL_ABORTCONTROLLER_POLYFILL=true is set, will force install polyfill"), !0) : "function" == typeof e.Request && !e.Request.prototype.hasOwnProperty("signal") || !e.AbortController;
  }

  "undefined" != typeof Symbol && Symbol.toStringTag && (p.prototype[Symbol.toStringTag] = "AbortController", I.prototype[Symbol.toStringTag] = "AbortSignal"), function (e) {
    h(e) && (e.AbortController = p, e.AbortSignal = I);
  }("undefined" != typeof self ? self : c);
}();
var Cr = a(function (e, t) {
  Object.defineProperty(t, "__esModule", {
    value: !0
  });

  var n = function () {
    function e() {
      var e = this;
      this.locked = new Map(), this.addToLocked = function (t, n) {
        var i = e.locked.get(t);
        void 0 === i ? void 0 === n ? e.locked.set(t, []) : e.locked.set(t, [n]) : void 0 !== n && (i.unshift(n), e.locked.set(t, i));
      }, this.isLocked = function (t) {
        return e.locked.has(t);
      }, this.lock = function (t) {
        return new Promise(function (n, i) {
          e.isLocked(t) ? e.addToLocked(t, n) : (e.addToLocked(t), n());
        });
      }, this.unlock = function (t) {
        var n = e.locked.get(t);

        if (void 0 !== n && 0 !== n.length) {
          var i = n.pop();
          e.locked.set(t, n), void 0 !== i && setTimeout(i, 0);
        } else e.locked["delete"](t);
      };
    }

    return e.getInstance = function () {
      return void 0 === e.instance && (e.instance = new e()), e.instance;
    }, e;
  }();

  t["default"] = function () {
    return n.getInstance();
  };
});
s(Cr);
var Fr = s(a(function (e, t) {
  var n = c && c.__awaiter || function (e, t, n, i) {
    return new (n || (n = Promise))(function (r, o) {
      function c(e) {
        try {
          a(i.next(e));
        } catch (e) {
          o(e);
        }
      }

      function s(e) {
        try {
          a(i["throw"](e));
        } catch (e) {
          o(e);
        }
      }

      function a(e) {
        e.done ? r(e.value) : new n(function (t) {
          t(e.value);
        }).then(c, s);
      }

      a((i = i.apply(e, t || [])).next());
    });
  },
      i = c && c.__generator || function (e, t) {
    var n,
        i,
        r,
        o,
        c = {
      label: 0,
      sent: function sent() {
        if (1 & r[0]) throw r[1];
        return r[1];
      },
      trys: [],
      ops: []
    };
    return o = {
      next: s(0),
      "throw": s(1),
      "return": s(2)
    }, "function" == typeof Symbol && (o[Symbol.iterator] = function () {
      return this;
    }), o;

    function s(o) {
      return function (s) {
        return function (o) {
          if (n) throw new TypeError("Generator is already executing.");

          for (; c;) {
            try {
              if (n = 1, i && (r = 2 & o[0] ? i["return"] : o[0] ? i["throw"] || ((r = i["return"]) && r.call(i), 0) : i.next) && !(r = r.call(i, o[1])).done) return r;

              switch (i = 0, r && (o = [2 & o[0], r.value]), o[0]) {
                case 0:
                case 1:
                  r = o;
                  break;

                case 4:
                  return c.label++, {
                    value: o[1],
                    done: !1
                  };

                case 5:
                  c.label++, i = o[1], o = [0];
                  continue;

                case 7:
                  o = c.ops.pop(), c.trys.pop();
                  continue;

                default:
                  if (!(r = c.trys, (r = r.length > 0 && r[r.length - 1]) || 6 !== o[0] && 2 !== o[0])) {
                    c = 0;
                    continue;
                  }

                  if (3 === o[0] && (!r || o[1] > r[0] && o[1] < r[3])) {
                    c.label = o[1];
                    break;
                  }

                  if (6 === o[0] && c.label < r[1]) {
                    c.label = r[1], r = o;
                    break;
                  }

                  if (r && c.label < r[2]) {
                    c.label = r[2], c.ops.push(o);
                    break;
                  }

                  r[2] && c.ops.pop(), c.trys.pop();
                  continue;
              }

              o = t.call(e, c);
            } catch (e) {
              o = [6, e], i = 0;
            } finally {
              n = r = 0;
            }
          }

          if (5 & o[0]) throw o[1];
          return {
            value: o[0] ? o[1] : void 0,
            done: !0
          };
        }([o, s]);
      };
    }
  };

  Object.defineProperty(t, "__esModule", {
    value: !0
  });
  var r = "browser-tabs-lock-key";

  function o(e) {
    return new Promise(function (t) {
      return setTimeout(t, e);
    });
  }

  function s(e) {
    for (var t = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz", n = "", i = 0; i < e; i++) {
      n += t[Math.floor(Math.random() * t.length)];
    }

    return n;
  }

  var a = function () {
    function e() {
      this.acquiredIatSet = new Set(), this.id = Date.now().toString() + s(15), this.acquireLock = this.acquireLock.bind(this), this.releaseLock = this.releaseLock.bind(this), this.releaseLock__private__ = this.releaseLock__private__.bind(this), this.waitForSomethingToChange = this.waitForSomethingToChange.bind(this), this.refreshLockWhileAcquired = this.refreshLockWhileAcquired.bind(this), void 0 === e.waiters && (e.waiters = []);
    }

    return e.prototype.acquireLock = function (t, c) {
      return void 0 === c && (c = 5e3), n(this, void 0, void 0, function () {
        var n, a, u, l, d, g;
        return i(this, function (i) {
          switch (i.label) {
            case 0:
              n = Date.now() + s(4), a = Date.now() + c, u = r + "-" + t, l = window.localStorage, i.label = 1;

            case 1:
              return Date.now() < a ? [4, o(30)] : [3, 8];

            case 2:
              return i.sent(), null !== l.getItem(u) ? [3, 5] : (d = this.id + "-" + t + "-" + n, [4, o(Math.floor(25 * Math.random()))]);

            case 3:
              return i.sent(), l.setItem(u, JSON.stringify({
                id: this.id,
                iat: n,
                timeoutKey: d,
                timeAcquired: Date.now(),
                timeRefreshed: Date.now()
              })), [4, o(30)];

            case 4:
              return i.sent(), null !== (g = l.getItem(u)) && (g = JSON.parse(g)).id === this.id && g.iat === n ? (this.acquiredIatSet.add(n), this.refreshLockWhileAcquired(u, n), [2, !0]) : [3, 7];

            case 5:
              return e.lockCorrector(), [4, this.waitForSomethingToChange(a)];

            case 6:
              i.sent(), i.label = 7;

            case 7:
              return n = Date.now() + s(4), [3, 1];

            case 8:
              return [2, !1];
          }
        });
      });
    }, e.prototype.refreshLockWhileAcquired = function (e, t) {
      return n(this, void 0, void 0, function () {
        var r = this;
        return i(this, function (o) {
          return setTimeout(function () {
            return n(r, void 0, void 0, function () {
              var n, r;
              return i(this, function (i) {
                switch (i.label) {
                  case 0:
                    return [4, Cr["default"]().lock(t)];

                  case 1:
                    return i.sent(), this.acquiredIatSet.has(t) ? (n = window.localStorage, null === (r = n.getItem(e)) ? (Cr["default"]().unlock(t), [2]) : ((r = JSON.parse(r)).timeRefreshed = Date.now(), n.setItem(e, JSON.stringify(r)), Cr["default"]().unlock(t), this.refreshLockWhileAcquired(e, t), [2])) : (Cr["default"]().unlock(t), [2]);
                }
              });
            });
          }, 1e3), [2];
        });
      });
    }, e.prototype.waitForSomethingToChange = function (t) {
      return n(this, void 0, void 0, function () {
        return i(this, function (n) {
          switch (n.label) {
            case 0:
              return [4, new Promise(function (n) {
                var i = !1,
                    r = Date.now(),
                    o = !1;

                function c() {
                  if (o || (window.removeEventListener("storage", c), e.removeFromWaiting(c), clearTimeout(s), o = !0), !i) {
                    i = !0;
                    var t = 50 - (Date.now() - r);
                    t > 0 ? setTimeout(n, t) : n();
                  }
                }

                window.addEventListener("storage", c), e.addToWaiting(c);
                var s = setTimeout(c, Math.max(0, t - Date.now()));
              })];

            case 1:
              return n.sent(), [2];
          }
        });
      });
    }, e.addToWaiting = function (t) {
      this.removeFromWaiting(t), void 0 !== e.waiters && e.waiters.push(t);
    }, e.removeFromWaiting = function (t) {
      void 0 !== e.waiters && (e.waiters = e.waiters.filter(function (e) {
        return e !== t;
      }));
    }, e.notifyWaiters = function () {
      void 0 !== e.waiters && e.waiters.slice().forEach(function (e) {
        return e();
      });
    }, e.prototype.releaseLock = function (e) {
      return n(this, void 0, void 0, function () {
        return i(this, function (t) {
          switch (t.label) {
            case 0:
              return [4, this.releaseLock__private__(e)];

            case 1:
              return [2, t.sent()];
          }
        });
      });
    }, e.prototype.releaseLock__private__ = function (t) {
      return n(this, void 0, void 0, function () {
        var n, o, c;
        return i(this, function (i) {
          switch (i.label) {
            case 0:
              return n = window.localStorage, o = r + "-" + t, null === (c = n.getItem(o)) ? [2] : (c = JSON.parse(c)).id !== this.id ? [3, 2] : [4, Cr["default"]().lock(c.iat)];

            case 1:
              i.sent(), this.acquiredIatSet["delete"](c.iat), n.removeItem(o), Cr["default"]().unlock(c.iat), e.notifyWaiters(), i.label = 2;

            case 2:
              return [2];
          }
        });
      });
    }, e.lockCorrector = function () {
      for (var t = Date.now() - 5e3, n = window.localStorage, i = Object.keys(n), o = !1, c = 0; c < i.length; c++) {
        var s = i[c];

        if (s.includes(r)) {
          var a = n.getItem(s);
          null !== a && (void 0 === (a = JSON.parse(a)).timeRefreshed && a.timeAcquired < t || void 0 !== a.timeRefreshed && a.timeRefreshed < t) && (n.removeItem(s), o = !0);
        }
      }

      o && e.notifyWaiters();
    }, e.waiters = void 0, e;
  }();

  t["default"] = a;
}));

var Ur = {
  timeoutInSeconds: 60
},
    Sr = ["login_required", "consent_required", "interaction_required", "account_selection_required", "access_denied"],
    Vr = function (e) {
  function n(t, i) {
    var r = e.call(this, i) || this;
    return r.error = t, r.error_description = i, Object.setPrototypeOf(r, n.prototype), r;
  }

  return t(n, e), n.fromPayload = function (e) {
    return new n(e.error, e.error_description);
  }, n;
}(Error),
    Zr = function (e) {
  function n(t, i, r, o) {
    void 0 === o && (o = null);
    var c = e.call(this, t, i) || this;
    return c.state = r, c.appState = o, Object.setPrototypeOf(c, n.prototype), c;
  }

  return t(n, e), n;
}(Vr),
    wr = function (e) {
  function n() {
    var t = e.call(this, "timeout", "Timeout") || this;
    return Object.setPrototypeOf(t, n.prototype), t;
  }

  return t(n, e), n;
}(Vr),
    Xr = function (e) {
  function n(t) {
    var i = e.call(this) || this;
    return i.popup = t, Object.setPrototypeOf(i, n.prototype), i;
  }

  return t(n, e), n;
}(wr),
    Gr = function Gr(e, t, n) {
  return void 0 === n && (n = 60), new Promise(function (i, r) {
    var o = window.document.createElement("iframe");
    o.setAttribute("width", "0"), o.setAttribute("height", "0"), o.style.display = "none";

    var _c,
        s = function s() {
      window.document.body.contains(o) && (window.document.body.removeChild(o), window.removeEventListener("message", _c, !1));
    },
        a = setTimeout(function () {
      r(new wr()), s();
    }, 1e3 * n);

    _c = function c(e) {
      if (e.origin == t && e.data && "authorization_response" === e.data.type) {
        var n = e.source;
        n && n.close(), e.data.response.error ? r(Vr.fromPayload(e.data.response)) : i(e.data.response), clearTimeout(a), window.removeEventListener("message", _c, !1), setTimeout(s, 2e3);
      }
    }, window.addEventListener("message", _c, !1), window.document.body.appendChild(o), o.setAttribute("src", e);
  });
},
    xr = function xr(e, t) {
  var n,
      i,
      r,
      o = t.popup;
  if (o ? o.location.href = e : (n = e, i = window.screenX + (window.innerWidth - 400) / 2, r = window.screenY + (window.innerHeight - 600) / 2, o = window.open(n, "auth0:authorize:popup", "left=" + i + ",top=" + r + ",width=400,height=600,resizable,scrollbars=yes,status=1")), !o) throw new Error("Could not open popup");
  return new Promise(function (e, n) {
    var _i2,
        r = setTimeout(function () {
      n(new Xr(o)), window.removeEventListener("message", _i2, !1);
    }, 1e3 * (t.timeoutInSeconds || 60));

    _i2 = function i(t) {
      if (t.data && "authorization_response" === t.data.type) {
        if (clearTimeout(r), window.removeEventListener("message", _i2, !1), o.close(), t.data.response.error) return n(Vr.fromPayload(t.data.response));
        e(t.data.response);
      }
    }, window.addEventListener("message", function (e) {
      return _i2(e);
    });
  });
},
    Ar = function Ar() {
  return window.crypto || window.msCrypto;
},
    Rr = function Rr() {
  var e = Ar();
  return e.subtle || e.webkitSubtle;
},
    Wr = function Wr() {
  var e = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-_~.",
      t = "";
  return Array.from(Ar().getRandomValues(new Uint8Array(43))).forEach(function (n) {
    return t += e[n % e.length];
  }), t;
},
    Qr = function Qr(e) {
  return btoa(e);
},
    Lr = function Lr(e) {
  return Object.keys(e).filter(function (t) {
    return void 0 !== e[t];
  }).map(function (t) {
    return encodeURIComponent(t) + "=" + encodeURIComponent(e[t]);
  }).join("&");
},
    Jr = function Jr(e) {
  return r(void 0, void 0, void 0, function () {
    var t;
    return o(this, function (n) {
      switch (n.label) {
        case 0:
          return t = Rr().digest({
            name: "SHA-256"
          }, new TextEncoder().encode(e)), window.msCrypto ? [2, new Promise(function (e, n) {
            t.oncomplete = function (t) {
              e(t.target.result);
            }, t.onerror = function (e) {
              n(e.error);
            }, t.onabort = function () {
              n("The digest operation was aborted");
            };
          })] : [4, t];

        case 1:
          return [2, n.sent()];
      }
    });
  });
},
    Hr = function Hr(e) {
  return function (e) {
    return decodeURIComponent(atob(e).split("").map(function (e) {
      return "%" + ("00" + e.charCodeAt(0).toString(16)).slice(-2);
    }).join(""));
  }(e.replace(/_/g, "/").replace(/-/g, "+"));
},
    kr = function kr(e) {
  var t = new Uint8Array(e);
  return function (e) {
    var t = {
      "+": "-",
      "/": "_",
      "=": ""
    };
    return e.replace(/[+/=]/g, function (e) {
      return t[e];
    });
  }(window.btoa(String.fromCharCode.apply(String, Array.from(t))));
},
    Er = function Er(e, t, i, c, s, a) {
  return r(void 0, void 0, void 0, function () {
    var r, u;
    return o(this, function (o) {
      switch (o.label) {
        case 0:
          return a ? (delete c.signal, [2, (g = _n2({
            url: e,
            audience: t,
            scope: i,
            timeout: s
          }, c), f = a, new Promise(function (e, t) {
            var n = new MessageChannel();
            n.port1.onmessage = function (n) {
              n.data.error ? t(new Error(n.data.error)) : e(n.data);
            }, f.postMessage(g, [n.port2]);
          }))]) : [3, 1];

        case 1:
          return [4, (l = e, d = c, d = d || {}, new Promise(function (e, t) {
            var n = new XMLHttpRequest(),
                i = [],
                r = [],
                o = {},
                c = function c() {
              return {
                ok: 2 == (n.status / 100 | 0),
                statusText: n.statusText,
                status: n.status,
                url: n.responseURL,
                text: function text() {
                  return Promise.resolve(n.responseText);
                },
                json: function json() {
                  return Promise.resolve(n.responseText).then(JSON.parse);
                },
                blob: function blob() {
                  return Promise.resolve(new Blob([n.response]));
                },
                clone: c,
                headers: {
                  keys: function keys() {
                    return i;
                  },
                  entries: function entries() {
                    return r;
                  },
                  get: function get(e) {
                    return o[e.toLowerCase()];
                  },
                  has: function has(e) {
                    return e.toLowerCase() in o;
                  }
                }
              };
            };

            for (var s in n.open(d.method || "get", l, !0), n.onload = function () {
              n.getAllResponseHeaders().replace(/^(.*?):[^\S\n]*([\s\S]*?)$/gm, function (e, t, n) {
                i.push(t = t.toLowerCase()), r.push([t, n]), o[t] = o[t] ? o[t] + "," + n : n;
              }), e(c());
            }, n.onerror = t, n.withCredentials = "include" == d.credentials, d.headers) {
              n.setRequestHeader(s, d.headers[s]);
            }

            n.send(d.body || null);
          }))];

        case 2:
          return r = o.sent(), u = {
            ok: r.ok
          }, [4, r.json()];

        case 3:
          return [2, (u.json = o.sent(), u)];
      }

      var l, d, g, f;
    });
  });
},
    Tr = function Tr(e, t, i, r, o, c) {
  void 0 === c && (c = 1e4);

  var s,
      a = new AbortController(),
      u = a.signal,
      l = _n2(_n2({}, r), {
    signal: u
  });

  return Promise.race([Er(e, t, i, l, c, o), new Promise(function (e, t) {
    s = setTimeout(function () {
      a.abort(), t(new Error("Timeout when executing 'fetch'"));
    }, c);
  })])["finally"](function () {
    clearTimeout(s);
  });
},
    Yr = function Yr(e, t, n, c, s, a) {
  return r(void 0, void 0, void 0, function () {
    var r, u, l, d, g, f, I, p, h, y;
    return o(this, function (o) {
      switch (o.label) {
        case 0:
          r = null, l = 0, o.label = 1;

        case 1:
          if (!(l < 3)) return [3, 6];
          o.label = 2;

        case 2:
          return o.trys.push([2, 4,, 5]), [4, Tr(e, n, c, s, a, t)];

        case 3:
          return u = o.sent(), r = null, [3, 6];

        case 4:
          return d = o.sent(), r = d, [3, 5];

        case 5:
          return l++, [3, 1];

        case 6:
          if (r) throw r.message = r.message || "Failed to fetch", r;
          if (g = u.json, f = g.error, I = g.error_description, p = i(g, ["error", "error_description"]), !u.ok) throw h = I || "HTTP error. Unable to fetch " + e, (y = new Error(h)).error = f || "request_error", y.error_description = h, y;
          return [2, p];
      }
    });
  });
},
    Nr = function Nr(e, t) {
  return r(void 0, void 0, void 0, function () {
    var r = e.baseUrl,
        c = e.timeout,
        s = e.audience,
        a = e.scope,
        u = i(e, ["baseUrl", "timeout", "audience", "scope"]);
    return o(this, function (e) {
      switch (e.label) {
        case 0:
          return [4, Yr(r + "/oauth/token", c, s || "default", a, {
            method: "POST",
            body: JSON.stringify(_n2({
              redirect_uri: window.location.origin
            }, u)),
            headers: {
              "Content-type": "application/json"
            }
          }, t)];

        case 1:
          return [2, e.sent()];
      }
    });
  });
},
    Kr = function Kr(e) {
  return Array.from(new Set(e));
},
    Or = function Or() {
  for (var e = [], t = 0; t < arguments.length; t++) {
    e[t] = arguments[t];
  }

  return Kr(e.join(" ").trim().split(/\s+/)).join(" ");
},
    jr = function jr(e) {
  return "@@auth0spajs@@::" + e.client_id + "::" + e.audience + "::" + e.scope;
},
    zr = function zr(e) {
  var t = Math.floor(Date.now() / 1e3) + e.expires_in;
  return {
    body: e,
    expiresAt: Math.min(t, e.decodedToken.claims.exp)
  };
},
    Pr = function () {
  function e() {}

  return e.prototype.save = function (e) {
    var t = jr(e),
        n = zr(e);
    window.localStorage.setItem(t, JSON.stringify(n));
  }, e.prototype.get = function (e, t) {
    void 0 === t && (t = 0);
    var n = jr(e),
        i = this.readJson(n),
        r = Math.floor(Date.now() / 1e3);

    if (i) {
      if (!(i.expiresAt - t < r)) return i.body;

      if (i.body.refresh_token) {
        var o = this.stripData(i);
        return this.writeJson(n, o), o.body;
      }

      localStorage.removeItem(n);
    }
  }, e.prototype.clear = function () {
    for (var e = localStorage.length - 1; e >= 0; e--) {
      localStorage.key(e).startsWith("@@auth0spajs@@") && localStorage.removeItem(localStorage.key(e));
    }
  }, e.prototype.readJson = function (e) {
    var t,
        n = window.localStorage.getItem(e);
    if (n && (t = JSON.parse(n))) return t;
  }, e.prototype.writeJson = function (e, t) {
    localStorage.setItem(e, JSON.stringify(t));
  }, e.prototype.stripData = function (e) {
    return {
      body: {
        refresh_token: e.body.refresh_token
      },
      expiresAt: e.expiresAt
    };
  }, e;
}(),
    _r = function _r() {
  this.enclosedCache = function () {
    var e = {
      body: {},
      expiresAt: 0
    };
    return {
      save: function save(t) {
        var n = jr(t),
            i = zr(t);
        e[n] = i;
      },
      get: function get(t, n) {
        void 0 === n && (n = 0);
        var i = jr(t),
            r = e[i],
            o = Math.floor(Date.now() / 1e3);
        if (r) return r.expiresAt - n < o ? r.body.refresh_token ? (r.body = {
          refresh_token: r.body.refresh_token
        }, r.body) : void delete e[i] : r.body;
      },
      clear: function clear() {
        e = {
          body: {},
          expiresAt: 0
        };
      }
    };
  }();
},
    Dr = function () {
  function e(e) {
    this.storage = e, this.transaction = this.storage.get("a0.spajs.txs");
  }

  return e.prototype.create = function (e) {
    this.transaction = e, this.storage.save("a0.spajs.txs", e, {
      daysUntilExpire: 1
    });
  }, e.prototype.get = function () {
    return this.transaction;
  }, e.prototype.remove = function () {
    delete this.transaction, this.storage.remove("a0.spajs.txs");
  }, e;
}(),
    Mr = function Mr(e) {
  return "number" == typeof e;
},
    qr = ["iss", "aud", "exp", "nbf", "iat", "jti", "azp", "nonce", "auth_time", "at_hash", "c_hash", "acr", "amr", "sub_jwk", "cnf", "sip_from_tag", "sip_date", "sip_callid", "sip_cseq_num", "sip_via_branch", "orig", "dest", "mky", "events", "toe", "txn", "rph", "sid", "vot", "vtm"],
    $r = function $r(e) {
  if (!e.id_token) throw new Error("ID token is required but missing");

  var t = function (e) {
    var t = e.split("."),
        n = t[0],
        i = t[1],
        r = t[2];
    if (3 !== t.length || !n || !i || !r) throw new Error("ID token could not be decoded");
    var o = JSON.parse(Hr(i)),
        c = {
      __raw: e
    },
        s = {};
    return Object.keys(o).forEach(function (e) {
      c[e] = o[e], qr.includes(e) || (s[e] = o[e]);
    }), {
      encoded: {
        header: n,
        payload: i,
        signature: r
      },
      header: JSON.parse(Hr(n)),
      claims: c,
      user: s
    };
  }(e.id_token);

  if (!t.claims.iss) throw new Error("Issuer (iss) claim must be a string present in the ID token");
  if (t.claims.iss !== e.iss) throw new Error('Issuer (iss) claim mismatch in the ID token; expected "' + e.iss + '", found "' + t.claims.iss + '"');
  if (!t.user.sub) throw new Error("Subject (sub) claim must be a string present in the ID token");
  if ("RS256" !== t.header.alg) throw new Error('Signature algorithm of "' + t.header.alg + '" is not supported. Expected the ID token to be signed with "RS256".');
  if (!t.claims.aud || "string" != typeof t.claims.aud && !Array.isArray(t.claims.aud)) throw new Error("Audience (aud) claim must be a string or array of strings present in the ID token");

  if (Array.isArray(t.claims.aud)) {
    if (!t.claims.aud.includes(e.aud)) throw new Error('Audience (aud) claim mismatch in the ID token; expected "' + e.aud + '" but was not one of "' + t.claims.aud.join(", ") + '"');

    if (t.claims.aud.length > 1) {
      if (!t.claims.azp) throw new Error("Authorized Party (azp) claim must be a string present in the ID token when Audience (aud) claim has multiple values");
      if (t.claims.azp !== e.aud) throw new Error('Authorized Party (azp) claim mismatch in the ID token; expected "' + e.aud + '", found "' + t.claims.azp + '"');
    }
  } else if (t.claims.aud !== e.aud) throw new Error('Audience (aud) claim mismatch in the ID token; expected "' + e.aud + '" but found "' + t.claims.aud + '"');

  if (e.nonce) {
    if (!t.claims.nonce) throw new Error("Nonce (nonce) claim must be a string present in the ID token");
    if (t.claims.nonce !== e.nonce) throw new Error('Nonce (nonce) claim mismatch in the ID token; expected "' + e.nonce + '", found "' + t.claims.nonce + '"');
  }

  if (e.max_age && !Mr(t.claims.auth_time)) throw new Error("Authentication Time (auth_time) claim must be a number present in the ID token when Max Age (max_age) is specified");
  if (!Mr(t.claims.exp)) throw new Error("Expiration Time (exp) claim must be a number present in the ID token");
  if (!Mr(t.claims.iat)) throw new Error("Issued At (iat) claim must be a number present in the ID token");
  var n = e.leeway || 60,
      i = new Date(Date.now()),
      r = new Date(0),
      o = new Date(0),
      c = new Date(0);
  if (c.setUTCSeconds(parseInt(t.claims.auth_time) + e.max_age + n), r.setUTCSeconds(t.claims.exp + n), o.setUTCSeconds(t.claims.nbf - n), i > r) throw new Error("Expiration Time (exp) claim error in the ID token; current time (" + i + ") is after expiration time (" + r + ")");
  if (Mr(t.claims.nbf) && i < o) throw new Error("Not Before time (nbf) claim in the ID token indicates that this token can't be used just yet. Currrent time (" + i + ") is before " + o);
  if (Mr(t.claims.auth_time) && i > c) throw new Error("Authentication Time (auth_time) claim in the ID token indicates that too much time has passed since the last end-user authentication. Currrent time (" + i + ") is after last auth at " + c);
  return t;
},
    eo = a(function (e, t) {
  var n = c && c.__assign || function () {
    return (n = Object.assign || function (e) {
      for (var t, n = 1, i = arguments.length; n < i; n++) {
        for (var r in t = arguments[n]) {
          Object.prototype.hasOwnProperty.call(t, r) && (e[r] = t[r]);
        }
      }

      return e;
    }).apply(this, arguments);
  };

  function i(e, t) {
    if (!t) return "";
    var n = "; " + e;
    return !0 === t ? n : n + "=" + t;
  }

  function r(e, t, n) {
    return encodeURIComponent(e).replace(/%(23|24|26|2B|5E|60|7C)/g, decodeURIComponent).replace(/\(/g, "%28").replace(/\)/g, "%29") + "=" + encodeURIComponent(t).replace(/%(23|24|26|2B|3A|3C|3E|3D|2F|3F|40|5B|5D|5E|60|7B|7D|7C)/g, decodeURIComponent) + function (e) {
      if ("number" == typeof e.expires) {
        var t = new Date();
        t.setMilliseconds(t.getMilliseconds() + 864e5 * e.expires), e.expires = t;
      }

      return i("Expires", e.expires ? e.expires.toUTCString() : "") + i("Domain", e.domain) + i("Path", e.path) + i("Secure", e.secure) + i("SameSite", e.sameSite);
    }(n);
  }

  function o(e) {
    for (var t = {}, n = e ? e.split("; ") : [], i = /(%[\dA-F]{2})+/gi, r = 0; r < n.length; r++) {
      var o = n[r].split("="),
          c = o.slice(1).join("=");
      '"' === c.charAt(0) && (c = c.slice(1, -1));

      try {
        t[o[0].replace(i, decodeURIComponent)] = c.replace(i, decodeURIComponent);
      } catch (e) {}
    }

    return t;
  }

  function s() {
    return o(document.cookie);
  }

  function a(e, t, i) {
    document.cookie = r(e, t, n({
      path: "/"
    }, i));
  }

  t.__esModule = !0, t.encode = r, t.parse = o, t.getAll = s, t.get = function (e) {
    return s()[e];
  }, t.set = a, t.remove = function (e, t) {
    a(e, "", n(n({}, t), {
      expires: -1
    }));
  };
});

s(eo);
eo.encode, eo.parse, eo.getAll;
var to = eo.get,
    no = eo.set,
    io = eo.remove,
    ro = {
  get: function get(e) {
    var t = to(e);
    if (void 0 !== t) return JSON.parse(t);
  },
  save: function save(e, t, n) {
    var i = {};
    "https:" === window.location.protocol && (i = {
      secure: !0,
      sameSite: "none"
    }), i.expires = n.daysUntilExpire, no(e, JSON.stringify(t), i);
  },
  remove: function remove(e) {
    io(e);
  }
},
    oo = {
  get: function get(e) {
    var t = ro.get(e);
    return t || ro.get("_legacy_" + e);
  },
  save: function save(e, t, n) {
    var i = {};
    "https:" === window.location.protocol && (i = {
      secure: !0
    }), i.expires = n.daysUntilExpire, no("_legacy_" + e, JSON.stringify(t), i), ro.save(e, t, n);
  },
  remove: function remove(e) {
    ro.remove(e), ro.remove("_legacy_" + e);
  }
},
    co = {
  get: function get(e) {
    if ("undefined" != typeof sessionStorage) {
      var t = sessionStorage.getItem(e);
      if (void 0 !== t) return JSON.parse(t);
    }
  },
  save: function save(e, t) {
    sessionStorage.setItem(e, JSON.stringify(t));
  },
  remove: function remove(e) {
    sessionStorage.removeItem(e);
  }
};

function so(e, t, n) {
  var i = void 0 === t ? null : t,
      r = function (e, t) {
    var n = atob(e);

    if (t) {
      for (var i = new Uint8Array(n.length), r = 0, o = n.length; r < o; ++r) {
        i[r] = n.charCodeAt(r);
      }

      return String.fromCharCode.apply(null, new Uint16Array(i.buffer));
    }

    return n;
  }(e, void 0 !== n && n),
      o = r.indexOf("\n", 10) + 1,
      c = r.substring(o) + (i ? "//# sourceMappingURL=" + i : ""),
      s = new Blob([c], {
    type: "application/javascript"
  });

  return URL.createObjectURL(s);
}

var ao,
    uo,
    lo,
    go,
    fo = (ao = "Lyogcm9sbHVwLXBsdWdpbi13ZWItd29ya2VyLWxvYWRlciAqLwohZnVuY3Rpb24oKXsidXNlIHN0cmljdCI7Ci8qISAqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgogICAgQ29weXJpZ2h0IChjKSBNaWNyb3NvZnQgQ29ycG9yYXRpb24uIEFsbCByaWdodHMgcmVzZXJ2ZWQuCiAgICBMaWNlbnNlZCB1bmRlciB0aGUgQXBhY2hlIExpY2Vuc2UsIFZlcnNpb24gMi4wICh0aGUgIkxpY2Vuc2UiKTsgeW91IG1heSBub3QgdXNlCiAgICB0aGlzIGZpbGUgZXhjZXB0IGluIGNvbXBsaWFuY2Ugd2l0aCB0aGUgTGljZW5zZS4gWW91IG1heSBvYnRhaW4gYSBjb3B5IG9mIHRoZQogICAgTGljZW5zZSBhdCBodHRwOi8vd3d3LmFwYWNoZS5vcmcvbGljZW5zZXMvTElDRU5TRS0yLjAKCiAgICBUSElTIENPREUgSVMgUFJPVklERUQgT04gQU4gKkFTIElTKiBCQVNJUywgV0lUSE9VVCBXQVJSQU5USUVTIE9SIENPTkRJVElPTlMgT0YgQU5ZCiAgICBLSU5ELCBFSVRIRVIgRVhQUkVTUyBPUiBJTVBMSUVELCBJTkNMVURJTkcgV0lUSE9VVCBMSU1JVEFUSU9OIEFOWSBJTVBMSUVECiAgICBXQVJSQU5USUVTIE9SIENPTkRJVElPTlMgT0YgVElUTEUsIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLAogICAgTUVSQ0hBTlRBQkxJVFkgT1IgTk9OLUlORlJJTkdFTUVOVC4KCiAgICBTZWUgdGhlIEFwYWNoZSBWZXJzaW9uIDIuMCBMaWNlbnNlIGZvciBzcGVjaWZpYyBsYW5ndWFnZSBnb3Zlcm5pbmcgcGVybWlzc2lvbnMKICAgIGFuZCBsaW1pdGF0aW9ucyB1bmRlciB0aGUgTGljZW5zZS4KICAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqICovdmFyIGU9ZnVuY3Rpb24oKXtyZXR1cm4oZT1PYmplY3QuYXNzaWdufHxmdW5jdGlvbihlKXtmb3IodmFyIHIsdD0xLG49YXJndW1lbnRzLmxlbmd0aDt0PG47dCsrKWZvcih2YXIgbyBpbiByPWFyZ3VtZW50c1t0XSlPYmplY3QucHJvdG90eXBlLmhhc093blByb3BlcnR5LmNhbGwocixvKSYmKGVbb109cltvXSk7cmV0dXJuIGV9KS5hcHBseSh0aGlzLGFyZ3VtZW50cyl9O2Z1bmN0aW9uIHIoZSxyKXt2YXIgdCxuLG8scyxhPXtsYWJlbDowLHNlbnQ6ZnVuY3Rpb24oKXtpZigxJm9bMF0pdGhyb3cgb1sxXTtyZXR1cm4gb1sxXX0sdHJ5czpbXSxvcHM6W119O3JldHVybiBzPXtuZXh0OmkoMCksdGhyb3c6aSgxKSxyZXR1cm46aSgyKX0sImZ1bmN0aW9uIj09dHlwZW9mIFN5bWJvbCYmKHNbU3ltYm9sLml0ZXJhdG9yXT1mdW5jdGlvbigpe3JldHVybiB0aGlzfSkscztmdW5jdGlvbiBpKHMpe3JldHVybiBmdW5jdGlvbihpKXtyZXR1cm4gZnVuY3Rpb24ocyl7aWYodCl0aHJvdyBuZXcgVHlwZUVycm9yKCJHZW5lcmF0b3IgaXMgYWxyZWFkeSBleGVjdXRpbmcuIik7Zm9yKDthOyl0cnl7aWYodD0xLG4mJihvPTImc1swXT9uLnJldHVybjpzWzBdP24udGhyb3d8fCgobz1uLnJldHVybikmJm8uY2FsbChuKSwwKTpuLm5leHQpJiYhKG89by5jYWxsKG4sc1sxXSkpLmRvbmUpcmV0dXJuIG87c3dpdGNoKG49MCxvJiYocz1bMiZzWzBdLG8udmFsdWVdKSxzWzBdKXtjYXNlIDA6Y2FzZSAxOm89czticmVhaztjYXNlIDQ6cmV0dXJuIGEubGFiZWwrKyx7dmFsdWU6c1sxXSxkb25lOiExfTtjYXNlIDU6YS5sYWJlbCsrLG49c1sxXSxzPVswXTtjb250aW51ZTtjYXNlIDc6cz1hLm9wcy5wb3AoKSxhLnRyeXMucG9wKCk7Y29udGludWU7ZGVmYXVsdDppZighKG89YS50cnlzLChvPW8ubGVuZ3RoPjAmJm9bby5sZW5ndGgtMV0pfHw2IT09c1swXSYmMiE9PXNbMF0pKXthPTA7Y29udGludWV9aWYoMz09PXNbMF0mJighb3x8c1sxXT5vWzBdJiZzWzFdPG9bM10pKXthLmxhYmVsPXNbMV07YnJlYWt9aWYoNj09PXNbMF0mJmEubGFiZWw8b1sxXSl7YS5sYWJlbD1vWzFdLG89czticmVha31pZihvJiZhLmxhYmVsPG9bMl0pe2EubGFiZWw9b1syXSxhLm9wcy5wdXNoKHMpO2JyZWFrfW9bMl0mJmEub3BzLnBvcCgpLGEudHJ5cy5wb3AoKTtjb250aW51ZX1zPXIuY2FsbChlLGEpfWNhdGNoKGUpe3M9WzYsZV0sbj0wfWZpbmFsbHl7dD1vPTB9aWYoNSZzWzBdKXRocm93IHNbMV07cmV0dXJue3ZhbHVlOnNbMF0/c1sxXTp2b2lkIDAsZG9uZTohMH19KFtzLGldKX19fXZhciB0PXt9LG49ZnVuY3Rpb24oZSxyKXtyZXR1cm4gZSsifCIrcn07YWRkRXZlbnRMaXN0ZW5lcigibWVzc2FnZSIsKGZ1bmN0aW9uKG8pe3ZhciBzLGEsaSx1LGMsbCxmLHAsaCx5LGI7cmV0dXJuIHA9dm9pZCAwLGg9dm9pZCAwLGI9ZnVuY3Rpb24oKXt2YXIgcCxoLHksYixkLHYsdyxnO3JldHVybiByKHRoaXMsKGZ1bmN0aW9uKHIpe3N3aXRjaChyLmxhYmVsKXtjYXNlIDA6cz1vLmRhdGEsYT1zLnVybCxpPXMudGltZW91dCx1PXMuYXVkaWVuY2UsYz1zLnNjb3BlLGw9ZnVuY3Rpb24oZSxyKXt2YXIgdD17fTtmb3IodmFyIG4gaW4gZSlPYmplY3QucHJvdG90eXBlLmhhc093blByb3BlcnR5LmNhbGwoZSxuKSYmci5pbmRleE9mKG4pPDAmJih0W25dPWVbbl0pO2lmKG51bGwhPWUmJiJmdW5jdGlvbiI9PXR5cGVvZiBPYmplY3QuZ2V0T3duUHJvcGVydHlTeW1ib2xzKXt2YXIgbz0wO2ZvcihuPU9iamVjdC5nZXRPd25Qcm9wZXJ0eVN5bWJvbHMoZSk7bzxuLmxlbmd0aDtvKyspci5pbmRleE9mKG5bb10pPDAmJk9iamVjdC5wcm90b3R5cGUucHJvcGVydHlJc0VudW1lcmFibGUuY2FsbChlLG5bb10pJiYodFtuW29dXT1lW25bb11dKX1yZXR1cm4gdH0ocyxbInVybCIsInRpbWVvdXQiLCJhdWRpZW5jZSIsInNjb3BlIl0pLGY9by5wb3J0c1swXSxyLmxhYmVsPTE7Y2FzZSAxOmlmKHIudHJ5cy5wdXNoKFsxLDcsLDhdKSwhKGg9SlNPTi5wYXJzZShsLmJvZHkpKS5yZWZyZXNoX3Rva2VuJiYicmVmcmVzaF90b2tlbiI9PT1oLmdyYW50X3R5cGUpe2lmKCEoeT1mdW5jdGlvbihlLHIpe3JldHVybiB0W24oZSxyKV19KHUsYykpKXRocm93IG5ldyBFcnJvcigiVGhlIHdlYiB3b3JrZXIgaXMgbWlzc2luZyB0aGUgcmVmcmVzaCB0b2tlbiIpO2wuYm9keT1KU09OLnN0cmluZ2lmeShlKGUoe30saCkse3JlZnJlc2hfdG9rZW46eX0pKX1iPW5ldyBBYm9ydENvbnRyb2xsZXIsZD1iLnNpZ25hbCx2PXZvaWQgMCxyLmxhYmVsPTI7Y2FzZSAyOnJldHVybiByLnRyeXMucHVzaChbMiw0LCw1XSksWzQsUHJvbWlzZS5yYWNlKFsoaz1pLG5ldyBQcm9taXNlKChmdW5jdGlvbihlKXtyZXR1cm4gc2V0VGltZW91dChlLGspfSkpKSxmZXRjaChhLGUoZSh7fSxsKSx7c2lnbmFsOmR9KSldKV07Y2FzZSAzOnJldHVybiB2PXIuc2VudCgpLFszLDVdO2Nhc2UgNDpyZXR1cm4gdz1yLnNlbnQoKSxmLnBvc3RNZXNzYWdlKHtlcnJvcjp3Lm1lc3NhZ2V9KSxbMl07Y2FzZSA1OnJldHVybiB2P1s0LHYuanNvbigpXTooYi5hYm9ydCgpLFsyXSk7Y2FzZSA2OnJldHVybihwPXIuc2VudCgpKS5yZWZyZXNoX3Rva2VuPyhmdW5jdGlvbihlLHIsbyl7dFtuKHIsbyldPWV9KHAucmVmcmVzaF90b2tlbix1LGMpLGRlbGV0ZSBwLnJlZnJlc2hfdG9rZW4pOmZ1bmN0aW9uKGUscil7ZGVsZXRlIHRbbihlLHIpXX0odSxjKSxmLnBvc3RNZXNzYWdlKHtvazp2Lm9rLGpzb246cH0pLFszLDhdO2Nhc2UgNzpyZXR1cm4gZz1yLnNlbnQoKSxmLnBvc3RNZXNzYWdlKHtvazohMSxqc29uOntlcnJvcl9kZXNjcmlwdGlvbjpnLm1lc3NhZ2V9fSksWzMsOF07Y2FzZSA4OnJldHVyblsyXX12YXIga30pKX0sbmV3KCh5PXZvaWQgMCl8fCh5PVByb21pc2UpKSgoZnVuY3Rpb24oZSxyKXtmdW5jdGlvbiB0KGUpe3RyeXtvKGIubmV4dChlKSl9Y2F0Y2goZSl7cihlKX19ZnVuY3Rpb24gbihlKXt0cnl7byhiLnRocm93KGUpKX1jYXRjaChlKXtyKGUpfX1mdW5jdGlvbiBvKHIpe3IuZG9uZT9lKHIudmFsdWUpOm5ldyB5KChmdW5jdGlvbihlKXtlKHIudmFsdWUpfSkpLnRoZW4odCxuKX1vKChiPWIuYXBwbHkocCxofHxbXSkpLm5leHQoKSl9KSl9KSl9KCk7Cgo=", uo = "data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidG9rZW4ud29ya2VyLmpzIiwic291cmNlcyI6WyJ3b3JrZXI6Ly93ZWItd29ya2VyL25vZGVfbW9kdWxlcy90c2xpYi90c2xpYi5lczYuanMiLCJ3b3JrZXI6Ly93ZWItd29ya2VyL3NyYy9jb25zdGFudHMudHMiLCJ3b3JrZXI6Ly93ZWItd29ya2VyL3NyYy90b2tlbi53b3JrZXIudHMiXSwic291cmNlc0NvbnRlbnQiOlsiLyohICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqXHJcbkNvcHlyaWdodCAoYykgTWljcm9zb2Z0IENvcnBvcmF0aW9uLiBBbGwgcmlnaHRzIHJlc2VydmVkLlxyXG5MaWNlbnNlZCB1bmRlciB0aGUgQXBhY2hlIExpY2Vuc2UsIFZlcnNpb24gMi4wICh0aGUgXCJMaWNlbnNlXCIpOyB5b3UgbWF5IG5vdCB1c2VcclxudGhpcyBmaWxlIGV4Y2VwdCBpbiBjb21wbGlhbmNlIHdpdGggdGhlIExpY2Vuc2UuIFlvdSBtYXkgb2J0YWluIGEgY29weSBvZiB0aGVcclxuTGljZW5zZSBhdCBodHRwOi8vd3d3LmFwYWNoZS5vcmcvbGljZW5zZXMvTElDRU5TRS0yLjBcclxuXHJcblRISVMgQ09ERSBJUyBQUk9WSURFRCBPTiBBTiAqQVMgSVMqIEJBU0lTLCBXSVRIT1VUIFdBUlJBTlRJRVMgT1IgQ09ORElUSU9OUyBPRiBBTllcclxuS0lORCwgRUlUSEVSIEVYUFJFU1MgT1IgSU1QTElFRCwgSU5DTFVESU5HIFdJVEhPVVQgTElNSVRBVElPTiBBTlkgSU1QTElFRFxyXG5XQVJSQU5USUVTIE9SIENPTkRJVElPTlMgT0YgVElUTEUsIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLFxyXG5NRVJDSEFOVEFCTElUWSBPUiBOT04tSU5GUklOR0VNRU5ULlxyXG5cclxuU2VlIHRoZSBBcGFjaGUgVmVyc2lvbiAyLjAgTGljZW5zZSBmb3Igc3BlY2lmaWMgbGFuZ3VhZ2UgZ292ZXJuaW5nIHBlcm1pc3Npb25zXHJcbmFuZCBsaW1pdGF0aW9ucyB1bmRlciB0aGUgTGljZW5zZS5cclxuKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiogKi9cclxuLyogZ2xvYmFsIFJlZmxlY3QsIFByb21pc2UgKi9cclxuXHJcbnZhciBleHRlbmRTdGF0aWNzID0gZnVuY3Rpb24oZCwgYikge1xyXG4gICAgZXh0ZW5kU3RhdGljcyA9IE9iamVjdC5zZXRQcm90b3R5cGVPZiB8fFxyXG4gICAgICAgICh7IF9fcHJvdG9fXzogW10gfSBpbnN0YW5jZW9mIEFycmF5ICYmIGZ1bmN0aW9uIChkLCBiKSB7IGQuX19wcm90b19fID0gYjsgfSkgfHxcclxuICAgICAgICBmdW5jdGlvbiAoZCwgYikgeyBmb3IgKHZhciBwIGluIGIpIGlmIChiLmhhc093blByb3BlcnR5KHApKSBkW3BdID0gYltwXTsgfTtcclxuICAgIHJldHVybiBleHRlbmRTdGF0aWNzKGQsIGIpO1xyXG59O1xyXG5cclxuZXhwb3J0IGZ1bmN0aW9uIF9fZXh0ZW5kcyhkLCBiKSB7XHJcbiAgICBleHRlbmRTdGF0aWNzKGQsIGIpO1xyXG4gICAgZnVuY3Rpb24gX18oKSB7IHRoaXMuY29uc3RydWN0b3IgPSBkOyB9XHJcbiAgICBkLnByb3RvdHlwZSA9IGIgPT09IG51bGwgPyBPYmplY3QuY3JlYXRlKGIpIDogKF9fLnByb3RvdHlwZSA9IGIucHJvdG90eXBlLCBuZXcgX18oKSk7XHJcbn1cclxuXHJcbmV4cG9ydCB2YXIgX19hc3NpZ24gPSBmdW5jdGlvbigpIHtcclxuICAgIF9fYXNzaWduID0gT2JqZWN0LmFzc2lnbiB8fCBmdW5jdGlvbiBfX2Fzc2lnbih0KSB7XHJcbiAgICAgICAgZm9yICh2YXIgcywgaSA9IDEsIG4gPSBhcmd1bWVudHMubGVuZ3RoOyBpIDwgbjsgaSsrKSB7XHJcbiAgICAgICAgICAgIHMgPSBhcmd1bWVudHNbaV07XHJcbiAgICAgICAgICAgIGZvciAodmFyIHAgaW4gcykgaWYgKE9iamVjdC5wcm90b3R5cGUuaGFzT3duUHJvcGVydHkuY2FsbChzLCBwKSkgdFtwXSA9IHNbcF07XHJcbiAgICAgICAgfVxyXG4gICAgICAgIHJldHVybiB0O1xyXG4gICAgfVxyXG4gICAgcmV0dXJuIF9fYXNzaWduLmFwcGx5KHRoaXMsIGFyZ3VtZW50cyk7XHJcbn1cclxuXHJcbmV4cG9ydCBmdW5jdGlvbiBfX3Jlc3QocywgZSkge1xyXG4gICAgdmFyIHQgPSB7fTtcclxuICAgIGZvciAodmFyIHAgaW4gcykgaWYgKE9iamVjdC5wcm90b3R5cGUuaGFzT3duUHJvcGVydHkuY2FsbChzLCBwKSAmJiBlLmluZGV4T2YocCkgPCAwKVxyXG4gICAgICAgIHRbcF0gPSBzW3BdO1xyXG4gICAgaWYgKHMgIT0gbnVsbCAmJiB0eXBlb2YgT2JqZWN0LmdldE93blByb3BlcnR5U3ltYm9scyA9PT0gXCJmdW5jdGlvblwiKVxyXG4gICAgICAgIGZvciAodmFyIGkgPSAwLCBwID0gT2JqZWN0LmdldE93blByb3BlcnR5U3ltYm9scyhzKTsgaSA8IHAubGVuZ3RoOyBpKyspIHtcclxuICAgICAgICAgICAgaWYgKGUuaW5kZXhPZihwW2ldKSA8IDAgJiYgT2JqZWN0LnByb3RvdHlwZS5wcm9wZXJ0eUlzRW51bWVyYWJsZS5jYWxsKHMsIHBbaV0pKVxyXG4gICAgICAgICAgICAgICAgdFtwW2ldXSA9IHNbcFtpXV07XHJcbiAgICAgICAgfVxyXG4gICAgcmV0dXJuIHQ7XHJcbn1cclxuXHJcbmV4cG9ydCBmdW5jdGlvbiBfX2RlY29yYXRlKGRlY29yYXRvcnMsIHRhcmdldCwga2V5LCBkZXNjKSB7XHJcbiAgICB2YXIgYyA9IGFyZ3VtZW50cy5sZW5ndGgsIHIgPSBjIDwgMyA/IHRhcmdldCA6IGRlc2MgPT09IG51bGwgPyBkZXNjID0gT2JqZWN0LmdldE93blByb3BlcnR5RGVzY3JpcHRvcih0YXJnZXQsIGtleSkgOiBkZXNjLCBkO1xyXG4gICAgaWYgKHR5cGVvZiBSZWZsZWN0ID09PSBcIm9iamVjdFwiICYmIHR5cGVvZiBSZWZsZWN0LmRlY29yYXRlID09PSBcImZ1bmN0aW9uXCIpIHIgPSBSZWZsZWN0LmRlY29yYXRlKGRlY29yYXRvcnMsIHRhcmdldCwga2V5LCBkZXNjKTtcclxuICAgIGVsc2UgZm9yICh2YXIgaSA9IGRlY29yYXRvcnMubGVuZ3RoIC0gMTsgaSA+PSAwOyBpLS0pIGlmIChkID0gZGVjb3JhdG9yc1tpXSkgciA9IChjIDwgMyA/IGQocikgOiBjID4gMyA/IGQodGFyZ2V0LCBrZXksIHIpIDogZCh0YXJnZXQsIGtleSkpIHx8IHI7XHJcbiAgICByZXR1cm4gYyA+IDMgJiYgciAmJiBPYmplY3QuZGVmaW5lUHJvcGVydHkodGFyZ2V0LCBrZXksIHIpLCByO1xyXG59XHJcblxyXG5leHBvcnQgZnVuY3Rpb24gX19wYXJhbShwYXJhbUluZGV4LCBkZWNvcmF0b3IpIHtcclxuICAgIHJldHVybiBmdW5jdGlvbiAodGFyZ2V0LCBrZXkpIHsgZGVjb3JhdG9yKHRhcmdldCwga2V5LCBwYXJhbUluZGV4KTsgfVxyXG59XHJcblxyXG5leHBvcnQgZnVuY3Rpb24gX19tZXRhZGF0YShtZXRhZGF0YUtleSwgbWV0YWRhdGFWYWx1ZSkge1xyXG4gICAgaWYgKHR5cGVvZiBSZWZsZWN0ID09PSBcIm9iamVjdFwiICYmIHR5cGVvZiBSZWZsZWN0Lm1ldGFkYXRhID09PSBcImZ1bmN0aW9uXCIpIHJldHVybiBSZWZsZWN0Lm1ldGFkYXRhKG1ldGFkYXRhS2V5LCBtZXRhZGF0YVZhbHVlKTtcclxufVxyXG5cclxuZXhwb3J0IGZ1bmN0aW9uIF9fYXdhaXRlcih0aGlzQXJnLCBfYXJndW1lbnRzLCBQLCBnZW5lcmF0b3IpIHtcclxuICAgIHJldHVybiBuZXcgKFAgfHwgKFAgPSBQcm9taXNlKSkoZnVuY3Rpb24gKHJlc29sdmUsIHJlamVjdCkge1xyXG4gICAgICAgIGZ1bmN0aW9uIGZ1bGZpbGxlZCh2YWx1ZSkgeyB0cnkgeyBzdGVwKGdlbmVyYXRvci5uZXh0KHZhbHVlKSk7IH0gY2F0Y2ggKGUpIHsgcmVqZWN0KGUpOyB9IH1cclxuICAgICAgICBmdW5jdGlvbiByZWplY3RlZCh2YWx1ZSkgeyB0cnkgeyBzdGVwKGdlbmVyYXRvcltcInRocm93XCJdKHZhbHVlKSk7IH0gY2F0Y2ggKGUpIHsgcmVqZWN0KGUpOyB9IH1cclxuICAgICAgICBmdW5jdGlvbiBzdGVwKHJlc3VsdCkgeyByZXN1bHQuZG9uZSA/IHJlc29sdmUocmVzdWx0LnZhbHVlKSA6IG5ldyBQKGZ1bmN0aW9uIChyZXNvbHZlKSB7IHJlc29sdmUocmVzdWx0LnZhbHVlKTsgfSkudGhlbihmdWxmaWxsZWQsIHJlamVjdGVkKTsgfVxyXG4gICAgICAgIHN0ZXAoKGdlbmVyYXRvciA9IGdlbmVyYXRvci5hcHBseSh0aGlzQXJnLCBfYXJndW1lbnRzIHx8IFtdKSkubmV4dCgpKTtcclxuICAgIH0pO1xyXG59XHJcblxyXG5leHBvcnQgZnVuY3Rpb24gX19nZW5lcmF0b3IodGhpc0FyZywgYm9keSkge1xyXG4gICAgdmFyIF8gPSB7IGxhYmVsOiAwLCBzZW50OiBmdW5jdGlvbigpIHsgaWYgKHRbMF0gJiAxKSB0aHJvdyB0WzFdOyByZXR1cm4gdFsxXTsgfSwgdHJ5czogW10sIG9wczogW10gfSwgZiwgeSwgdCwgZztcclxuICAgIHJldHVybiBnID0geyBuZXh0OiB2ZXJiKDApLCBcInRocm93XCI6IHZlcmIoMSksIFwicmV0dXJuXCI6IHZlcmIoMikgfSwgdHlwZW9mIFN5bWJvbCA9PT0gXCJmdW5jdGlvblwiICYmIChnW1N5bWJvbC5pdGVyYXRvcl0gPSBmdW5jdGlvbigpIHsgcmV0dXJuIHRoaXM7IH0pLCBnO1xyXG4gICAgZnVuY3Rpb24gdmVyYihuKSB7IHJldHVybiBmdW5jdGlvbiAodikgeyByZXR1cm4gc3RlcChbbiwgdl0pOyB9OyB9XHJcbiAgICBmdW5jdGlvbiBzdGVwKG9wKSB7XHJcbiAgICAgICAgaWYgKGYpIHRocm93IG5ldyBUeXBlRXJyb3IoXCJHZW5lcmF0b3IgaXMgYWxyZWFkeSBleGVjdXRpbmcuXCIpO1xyXG4gICAgICAgIHdoaWxlIChfKSB0cnkge1xyXG4gICAgICAgICAgICBpZiAoZiA9IDEsIHkgJiYgKHQgPSBvcFswXSAmIDIgPyB5W1wicmV0dXJuXCJdIDogb3BbMF0gPyB5W1widGhyb3dcIl0gfHwgKCh0ID0geVtcInJldHVyblwiXSkgJiYgdC5jYWxsKHkpLCAwKSA6IHkubmV4dCkgJiYgISh0ID0gdC5jYWxsKHksIG9wWzFdKSkuZG9uZSkgcmV0dXJuIHQ7XHJcbiAgICAgICAgICAgIGlmICh5ID0gMCwgdCkgb3AgPSBbb3BbMF0gJiAyLCB0LnZhbHVlXTtcclxuICAgICAgICAgICAgc3dpdGNoIChvcFswXSkge1xyXG4gICAgICAgICAgICAgICAgY2FzZSAwOiBjYXNlIDE6IHQgPSBvcDsgYnJlYWs7XHJcbiAgICAgICAgICAgICAgICBjYXNlIDQ6IF8ubGFiZWwrKzsgcmV0dXJuIHsgdmFsdWU6IG9wWzFdLCBkb25lOiBmYWxzZSB9O1xyXG4gICAgICAgICAgICAgICAgY2FzZSA1OiBfLmxhYmVsKys7IHkgPSBvcFsxXTsgb3AgPSBbMF07IGNvbnRpbnVlO1xyXG4gICAgICAgICAgICAgICAgY2FzZSA3OiBvcCA9IF8ub3BzLnBvcCgpOyBfLnRyeXMucG9wKCk7IGNvbnRpbnVlO1xyXG4gICAgICAgICAgICAgICAgZGVmYXVsdDpcclxuICAgICAgICAgICAgICAgICAgICBpZiAoISh0ID0gXy50cnlzLCB0ID0gdC5sZW5ndGggPiAwICYmIHRbdC5sZW5ndGggLSAxXSkgJiYgKG9wWzBdID09PSA2IHx8IG9wWzBdID09PSAyKSkgeyBfID0gMDsgY29udGludWU7IH1cclxuICAgICAgICAgICAgICAgICAgICBpZiAob3BbMF0gPT09IDMgJiYgKCF0IHx8IChvcFsxXSA+IHRbMF0gJiYgb3BbMV0gPCB0WzNdKSkpIHsgXy5sYWJlbCA9IG9wWzFdOyBicmVhazsgfVxyXG4gICAgICAgICAgICAgICAgICAgIGlmIChvcFswXSA9PT0gNiAmJiBfLmxhYmVsIDwgdFsxXSkgeyBfLmxhYmVsID0gdFsxXTsgdCA9IG9wOyBicmVhazsgfVxyXG4gICAgICAgICAgICAgICAgICAgIGlmICh0ICYmIF8ubGFiZWwgPCB0WzJdKSB7IF8ubGFiZWwgPSB0WzJdOyBfLm9wcy5wdXNoKG9wKTsgYnJlYWs7IH1cclxuICAgICAgICAgICAgICAgICAgICBpZiAodFsyXSkgXy5vcHMucG9wKCk7XHJcbiAgICAgICAgICAgICAgICAgICAgXy50cnlzLnBvcCgpOyBjb250aW51ZTtcclxuICAgICAgICAgICAgfVxyXG4gICAgICAgICAgICBvcCA9IGJvZHkuY2FsbCh0aGlzQXJnLCBfKTtcclxuICAgICAgICB9IGNhdGNoIChlKSB7IG9wID0gWzYsIGVdOyB5ID0gMDsgfSBmaW5hbGx5IHsgZiA9IHQgPSAwOyB9XHJcbiAgICAgICAgaWYgKG9wWzBdICYgNSkgdGhyb3cgb3BbMV07IHJldHVybiB7IHZhbHVlOiBvcFswXSA/IG9wWzFdIDogdm9pZCAwLCBkb25lOiB0cnVlIH07XHJcbiAgICB9XHJcbn1cclxuXHJcbmV4cG9ydCBmdW5jdGlvbiBfX2V4cG9ydFN0YXIobSwgZXhwb3J0cykge1xyXG4gICAgZm9yICh2YXIgcCBpbiBtKSBpZiAoIWV4cG9ydHMuaGFzT3duUHJvcGVydHkocCkpIGV4cG9ydHNbcF0gPSBtW3BdO1xyXG59XHJcblxyXG5leHBvcnQgZnVuY3Rpb24gX192YWx1ZXMobykge1xyXG4gICAgdmFyIG0gPSB0eXBlb2YgU3ltYm9sID09PSBcImZ1bmN0aW9uXCIgJiYgb1tTeW1ib2wuaXRlcmF0b3JdLCBpID0gMDtcclxuICAgIGlmIChtKSByZXR1cm4gbS5jYWxsKG8pO1xyXG4gICAgcmV0dXJuIHtcclxuICAgICAgICBuZXh0OiBmdW5jdGlvbiAoKSB7XHJcbiAgICAgICAgICAgIGlmIChvICYmIGkgPj0gby5sZW5ndGgpIG8gPSB2b2lkIDA7XHJcbiAgICAgICAgICAgIHJldHVybiB7IHZhbHVlOiBvICYmIG9baSsrXSwgZG9uZTogIW8gfTtcclxuICAgICAgICB9XHJcbiAgICB9O1xyXG59XHJcblxyXG5leHBvcnQgZnVuY3Rpb24gX19yZWFkKG8sIG4pIHtcclxuICAgIHZhciBtID0gdHlwZW9mIFN5bWJvbCA9PT0gXCJmdW5jdGlvblwiICYmIG9bU3ltYm9sLml0ZXJhdG9yXTtcclxuICAgIGlmICghbSkgcmV0dXJuIG87XHJcbiAgICB2YXIgaSA9IG0uY2FsbChvKSwgciwgYXIgPSBbXSwgZTtcclxuICAgIHRyeSB7XHJcbiAgICAgICAgd2hpbGUgKChuID09PSB2b2lkIDAgfHwgbi0tID4gMCkgJiYgIShyID0gaS5uZXh0KCkpLmRvbmUpIGFyLnB1c2goci52YWx1ZSk7XHJcbiAgICB9XHJcbiAgICBjYXRjaCAoZXJyb3IpIHsgZSA9IHsgZXJyb3I6IGVycm9yIH07IH1cclxuICAgIGZpbmFsbHkge1xyXG4gICAgICAgIHRyeSB7XHJcbiAgICAgICAgICAgIGlmIChyICYmICFyLmRvbmUgJiYgKG0gPSBpW1wicmV0dXJuXCJdKSkgbS5jYWxsKGkpO1xyXG4gICAgICAgIH1cclxuICAgICAgICBmaW5hbGx5IHsgaWYgKGUpIHRocm93IGUuZXJyb3I7IH1cclxuICAgIH1cclxuICAgIHJldHVybiBhcjtcclxufVxyXG5cclxuZXhwb3J0IGZ1bmN0aW9uIF9fc3ByZWFkKCkge1xyXG4gICAgZm9yICh2YXIgYXIgPSBbXSwgaSA9IDA7IGkgPCBhcmd1bWVudHMubGVuZ3RoOyBpKyspXHJcbiAgICAgICAgYXIgPSBhci5jb25jYXQoX19yZWFkKGFyZ3VtZW50c1tpXSkpO1xyXG4gICAgcmV0dXJuIGFyO1xyXG59XHJcblxyXG5leHBvcnQgZnVuY3Rpb24gX19zcHJlYWRBcnJheXMoKSB7XHJcbiAgICBmb3IgKHZhciBzID0gMCwgaSA9IDAsIGlsID0gYXJndW1lbnRzLmxlbmd0aDsgaSA8IGlsOyBpKyspIHMgKz0gYXJndW1lbnRzW2ldLmxlbmd0aDtcclxuICAgIGZvciAodmFyIHIgPSBBcnJheShzKSwgayA9IDAsIGkgPSAwOyBpIDwgaWw7IGkrKylcclxuICAgICAgICBmb3IgKHZhciBhID0gYXJndW1lbnRzW2ldLCBqID0gMCwgamwgPSBhLmxlbmd0aDsgaiA8IGpsOyBqKyssIGsrKylcclxuICAgICAgICAgICAgcltrXSA9IGFbal07XHJcbiAgICByZXR1cm4gcjtcclxufTtcclxuXHJcbmV4cG9ydCBmdW5jdGlvbiBfX2F3YWl0KHYpIHtcclxuICAgIHJldHVybiB0aGlzIGluc3RhbmNlb2YgX19hd2FpdCA/ICh0aGlzLnYgPSB2LCB0aGlzKSA6IG5ldyBfX2F3YWl0KHYpO1xyXG59XHJcblxyXG5leHBvcnQgZnVuY3Rpb24gX19hc3luY0dlbmVyYXRvcih0aGlzQXJnLCBfYXJndW1lbnRzLCBnZW5lcmF0b3IpIHtcclxuICAgIGlmICghU3ltYm9sLmFzeW5jSXRlcmF0b3IpIHRocm93IG5ldyBUeXBlRXJyb3IoXCJTeW1ib2wuYXN5bmNJdGVyYXRvciBpcyBub3QgZGVmaW5lZC5cIik7XHJcbiAgICB2YXIgZyA9IGdlbmVyYXRvci5hcHBseSh0aGlzQXJnLCBfYXJndW1lbnRzIHx8IFtdKSwgaSwgcSA9IFtdO1xyXG4gICAgcmV0dXJuIGkgPSB7fSwgdmVyYihcIm5leHRcIiksIHZlcmIoXCJ0aHJvd1wiKSwgdmVyYihcInJldHVyblwiKSwgaVtTeW1ib2wuYXN5bmNJdGVyYXRvcl0gPSBmdW5jdGlvbiAoKSB7IHJldHVybiB0aGlzOyB9LCBpO1xyXG4gICAgZnVuY3Rpb24gdmVyYihuKSB7IGlmIChnW25dKSBpW25dID0gZnVuY3Rpb24gKHYpIHsgcmV0dXJuIG5ldyBQcm9taXNlKGZ1bmN0aW9uIChhLCBiKSB7IHEucHVzaChbbiwgdiwgYSwgYl0pID4gMSB8fCByZXN1bWUobiwgdik7IH0pOyB9OyB9XHJcbiAgICBmdW5jdGlvbiByZXN1bWUobiwgdikgeyB0cnkgeyBzdGVwKGdbbl0odikpOyB9IGNhdGNoIChlKSB7IHNldHRsZShxWzBdWzNdLCBlKTsgfSB9XHJcbiAgICBmdW5jdGlvbiBzdGVwKHIpIHsgci52YWx1ZSBpbnN0YW5jZW9mIF9fYXdhaXQgPyBQcm9taXNlLnJlc29sdmUoci52YWx1ZS52KS50aGVuKGZ1bGZpbGwsIHJlamVjdCkgOiBzZXR0bGUocVswXVsyXSwgcik7IH1cclxuICAgIGZ1bmN0aW9uIGZ1bGZpbGwodmFsdWUpIHsgcmVzdW1lKFwibmV4dFwiLCB2YWx1ZSk7IH1cclxuICAgIGZ1bmN0aW9uIHJlamVjdCh2YWx1ZSkgeyByZXN1bWUoXCJ0aHJvd1wiLCB2YWx1ZSk7IH1cclxuICAgIGZ1bmN0aW9uIHNldHRsZShmLCB2KSB7IGlmIChmKHYpLCBxLnNoaWZ0KCksIHEubGVuZ3RoKSByZXN1bWUocVswXVswXSwgcVswXVsxXSk7IH1cclxufVxyXG5cclxuZXhwb3J0IGZ1bmN0aW9uIF9fYXN5bmNEZWxlZ2F0b3Iobykge1xyXG4gICAgdmFyIGksIHA7XHJcbiAgICByZXR1cm4gaSA9IHt9LCB2ZXJiKFwibmV4dFwiKSwgdmVyYihcInRocm93XCIsIGZ1bmN0aW9uIChlKSB7IHRocm93IGU7IH0pLCB2ZXJiKFwicmV0dXJuXCIpLCBpW1N5bWJvbC5pdGVyYXRvcl0gPSBmdW5jdGlvbiAoKSB7IHJldHVybiB0aGlzOyB9LCBpO1xyXG4gICAgZnVuY3Rpb24gdmVyYihuLCBmKSB7IGlbbl0gPSBvW25dID8gZnVuY3Rpb24gKHYpIHsgcmV0dXJuIChwID0gIXApID8geyB2YWx1ZTogX19hd2FpdChvW25dKHYpKSwgZG9uZTogbiA9PT0gXCJyZXR1cm5cIiB9IDogZiA/IGYodikgOiB2OyB9IDogZjsgfVxyXG59XHJcblxyXG5leHBvcnQgZnVuY3Rpb24gX19hc3luY1ZhbHVlcyhvKSB7XHJcbiAgICBpZiAoIVN5bWJvbC5hc3luY0l0ZXJhdG9yKSB0aHJvdyBuZXcgVHlwZUVycm9yKFwiU3ltYm9sLmFzeW5jSXRlcmF0b3IgaXMgbm90IGRlZmluZWQuXCIpO1xyXG4gICAgdmFyIG0gPSBvW1N5bWJvbC5hc3luY0l0ZXJhdG9yXSwgaTtcclxuICAgIHJldHVybiBtID8gbS5jYWxsKG8pIDogKG8gPSB0eXBlb2YgX192YWx1ZXMgPT09IFwiZnVuY3Rpb25cIiA/IF9fdmFsdWVzKG8pIDogb1tTeW1ib2wuaXRlcmF0b3JdKCksIGkgPSB7fSwgdmVyYihcIm5leHRcIiksIHZlcmIoXCJ0aHJvd1wiKSwgdmVyYihcInJldHVyblwiKSwgaVtTeW1ib2wuYXN5bmNJdGVyYXRvcl0gPSBmdW5jdGlvbiAoKSB7IHJldHVybiB0aGlzOyB9LCBpKTtcclxuICAgIGZ1bmN0aW9uIHZlcmIobikgeyBpW25dID0gb1tuXSAmJiBmdW5jdGlvbiAodikgeyByZXR1cm4gbmV3IFByb21pc2UoZnVuY3Rpb24gKHJlc29sdmUsIHJlamVjdCkgeyB2ID0gb1tuXSh2KSwgc2V0dGxlKHJlc29sdmUsIHJlamVjdCwgdi5kb25lLCB2LnZhbHVlKTsgfSk7IH07IH1cclxuICAgIGZ1bmN0aW9uIHNldHRsZShyZXNvbHZlLCByZWplY3QsIGQsIHYpIHsgUHJvbWlzZS5yZXNvbHZlKHYpLnRoZW4oZnVuY3Rpb24odikgeyByZXNvbHZlKHsgdmFsdWU6IHYsIGRvbmU6IGQgfSk7IH0sIHJlamVjdCk7IH1cclxufVxyXG5cclxuZXhwb3J0IGZ1bmN0aW9uIF9fbWFrZVRlbXBsYXRlT2JqZWN0KGNvb2tlZCwgcmF3KSB7XHJcbiAgICBpZiAoT2JqZWN0LmRlZmluZVByb3BlcnR5KSB7IE9iamVjdC5kZWZpbmVQcm9wZXJ0eShjb29rZWQsIFwicmF3XCIsIHsgdmFsdWU6IHJhdyB9KTsgfSBlbHNlIHsgY29va2VkLnJhdyA9IHJhdzsgfVxyXG4gICAgcmV0dXJuIGNvb2tlZDtcclxufTtcclxuXHJcbmV4cG9ydCBmdW5jdGlvbiBfX2ltcG9ydFN0YXIobW9kKSB7XHJcbiAgICBpZiAobW9kICYmIG1vZC5fX2VzTW9kdWxlKSByZXR1cm4gbW9kO1xyXG4gICAgdmFyIHJlc3VsdCA9IHt9O1xyXG4gICAgaWYgKG1vZCAhPSBudWxsKSBmb3IgKHZhciBrIGluIG1vZCkgaWYgKE9iamVjdC5oYXNPd25Qcm9wZXJ0eS5jYWxsKG1vZCwgaykpIHJlc3VsdFtrXSA9IG1vZFtrXTtcclxuICAgIHJlc3VsdC5kZWZhdWx0ID0gbW9kO1xyXG4gICAgcmV0dXJuIHJlc3VsdDtcclxufVxyXG5cclxuZXhwb3J0IGZ1bmN0aW9uIF9faW1wb3J0RGVmYXVsdChtb2QpIHtcclxuICAgIHJldHVybiAobW9kICYmIG1vZC5fX2VzTW9kdWxlKSA/IG1vZCA6IHsgZGVmYXVsdDogbW9kIH07XHJcbn1cclxuIiwiaW1wb3J0IHsgUG9wdXBDb25maWdPcHRpb25zIH0gZnJvbSAnLi9nbG9iYWwnO1xuXG4vKipcbiAqIEBpZ25vcmVcbiAqL1xuZXhwb3J0IGNvbnN0IERFRkFVTFRfQVVUSE9SSVpFX1RJTUVPVVRfSU5fU0VDT05EUyA9IDYwO1xuXG4vKipcbiAqIEBpZ25vcmVcbiAqL1xuZXhwb3J0IGNvbnN0IERFRkFVTFRfUE9QVVBfQ09ORklHX09QVElPTlM6IFBvcHVwQ29uZmlnT3B0aW9ucyA9IHtcbiAgdGltZW91dEluU2Vjb25kczogREVGQVVMVF9BVVRIT1JJWkVfVElNRU9VVF9JTl9TRUNPTkRTXG59O1xuXG4vKipcbiAqIEBpZ25vcmVcbiAqL1xuZXhwb3J0IGNvbnN0IERFRkFVTFRfU0lMRU5UX1RPS0VOX1JFVFJZX0NPVU5UID0gMztcblxuLyoqXG4gKiBAaWdub3JlXG4gKi9cbmV4cG9ydCBjb25zdCBDTEVBTlVQX0lGUkFNRV9USU1FT1VUX0lOX1NFQ09ORFMgPSAyO1xuXG4vKipcbiAqIEBpZ25vcmVcbiAqL1xuZXhwb3J0IGNvbnN0IERFRkFVTFRfRkVUQ0hfVElNRU9VVF9NUyA9IDEwMDAwO1xuXG5leHBvcnQgY29uc3QgQ0FDSEVfTE9DQVRJT05fTUVNT1JZID0gJ21lbW9yeSc7XG5leHBvcnQgY29uc3QgQ0FDSEVfTE9DQVRJT05fTE9DQUxfU1RPUkFHRSA9ICdsb2NhbHN0b3JhZ2UnO1xuZXhwb3J0IGNvbnN0IE1JU1NJTkdfUkVGUkVTSF9UT0tFTl9FUlJPUl9NRVNTQUdFID1cbiAgJ1RoZSB3ZWIgd29ya2VyIGlzIG1pc3NpbmcgdGhlIHJlZnJlc2ggdG9rZW4nO1xuXG4vKipcbiAqIEBpZ25vcmVcbiAqL1xuZXhwb3J0IGNvbnN0IERFRkFVTFRfU0NPUEUgPSAnb3BlbmlkIHByb2ZpbGUgZW1haWwnO1xuXG4vKipcbiAqIEEgbGlzdCBvZiBlcnJvcnMgdGhhdCBjYW4gYmUgaXNzdWVkIGJ5IHRoZSBhdXRob3JpemF0aW9uIHNlcnZlciB3aGljaCB0aGVcbiAqIHVzZXIgY2FuIHJlY292ZXIgZnJvbSBieSBzaWduaW5nIGluIGludGVyYWN0aXZlbHkuXG4gKiBodHRwczovL29wZW5pZC5uZXQvc3BlY3Mvb3BlbmlkLWNvbm5lY3QtY29yZS0xXzAuaHRtbCNBdXRoRXJyb3JcbiAqIEBpZ25vcmVcbiAqL1xuZXhwb3J0IGNvbnN0IFJFQ09WRVJBQkxFX0VSUk9SUyA9IFtcbiAgJ2xvZ2luX3JlcXVpcmVkJyxcbiAgJ2NvbnNlbnRfcmVxdWlyZWQnLFxuICAnaW50ZXJhY3Rpb25fcmVxdWlyZWQnLFxuICAnYWNjb3VudF9zZWxlY3Rpb25fcmVxdWlyZWQnLFxuICAvLyBTdHJpY3RseSBzcGVha2luZyB0aGUgdXNlciBjYW4ndCByZWNvdmVyIGZyb20gYGFjY2Vzc19kZW5pZWRgIC0gYnV0IHRoZXlcbiAgLy8gY2FuIGdldCBtb3JlIGluZm9ybWF0aW9uIGFib3V0IHRoZWlyIGFjY2VzcyBiZWluZyBkZW5pZWQgYnkgbG9nZ2luZyBpblxuICAvLyBpbnRlcmFjdGl2ZWx5LlxuICAnYWNjZXNzX2RlbmllZCdcbl07XG5cbi8qKlxuICogQGlnbm9yZVxuICovXG5leHBvcnQgY29uc3QgREVGQVVMVF9TRVNTSU9OX0NIRUNLX0VYUElSWV9EQVlTID0gMTtcbiIsImltcG9ydCB7IE1JU1NJTkdfUkVGUkVTSF9UT0tFTl9FUlJPUl9NRVNTQUdFIH0gZnJvbSAnLi9jb25zdGFudHMnO1xuXG5sZXQgcmVmcmVzaFRva2VucyA9IHt9O1xuXG5jb25zdCBjYWNoZUtleSA9IChhdWRpZW5jZSwgc2NvcGUpID0+IGAke2F1ZGllbmNlfXwke3Njb3BlfWA7XG5cbmNvbnN0IGdldFJlZnJlc2hUb2tlbiA9IChhdWRpZW5jZSwgc2NvcGUpID0+XG4gIHJlZnJlc2hUb2tlbnNbY2FjaGVLZXkoYXVkaWVuY2UsIHNjb3BlKV07XG5cbmNvbnN0IHNldFJlZnJlc2hUb2tlbiA9IChyZWZyZXNoVG9rZW4sIGF1ZGllbmNlLCBzY29wZSkgPT5cbiAgKHJlZnJlc2hUb2tlbnNbY2FjaGVLZXkoYXVkaWVuY2UsIHNjb3BlKV0gPSByZWZyZXNoVG9rZW4pO1xuXG5jb25zdCBkZWxldGVSZWZyZXNoVG9rZW4gPSAoYXVkaWVuY2UsIHNjb3BlKSA9PlxuICBkZWxldGUgcmVmcmVzaFRva2Vuc1tjYWNoZUtleShhdWRpZW5jZSwgc2NvcGUpXTtcblxuY29uc3Qgd2FpdDogYW55ID0gdGltZSA9PiBuZXcgUHJvbWlzZShyZXNvbHZlID0+IHNldFRpbWVvdXQocmVzb2x2ZSwgdGltZSkpO1xuXG5jb25zdCBtZXNzYWdlSGFuZGxlciA9IGFzeW5jICh7XG4gIGRhdGE6IHsgdXJsLCB0aW1lb3V0LCBhdWRpZW5jZSwgc2NvcGUsIC4uLm9wdHMgfSxcbiAgcG9ydHM6IFtwb3J0XVxufSkgPT4ge1xuICBsZXQganNvbjtcbiAgdHJ5IHtcbiAgICBjb25zdCBib2R5ID0gSlNPTi5wYXJzZShvcHRzLmJvZHkpO1xuICAgIGlmICghYm9keS5yZWZyZXNoX3Rva2VuICYmIGJvZHkuZ3JhbnRfdHlwZSA9PT0gJ3JlZnJlc2hfdG9rZW4nKSB7XG4gICAgICBjb25zdCByZWZyZXNoVG9rZW4gPSBnZXRSZWZyZXNoVG9rZW4oYXVkaWVuY2UsIHNjb3BlKTtcbiAgICAgIGlmICghcmVmcmVzaFRva2VuKSB7XG4gICAgICAgIHRocm93IG5ldyBFcnJvcihNSVNTSU5HX1JFRlJFU0hfVE9LRU5fRVJST1JfTUVTU0FHRSk7XG4gICAgICB9XG4gICAgICBvcHRzLmJvZHkgPSBKU09OLnN0cmluZ2lmeSh7IC4uLmJvZHksIHJlZnJlc2hfdG9rZW46IHJlZnJlc2hUb2tlbiB9KTtcbiAgICB9XG5cbiAgICBjb25zdCBhYm9ydENvbnRyb2xsZXIgPSBuZXcgQWJvcnRDb250cm9sbGVyKCk7XG4gICAgY29uc3QgeyBzaWduYWwgfSA9IGFib3J0Q29udHJvbGxlcjtcblxuICAgIGxldCByZXNwb25zZTtcbiAgICB0cnkge1xuICAgICAgcmVzcG9uc2UgPSBhd2FpdCBQcm9taXNlLnJhY2UoW1xuICAgICAgICB3YWl0KHRpbWVvdXQpLFxuICAgICAgICBmZXRjaCh1cmwsIHsgLi4ub3B0cywgc2lnbmFsIH0pXG4gICAgICBdKTtcbiAgICB9IGNhdGNoIChlcnJvcikge1xuICAgICAgLy8gZmV0Y2ggZXJyb3IsIHJlamVjdCBgc2VuZE1lc3NhZ2VgIHVzaW5nIGBlcnJvcmAga2V5IHNvIHRoYXQgd2UgcmV0cnkuXG4gICAgICBwb3J0LnBvc3RNZXNzYWdlKHtcbiAgICAgICAgZXJyb3I6IGVycm9yLm1lc3NhZ2VcbiAgICAgIH0pO1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIGlmICghcmVzcG9uc2UpIHtcbiAgICAgIC8vIElmIHRoZSByZXF1ZXN0IHRpbWVzIG91dCwgYWJvcnQgaXQgYW5kIGxldCBgZmV0Y2hXaXRoVGltZW91dGAgcmFpc2UgdGhlIGVycm9yLlxuICAgICAgYWJvcnRDb250cm9sbGVyLmFib3J0KCk7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAganNvbiA9IGF3YWl0IHJlc3BvbnNlLmpzb24oKTtcblxuICAgIGlmIChqc29uLnJlZnJlc2hfdG9rZW4pIHtcbiAgICAgIHNldFJlZnJlc2hUb2tlbihqc29uLnJlZnJlc2hfdG9rZW4sIGF1ZGllbmNlLCBzY29wZSk7XG4gICAgICBkZWxldGUganNvbi5yZWZyZXNoX3Rva2VuO1xuICAgIH0gZWxzZSB7XG4gICAgICBkZWxldGVSZWZyZXNoVG9rZW4oYXVkaWVuY2UsIHNjb3BlKTtcbiAgICB9XG5cbiAgICBwb3J0LnBvc3RNZXNzYWdlKHtcbiAgICAgIG9rOiByZXNwb25zZS5vayxcbiAgICAgIGpzb25cbiAgICB9KTtcbiAgfSBjYXRjaCAoZXJyb3IpIHtcbiAgICBwb3J0LnBvc3RNZXNzYWdlKHtcbiAgICAgIG9rOiBmYWxzZSxcbiAgICAgIGpzb246IHtcbiAgICAgICAgZXJyb3JfZGVzY3JpcHRpb246IGVycm9yLm1lc3NhZ2VcbiAgICAgIH1cbiAgICB9KTtcbiAgfVxufTtcblxuLy8gRG9uJ3QgcnVuIGBhZGRFdmVudExpc3RlbmVyYCBpbiBvdXIgdGVzdHMgKHRoaXMgaXMgcmVwbGFjZWQgaW4gcm9sbHVwKVxuLyogaXN0YW5idWwgaWdub3JlIGVsc2UgICovXG5pZiAocHJvY2Vzcy5lbnYuTk9ERV9FTlYgPT09ICd0ZXN0Jykge1xuICBtb2R1bGUuZXhwb3J0cyA9IHsgbWVzc2FnZUhhbmRsZXIgfTtcbn0gZWxzZSB7XG4gIC8vIEB0cy1pZ25vcmVcbiAgYWRkRXZlbnRMaXN0ZW5lcignbWVzc2FnZScsIG1lc3NhZ2VIYW5kbGVyKTtcbn1cbiJdLCJuYW1lcyI6WyJfX2Fzc2lnbiIsIk9iamVjdCIsImFzc2lnbiIsInQiLCJzIiwiaSIsIm4iLCJhcmd1bWVudHMiLCJsZW5ndGgiLCJwIiwicHJvdG90eXBlIiwiaGFzT3duUHJvcGVydHkiLCJjYWxsIiwiYXBwbHkiLCJ0aGlzIiwiX19nZW5lcmF0b3IiLCJ0aGlzQXJnIiwiYm9keSIsImYiLCJ5IiwiZyIsIl8iLCJsYWJlbCIsInNlbnQiLCJ0cnlzIiwib3BzIiwibmV4dCIsInZlcmIiLCJ0aHJvdyIsInJldHVybiIsIlN5bWJvbCIsIml0ZXJhdG9yIiwidiIsIm9wIiwiVHlwZUVycm9yIiwiZG9uZSIsInZhbHVlIiwicG9wIiwicHVzaCIsImUiLCJzdGVwIiwicmVmcmVzaFRva2VucyIsImNhY2hlS2V5IiwiYXVkaWVuY2UiLCJzY29wZSIsImFkZEV2ZW50TGlzdGVuZXIiLCJfYSIsIl9hcmd1bWVudHMiLCJQIiwiZ2VuZXJhdG9yIiwiX2IiLCJ1cmwiLCJ0aW1lb3V0Iiwib3B0cyIsImluZGV4T2YiLCJnZXRPd25Qcm9wZXJ0eVN5bWJvbHMiLCJwcm9wZXJ0eUlzRW51bWVyYWJsZSIsInBvcnQiLCJKU09OIiwicGFyc2UiLCJyZWZyZXNoX3Rva2VuIiwiZ3JhbnRfdHlwZSIsInJlZnJlc2hUb2tlbiIsImdldFJlZnJlc2hUb2tlbiIsIkVycm9yIiwic3RyaW5naWZ5IiwiYWJvcnRDb250cm9sbGVyIiwiQWJvcnRDb250cm9sbGVyIiwic2lnbmFsIiwicmVzcG9uc2UiLCJQcm9taXNlIiwicmFjZSIsInRpbWUiLCJyZXNvbHZlIiwic2V0VGltZW91dCIsImZldGNoIiwiX2MiLCJwb3N0TWVzc2FnZSIsImVycm9yIiwiZXJyb3JfMSIsIm1lc3NhZ2UiLCJqc29uIiwiYWJvcnQiLCJzZXRSZWZyZXNoVG9rZW4iLCJkZWxldGVSZWZyZXNoVG9rZW4iLCJvayIsImVycm9yX2Rlc2NyaXB0aW9uIiwiZXJyb3JfMiIsInJlamVjdCIsImZ1bGZpbGxlZCIsInJlamVjdGVkIiwicmVzdWx0IiwidGhlbiJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7b0ZBNkJPLElBQUlBLEVBQVcsV0FRbEIsT0FQQUEsRUFBV0MsT0FBT0MsUUFBVSxTQUFrQkMsR0FDMUMsSUFBSyxJQUFJQyxFQUFHQyxFQUFJLEVBQUdDLEVBQUlDLFVBQVVDLE9BQVFILEVBQUlDLEVBQUdELElBRTVDLElBQUssSUFBSUksS0FEVEwsRUFBSUcsVUFBVUYsR0FDT0osT0FBT1MsVUFBVUMsZUFBZUMsS0FBS1IsRUFBR0ssS0FBSU4sRUFBRU0sR0FBS0wsRUFBRUssSUFFOUUsT0FBT04sSUFFS1UsTUFBTUMsS0FBTVAsWUF1Q3pCLFNBQVNRLEVBQVlDLEVBQVNDLEdBQ2pDLElBQXNHQyxFQUFHQyxFQUFHaEIsRUFBR2lCLEVBQTNHQyxFQUFJLENBQUVDLE1BQU8sRUFBR0MsS0FBTSxXQUFhLEdBQVcsRUFBUHBCLEVBQUUsR0FBUSxNQUFNQSxFQUFFLEdBQUksT0FBT0EsRUFBRSxJQUFPcUIsS0FBTSxHQUFJQyxJQUFLLElBQ2hHLE9BQU9MLEVBQUksQ0FBRU0sS0FBTUMsRUFBSyxHQUFJQyxNQUFTRCxFQUFLLEdBQUlFLE9BQVVGLEVBQUssSUFBd0IsbUJBQVhHLFNBQTBCVixFQUFFVSxPQUFPQyxVQUFZLFdBQWEsT0FBT2pCLE9BQVVNLEVBQ3ZKLFNBQVNPLEVBQUtyQixHQUFLLE9BQU8sU0FBVTBCLEdBQUssT0FDekMsU0FBY0MsR0FDVixHQUFJZixFQUFHLE1BQU0sSUFBSWdCLFVBQVUsbUNBQzNCLEtBQU9iLE9BQ0gsR0FBSUgsRUFBSSxFQUFHQyxJQUFNaEIsRUFBWSxFQUFSOEIsRUFBRyxHQUFTZCxFQUFVLE9BQUljLEVBQUcsR0FBS2QsRUFBUyxTQUFPaEIsRUFBSWdCLEVBQVUsU0FBTWhCLEVBQUVTLEtBQUtPLEdBQUksR0FBS0EsRUFBRU8sU0FBV3ZCLEVBQUlBLEVBQUVTLEtBQUtPLEVBQUdjLEVBQUcsS0FBS0UsS0FBTSxPQUFPaEMsRUFFM0osT0FESWdCLEVBQUksRUFBR2hCLElBQUc4QixFQUFLLENBQVMsRUFBUkEsRUFBRyxHQUFROUIsRUFBRWlDLFFBQ3pCSCxFQUFHLElBQ1AsS0FBSyxFQUFHLEtBQUssRUFBRzlCLEVBQUk4QixFQUFJLE1BQ3hCLEtBQUssRUFBYyxPQUFYWixFQUFFQyxRQUFnQixDQUFFYyxNQUFPSCxFQUFHLEdBQUlFLE1BQU0sR0FDaEQsS0FBSyxFQUFHZCxFQUFFQyxRQUFTSCxFQUFJYyxFQUFHLEdBQUlBLEVBQUssQ0FBQyxHQUFJLFNBQ3hDLEtBQUssRUFBR0EsRUFBS1osRUFBRUksSUFBSVksTUFBT2hCLEVBQUVHLEtBQUthLE1BQU8sU0FDeEMsUUFDSSxLQUFNbEMsRUFBSWtCLEVBQUVHLE1BQU1yQixFQUFJQSxFQUFFSyxPQUFTLEdBQUtMLEVBQUVBLEVBQUVLLE9BQVMsS0FBa0IsSUFBVnlCLEVBQUcsSUFBc0IsSUFBVkEsRUFBRyxJQUFXLENBQUVaLEVBQUksRUFBRyxTQUNqRyxHQUFjLElBQVZZLEVBQUcsTUFBYzlCLEdBQU04QixFQUFHLEdBQUs5QixFQUFFLElBQU04QixFQUFHLEdBQUs5QixFQUFFLElBQU0sQ0FBRWtCLEVBQUVDLE1BQVFXLEVBQUcsR0FBSSxNQUM5RSxHQUFjLElBQVZBLEVBQUcsSUFBWVosRUFBRUMsTUFBUW5CLEVBQUUsR0FBSSxDQUFFa0IsRUFBRUMsTUFBUW5CLEVBQUUsR0FBSUEsRUFBSThCLEVBQUksTUFDN0QsR0FBSTlCLEdBQUtrQixFQUFFQyxNQUFRbkIsRUFBRSxHQUFJLENBQUVrQixFQUFFQyxNQUFRbkIsRUFBRSxHQUFJa0IsRUFBRUksSUFBSWEsS0FBS0wsR0FBSyxNQUN2RDlCLEVBQUUsSUFBSWtCLEVBQUVJLElBQUlZLE1BQ2hCaEIsRUFBRUcsS0FBS2EsTUFBTyxTQUV0QkosRUFBS2hCLEVBQUtMLEtBQUtJLEVBQVNLLEdBQzFCLE1BQU9rQixHQUFLTixFQUFLLENBQUMsRUFBR00sR0FBSXBCLEVBQUksVUFBZUQsRUFBSWYsRUFBSSxFQUN0RCxHQUFZLEVBQVI4QixFQUFHLEdBQVEsTUFBTUEsRUFBRyxHQUFJLE1BQU8sQ0FBRUcsTUFBT0gsRUFBRyxHQUFLQSxFQUFHLFFBQUssRUFBUUUsTUFBTSxHQXJCOUJLLENBQUssQ0FBQ2xDLEVBQUcwQixNQ2hEdEQsSUM3QkhTLEVBQWdCLEdBRWRDLEVBQVcsU0FBQ0MsRUFBVUMsR0FBVSxPQUFHRCxNQUFZQyxHQWdGbkRDLGlCQUFpQixXQW5FSSxTQUFPQyxxQkZrREo5QixFQUFTK0IsRUFBWUMsRUFBR0MsU0FBeEJqQyxTQUFTK0IsU0FBZUUsbUZFakRoREMsU0FBUUMsUUFBS0MsWUFBU1QsYUFBVUMsVUFBVVMsRUZzQnJDLFNBQWdCakQsRUFBR21DLEdBQ3RCLElBQUlwQyxFQUFJLEdBQ1IsSUFBSyxJQUFJTSxLQUFLTCxFQUFPSCxPQUFPUyxVQUFVQyxlQUFlQyxLQUFLUixFQUFHSyxJQUFNOEIsRUFBRWUsUUFBUTdDLEdBQUssSUFDOUVOLEVBQUVNLEdBQUtMLEVBQUVLLElBQ2IsR0FBUyxNQUFMTCxHQUFxRCxtQkFBakNILE9BQU9zRCxzQkFDdEIsQ0FBQSxJQUFJbEQsRUFBSSxFQUFiLElBQWdCSSxFQUFJUixPQUFPc0Qsc0JBQXNCbkQsR0FBSUMsRUFBSUksRUFBRUQsT0FBUUgsSUFDM0RrQyxFQUFFZSxRQUFRN0MsRUFBRUosSUFBTSxHQUFLSixPQUFPUyxVQUFVOEMscUJBQXFCNUMsS0FBS1IsRUFBR0ssRUFBRUosTUFDdkVGLEVBQUVNLEVBQUVKLElBQU1ELEVBQUVLLEVBQUVKLEtBRTFCLE9BQU9GLEtFL0JILHNDQUNFc0QsOEJBS04sMkJBRE14QyxFQUFPeUMsS0FBS0MsTUFBTU4sRUFBS3BDLE9BQ25CMkMsZUFBcUMsa0JBQXBCM0MsRUFBSzRDLFdBQWdDLENBRTlELEtBRE1DLEVBbkJZLFNBQUNuQixFQUFVQyxHQUNqQyxPQUFBSCxFQUFjQyxFQUFTQyxFQUFVQyxJQWtCUm1CLENBQWdCcEIsRUFBVUMsSUFFN0MsTUFBTSxJQUFJb0IsTURLaEIsK0NDSElYLEVBQUtwQyxLQUFPeUMsS0FBS08saUJBQWVoRCxJQUFNMkMsY0FBZUUsS0FHakRJLEVBQWtCLElBQUlDLGdCQUNwQkMsRUFBV0YsU0FFZkcsMEJBRVMsZ0NBQU1DLFFBQVFDLEtBQUssRUF0QmxCQyxFQXVCTHBCLEVBdkJhLElBQUlrQixTQUFRLFNBQUFHLEdBQVcsT0FBQUMsV0FBV0QsRUFBU0QsT0F3QjdERyxNQUFNeEIsU0FBVUUsSUFBTWUsNkJBRnhCQyxFQUFXTyxzQkFTWCxrQkFIQW5CLEVBQUtvQixZQUFZLENBQ2ZDLE1BQU9DLEVBQU1DLHFCQUtqQixPQUFLWCxLQU1RQSxFQUFTWSxTQUpwQmYsRUFBZ0JnQiwyQkFJbEJELEVBQU9MLFVBRUVoQixlQWhEVyxTQUFDRSxFQUFjbkIsRUFBVUMsR0FDOUNILEVBQWNDLEVBQVNDLEVBQVVDLElBQVVrQixFQWdEeENxQixDQUFnQkYsRUFBS3JCLGNBQWVqQixFQUFVQyxVQUN2Q3FDLEVBQUtyQixlQS9DUyxTQUFDakIsRUFBVUMsVUFDN0JILEVBQWNDLEVBQVNDLEVBQVVDLElBZ0RwQ3dDLENBQW1CekMsRUFBVUMsR0FHL0JhLEVBQUtvQixZQUFZLENBQ2ZRLEdBQUloQixFQUFTZ0IsR0FDYkosd0NBR0Z4QixFQUFLb0IsWUFBWSxDQUNmUSxJQUFJLEVBQ0pKLEtBQU0sQ0FDSkssa0JBQW1CQyxFQUFNUCxrQ0F6RGYsSUFBQVIsTUZxRFAsS0FEb0N4QixZQUN6QkEsRUFBSXNCLFdBQVUsU0FBVUcsRUFBU2UsR0FDL0MsU0FBU0MsRUFBVXJELEdBQVMsSUFBTUksRUFBS1MsRUFBVXZCLEtBQUtVLElBQVcsTUFBT0csR0FBS2lELEVBQU9qRCxJQUNwRixTQUFTbUQsRUFBU3RELEdBQVMsSUFBTUksRUFBS1MsRUFBaUIsTUFBRWIsSUFBVyxNQUFPRyxHQUFLaUQsRUFBT2pELElBQ3ZGLFNBQVNDLEVBQUttRCxHQUFVQSxFQUFPeEQsS0FBT3NDLEVBQVFrQixFQUFPdkQsT0FBUyxJQUFJWSxHQUFFLFNBQVV5QixHQUFXQSxFQUFRa0IsRUFBT3ZELFVBQVd3RCxLQUFLSCxFQUFXQyxHQUNuSWxELEdBQU1TLEVBQVlBLEVBQVVwQyxNQUFNRyxFQUFTK0IsR0FBYyxLQUFLckIifQ==", lo = !1, function (e) {
  return go = go || so(ao, uo, lo), new Worker(go, e);
}),
    Io = new Fr(),
    po = {
  memory: function memory() {
    return new _r().enclosedCache;
  },
  localstorage: function localstorage() {
    return new Pr();
  }
},
    ho = function ho(e) {
  return po[e];
},
    yo = function yo() {
  return !(/Trident.*rv:11\.0/.test(navigator.userAgent) || /AppleWebKit.*Version\/10/.test(navigator.userAgent) || /AppleWebKit.*Version\/11/.test(navigator.userAgent) || /AppleWebKit.*Version\/12\.0/.test(navigator.userAgent));
},
    bo = function () {
  function e(e) {
    var t, n;
    if (this.options = e, "undefined" != typeof window && function () {
      if (!Ar()) throw new Error("For security reasons, `window.crypto` is required to run `auth0-spa-js`.");
      if (void 0 === Rr()) throw new Error("\n      auth0-spa-js must run on a secure origin. See https://github.com/auth0/auth0-spa-js/blob/master/FAQ.md#why-do-i-get-auth0-spa-js-must-run-on-a-secure-origin for more information.\n    ");
    }(), this.cacheLocation = e.cacheLocation || "memory", this.cookieStorage = !1 === e.legacySameSiteCookie ? ro : oo, this.sessionCheckExpiryDays = e.sessionCheckExpiryDays || 1, !ho(this.cacheLocation)) throw new Error('Invalid cache location "' + this.cacheLocation + '"');
    var r,
        o,
        c = e.useCookiesForTransactions ? this.cookieStorage : co;
    this.cache = ho(this.cacheLocation)(), this.scope = this.options.scope, this.transactionManager = new Dr(c), this.domainUrl = "https://" + this.options.domain, this.tokenIssuer = (r = this.options.issuer, o = this.domainUrl, r ? r.startsWith("https://") ? r : "https://" + r + "/" : o + "/"), this.defaultScope = Or("openid", void 0 !== (null === (n = null === (t = this.options) || void 0 === t ? void 0 : t.advancedOptions) || void 0 === n ? void 0 : n.defaultScope) ? this.options.advancedOptions.defaultScope : "openid profile email"), this.options.useRefreshTokens && (this.scope = Or(this.scope, "offline_access")), "undefined" != typeof window && window.Worker && this.options.useRefreshTokens && "memory" === this.cacheLocation && yo() && (this.worker = new fo()), this.customOptions = function (e) {
      return e.advancedOptions, e.audience, e.auth0Client, e.authorizeTimeoutInSeconds, e.cacheLocation, e.client_id, e.domain, e.issuer, e.leeway, e.max_age, e.redirect_uri, e.scope, e.useRefreshTokens, i(e, ["advancedOptions", "audience", "auth0Client", "authorizeTimeoutInSeconds", "cacheLocation", "client_id", "domain", "issuer", "leeway", "max_age", "redirect_uri", "scope", "useRefreshTokens"]);
    }(e);
  }

  return e.prototype._url = function (e) {
    var t = encodeURIComponent(btoa(JSON.stringify(this.options.auth0Client || {
      name: "auth0-spa-js",
      version: "1.13.1"
    })));
    return "" + this.domainUrl + e + "&auth0Client=" + t;
  }, e.prototype._getParams = function (e, t, r, o, c) {
    var s = this.options,
        a = (s.domain, s.leeway, s.useRefreshTokens, s.auth0Client, s.cacheLocation, s.advancedOptions, i(s, ["domain", "leeway", "useRefreshTokens", "auth0Client", "cacheLocation", "advancedOptions"]));
    return _n2(_n2(_n2({}, a), e), {
      scope: Or(this.defaultScope, this.scope, e.scope),
      response_type: "code",
      response_mode: "query",
      state: t,
      nonce: r,
      redirect_uri: c || this.options.redirect_uri,
      code_challenge: o,
      code_challenge_method: "S256"
    });
  }, e.prototype._authorizeUrl = function (e) {
    return this._url("/authorize?" + Lr(e));
  }, e.prototype._verifyIdToken = function (e, t) {
    return $r({
      iss: this.tokenIssuer,
      aud: this.options.client_id,
      id_token: e,
      nonce: t,
      leeway: this.options.leeway,
      max_age: this._parseNumber(this.options.max_age)
    });
  }, e.prototype._parseNumber = function (e) {
    return "string" != typeof e ? e : parseInt(e, 10) || void 0;
  }, e.prototype.buildAuthorizeUrl = function (e) {
    return void 0 === e && (e = {}), r(this, void 0, void 0, function () {
      var t, n, r, c, s, a, u, l, d, g, f;
      return o(this, function (o) {
        switch (o.label) {
          case 0:
            return t = e.redirect_uri, n = e.appState, r = i(e, ["redirect_uri", "appState"]), c = Qr(Wr()), s = Qr(Wr()), a = Wr(), [4, Jr(a)];

          case 1:
            return u = o.sent(), l = kr(u), d = e.fragment ? "#" + e.fragment : "", g = this._getParams(r, c, s, l, t), f = this._authorizeUrl(g), this.transactionManager.create({
              nonce: s,
              code_verifier: a,
              appState: n,
              scope: g.scope,
              audience: g.audience || "default",
              redirect_uri: g.redirect_uri
            }), [2, f + d];
        }
      });
    });
  }, e.prototype.loginWithPopup = function (e, t) {
    return void 0 === e && (e = {}), void 0 === t && (t = {}), r(this, void 0, void 0, function () {
      var r, c, s, a, u, l, d, g, f, I, p, h;
      return o(this, function (o) {
        switch (o.label) {
          case 0:
            return r = i(e, []), c = Qr(Wr()), s = Qr(Wr()), a = Wr(), [4, Jr(a)];

          case 1:
            return u = o.sent(), l = kr(u), d = this._getParams(r, c, s, l, this.options.redirect_uri || window.location.origin), g = this._authorizeUrl(_n2(_n2({}, d), {
              response_mode: "web_message"
            })), [4, xr(g, _n2(_n2({}, t), {
              timeoutInSeconds: t.timeoutInSeconds || this.options.authorizeTimeoutInSeconds || 60
            }))];

          case 2:
            if (f = o.sent(), c !== f.state) throw new Error("Invalid state");
            return [4, Nr({
              audience: d.audience,
              scope: d.scope,
              baseUrl: this.domainUrl,
              client_id: this.options.client_id,
              code_verifier: a,
              code: f.code,
              grant_type: "authorization_code",
              redirect_uri: d.redirect_uri
            }, this.worker)];

          case 3:
            return I = o.sent(), p = this._verifyIdToken(I.id_token, s), h = _n2(_n2({}, I), {
              decodedToken: p,
              scope: d.scope,
              audience: d.audience || "default",
              client_id: this.options.client_id
            }), this.cache.save(h), this.cookieStorage.save("auth0.is.authenticated", !0, {
              daysUntilExpire: this.sessionCheckExpiryDays
            }), [2];
        }
      });
    });
  }, e.prototype.getUser = function (e) {
    return void 0 === e && (e = {}), r(this, void 0, void 0, function () {
      var t, n, i;
      return o(this, function (r) {
        return t = e.audience || this.options.audience || "default", n = Or(this.defaultScope, this.scope, e.scope), [2, (i = this.cache.get({
          client_id: this.options.client_id,
          audience: t,
          scope: n
        })) && i.decodedToken && i.decodedToken.user];
      });
    });
  }, e.prototype.getIdTokenClaims = function (e) {
    return void 0 === e && (e = {}), r(this, void 0, void 0, function () {
      var t, n, i;
      return o(this, function (r) {
        return t = e.audience || this.options.audience || "default", n = Or(this.defaultScope, this.scope, e.scope), [2, (i = this.cache.get({
          client_id: this.options.client_id,
          audience: t,
          scope: n
        })) && i.decodedToken && i.decodedToken.claims];
      });
    });
  }, e.prototype.loginWithRedirect = function (e) {
    return void 0 === e && (e = {}), r(this, void 0, void 0, function () {
      var t;
      return o(this, function (n) {
        switch (n.label) {
          case 0:
            return [4, this.buildAuthorizeUrl(e)];

          case 1:
            return t = n.sent(), window.location.assign(t), [2];
        }
      });
    });
  }, e.prototype.handleRedirectCallback = function (e) {
    return void 0 === e && (e = window.location.href), r(this, void 0, void 0, function () {
      var t, i, r, c, s, a, u, l, d, g, f;
      return o(this, function (o) {
        switch (o.label) {
          case 0:
            if (0 === (t = e.split("?").slice(1)).length) throw new Error("There are no query params available for parsing.");
            if (i = function (e) {
              e.indexOf("#") > -1 && (e = e.substr(0, e.indexOf("#")));
              var t = e.split("&"),
                  i = {};
              return t.forEach(function (e) {
                var t = e.split("="),
                    n = t[0],
                    r = t[1];
                i[n] = decodeURIComponent(r);
              }), _n2(_n2({}, i), {
                expires_in: parseInt(i.expires_in)
              });
            }(t.join("")), r = i.state, c = i.code, s = i.error, a = i.error_description, !(u = this.transactionManager.get()) || !u.code_verifier || !u.nonce) throw new Error("Invalid state");
            if (s) throw this.transactionManager.remove(), new Zr(s, a, r, u.appState);
            return this.transactionManager.remove(), l = {
              audience: u.audience,
              scope: u.scope,
              baseUrl: this.domainUrl,
              client_id: this.options.client_id,
              code_verifier: u.code_verifier,
              grant_type: "authorization_code",
              code: c
            }, void 0 !== u.redirect_uri && (l.redirect_uri = u.redirect_uri), [4, Nr(l, this.worker)];

          case 1:
            return d = o.sent(), g = this._verifyIdToken(d.id_token, u.nonce), f = _n2(_n2({}, d), {
              decodedToken: g,
              audience: u.audience,
              scope: u.scope,
              client_id: this.options.client_id
            }), this.cache.save(f), this.cookieStorage.save("auth0.is.authenticated", !0, {
              daysUntilExpire: this.sessionCheckExpiryDays
            }), [2, {
              appState: u.appState
            }];
        }
      });
    });
  }, e.prototype.checkSession = function (e) {
    return r(this, void 0, void 0, function () {
      var t;
      return o(this, function (n) {
        switch (n.label) {
          case 0:
            if (!this.cookieStorage.get("auth0.is.authenticated")) return [2];
            n.label = 1;

          case 1:
            return n.trys.push([1, 3,, 4]), [4, this.getTokenSilently(e)];

          case 2:
            return n.sent(), [3, 4];

          case 3:
            if (t = n.sent(), !Sr.includes(t.error)) throw t;
            return [3, 4];

          case 4:
            return [2];
        }
      });
    });
  }, e.prototype.getTokenSilently = function (e) {
    return void 0 === e && (e = {}), r(this, void 0, void 0, function () {
      var t,
          r,
          c,
          s,
          a,
          u,
          l,
          d = this;
      return o(this, function (o) {
        switch (o.label) {
          case 0:
            if (t = _n2(_n2({
              audience: this.options.audience,
              ignoreCache: !1
            }, e), {
              scope: Or(this.defaultScope, this.scope, e.scope)
            }), r = t.ignoreCache, c = i(t, ["ignoreCache"]), s = function s() {
              var e = d.cache.get({
                scope: c.scope,
                audience: c.audience || "default",
                client_id: d.options.client_id
              }, 60);
              return e && e.access_token;
            }, !r && (a = s())) return [2, a];
            o.label = 1;

          case 1:
            return o.trys.push([1, 7, 8, 10]), [4, Io.acquireLock("auth0.lock.getTokenSilently", 5e3)];

          case 2:
            return o.sent(), !r && (a = s()) ? [2, a] : this.options.useRefreshTokens ? [4, this._getTokenUsingRefreshToken(c)] : [3, 4];

          case 3:
            return l = o.sent(), [3, 6];

          case 4:
            return [4, this._getTokenFromIFrame(c)];

          case 5:
            l = o.sent(), o.label = 6;

          case 6:
            return u = l, this.cache.save(_n2({
              client_id: this.options.client_id
            }, u)), this.cookieStorage.save("auth0.is.authenticated", !0, {
              daysUntilExpire: this.sessionCheckExpiryDays
            }), [2, u.access_token];

          case 7:
            throw o.sent();

          case 8:
            return [4, Io.releaseLock("auth0.lock.getTokenSilently")];

          case 9:
            return o.sent(), [7];

          case 10:
            return [2];
        }
      });
    });
  }, e.prototype.getTokenWithPopup = function (e, t) {
    return void 0 === e && (e = {}), void 0 === t && (t = {}), r(this, void 0, void 0, function () {
      return o(this, function (i) {
        switch (i.label) {
          case 0:
            return e.audience = e.audience || this.options.audience, e.scope = Or(this.defaultScope, this.scope, e.scope), t = _n2(_n2({}, Ur), t), [4, this.loginWithPopup(e, t)];

          case 1:
            return i.sent(), [2, this.cache.get({
              scope: e.scope,
              audience: e.audience || "default",
              client_id: this.options.client_id
            }).access_token];
        }
      });
    });
  }, e.prototype.isAuthenticated = function () {
    return r(this, void 0, void 0, function () {
      return o(this, function (e) {
        switch (e.label) {
          case 0:
            return [4, this.getUser()];

          case 1:
            return [2, !!e.sent()];
        }
      });
    });
  }, e.prototype.buildLogoutUrl = function (e) {
    void 0 === e && (e = {}), null !== e.client_id ? e.client_id = e.client_id || this.options.client_id : delete e.client_id;
    var t = e.federated,
        n = i(e, ["federated"]),
        r = t ? "&federated" : "";
    return this._url("/v2/logout?" + Lr(n)) + r;
  }, e.prototype.logout = function (e) {
    void 0 === e && (e = {});
    var t = e.localOnly,
        n = i(e, ["localOnly"]);
    if (t && n.federated) throw new Error("It is invalid to set both the `federated` and `localOnly` options to `true`");

    if (this.cache.clear(), this.cookieStorage.remove("auth0.is.authenticated"), !t) {
      var r = this.buildLogoutUrl(n);
      window.location.assign(r);
    }
  }, e.prototype._getTokenFromIFrame = function (e) {
    return r(this, void 0, void 0, function () {
      var t, r, c, s, a, u, l, d, g, f, I, p, h, y;
      return o(this, function (o) {
        switch (o.label) {
          case 0:
            return t = Qr(Wr()), r = Qr(Wr()), c = Wr(), [4, Jr(c)];

          case 1:
            return s = o.sent(), a = kr(s), u = this._getParams(e, t, r, a, e.redirect_uri || this.options.redirect_uri || window.location.origin), l = this._authorizeUrl(_n2(_n2({}, u), {
              prompt: "none",
              response_mode: "web_message"
            })), d = e.timeoutInSeconds || this.options.authorizeTimeoutInSeconds, [4, Gr(l, this.domainUrl, d)];

          case 2:
            if (g = o.sent(), t !== g.state) throw new Error("Invalid state");
            return f = e.scope, I = e.audience, e.redirect_uri, e.ignoreCache, e.timeoutInSeconds, p = i(e, ["scope", "audience", "redirect_uri", "ignoreCache", "timeoutInSeconds"]), [4, Nr(_n2(_n2(_n2({}, this.customOptions), p), {
              scope: f,
              audience: I,
              baseUrl: this.domainUrl,
              client_id: this.options.client_id,
              code_verifier: c,
              code: g.code,
              grant_type: "authorization_code",
              redirect_uri: u.redirect_uri
            }), this.worker)];

          case 3:
            return h = o.sent(), y = this._verifyIdToken(h.id_token, r), [2, _n2(_n2({}, h), {
              decodedToken: y,
              scope: u.scope,
              audience: u.audience || "default"
            })];
        }
      });
    });
  }, e.prototype._getTokenUsingRefreshToken = function (e) {
    return r(this, void 0, void 0, function () {
      var t, r, c, s, a, u, l, d;
      return o(this, function (o) {
        switch (o.label) {
          case 0:
            return e.scope = Or(this.defaultScope, this.options.scope, e.scope), (t = this.cache.get({
              scope: e.scope,
              audience: e.audience || "default",
              client_id: this.options.client_id
            })) && t.refresh_token || this.worker ? [3, 2] : [4, this._getTokenFromIFrame(e)];

          case 1:
            return [2, o.sent()];

          case 2:
            r = e.redirect_uri || this.options.redirect_uri || window.location.origin, s = e.scope, a = e.audience, e.ignoreCache, e.timeoutInSeconds, u = i(e, ["scope", "audience", "ignoreCache", "timeoutInSeconds"]), o.label = 3;

          case 3:
            return o.trys.push([3, 5,, 8]), [4, Nr(_n2(_n2(_n2({}, this.customOptions), u), {
              audience: a,
              scope: s,
              baseUrl: this.domainUrl,
              client_id: this.options.client_id,
              grant_type: "refresh_token",
              refresh_token: t && t.refresh_token,
              redirect_uri: r
            }), this.worker)];

          case 4:
            return c = o.sent(), [3, 8];

          case 5:
            return "The web worker is missing the refresh token" !== (l = o.sent()).message ? [3, 7] : [4, this._getTokenFromIFrame(e)];

          case 6:
            return [2, o.sent()];

          case 7:
            throw l;

          case 8:
            return d = this._verifyIdToken(c.id_token), [2, _n2(_n2({}, c), {
              decodedToken: d,
              scope: e.scope,
              audience: e.audience || "default"
            })];
        }
      });
    });
  }, e;
}();

exports.Auth0Client = bo;

function mo(e) {
  return r(this, void 0, void 0, function () {
    var t;
    return o(this, function (n) {
      switch (n.label) {
        case 0:
          return [4, (t = new bo(e)).checkSession()];

        case 1:
          return n.sent(), [2, t];
      }
    });
  });
}

var _default = mo;
exports["default"] = _default;

}).call(this)}).call(this,typeof global !== "undefined" ? global : typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {},require("buffer").Buffer,require("timers").setImmediate)
},{"buffer":6,"timers":9}],5:[function(require,module,exports){
'use strict'

exports.byteLength = byteLength
exports.toByteArray = toByteArray
exports.fromByteArray = fromByteArray

var lookup = []
var revLookup = []
var Arr = typeof Uint8Array !== 'undefined' ? Uint8Array : Array

var code = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
for (var i = 0, len = code.length; i < len; ++i) {
  lookup[i] = code[i]
  revLookup[code.charCodeAt(i)] = i
}

// Support decoding URL-safe base64 strings, as Node.js does.
// See: https://en.wikipedia.org/wiki/Base64#URL_applications
revLookup['-'.charCodeAt(0)] = 62
revLookup['_'.charCodeAt(0)] = 63

function getLens (b64) {
  var len = b64.length

  if (len % 4 > 0) {
    throw new Error('Invalid string. Length must be a multiple of 4')
  }

  // Trim off extra bytes after placeholder bytes are found
  // See: https://github.com/beatgammit/base64-js/issues/42
  var validLen = b64.indexOf('=')
  if (validLen === -1) validLen = len

  var placeHoldersLen = validLen === len
    ? 0
    : 4 - (validLen % 4)

  return [validLen, placeHoldersLen]
}

// base64 is 4/3 + up to two characters of the original data
function byteLength (b64) {
  var lens = getLens(b64)
  var validLen = lens[0]
  var placeHoldersLen = lens[1]
  return ((validLen + placeHoldersLen) * 3 / 4) - placeHoldersLen
}

function _byteLength (b64, validLen, placeHoldersLen) {
  return ((validLen + placeHoldersLen) * 3 / 4) - placeHoldersLen
}

function toByteArray (b64) {
  var tmp
  var lens = getLens(b64)
  var validLen = lens[0]
  var placeHoldersLen = lens[1]

  var arr = new Arr(_byteLength(b64, validLen, placeHoldersLen))

  var curByte = 0

  // if there are placeholders, only get up to the last complete 4 chars
  var len = placeHoldersLen > 0
    ? validLen - 4
    : validLen

  var i
  for (i = 0; i < len; i += 4) {
    tmp =
      (revLookup[b64.charCodeAt(i)] << 18) |
      (revLookup[b64.charCodeAt(i + 1)] << 12) |
      (revLookup[b64.charCodeAt(i + 2)] << 6) |
      revLookup[b64.charCodeAt(i + 3)]
    arr[curByte++] = (tmp >> 16) & 0xFF
    arr[curByte++] = (tmp >> 8) & 0xFF
    arr[curByte++] = tmp & 0xFF
  }

  if (placeHoldersLen === 2) {
    tmp =
      (revLookup[b64.charCodeAt(i)] << 2) |
      (revLookup[b64.charCodeAt(i + 1)] >> 4)
    arr[curByte++] = tmp & 0xFF
  }

  if (placeHoldersLen === 1) {
    tmp =
      (revLookup[b64.charCodeAt(i)] << 10) |
      (revLookup[b64.charCodeAt(i + 1)] << 4) |
      (revLookup[b64.charCodeAt(i + 2)] >> 2)
    arr[curByte++] = (tmp >> 8) & 0xFF
    arr[curByte++] = tmp & 0xFF
  }

  return arr
}

function tripletToBase64 (num) {
  return lookup[num >> 18 & 0x3F] +
    lookup[num >> 12 & 0x3F] +
    lookup[num >> 6 & 0x3F] +
    lookup[num & 0x3F]
}

function encodeChunk (uint8, start, end) {
  var tmp
  var output = []
  for (var i = start; i < end; i += 3) {
    tmp =
      ((uint8[i] << 16) & 0xFF0000) +
      ((uint8[i + 1] << 8) & 0xFF00) +
      (uint8[i + 2] & 0xFF)
    output.push(tripletToBase64(tmp))
  }
  return output.join('')
}

function fromByteArray (uint8) {
  var tmp
  var len = uint8.length
  var extraBytes = len % 3 // if we have 1 byte left, pad 2 bytes
  var parts = []
  var maxChunkLength = 16383 // must be multiple of 3

  // go through the array every three bytes, we'll deal with trailing stuff later
  for (var i = 0, len2 = len - extraBytes; i < len2; i += maxChunkLength) {
    parts.push(encodeChunk(
      uint8, i, (i + maxChunkLength) > len2 ? len2 : (i + maxChunkLength)
    ))
  }

  // pad the end with zeros, but make sure to not forget the extra bytes
  if (extraBytes === 1) {
    tmp = uint8[len - 1]
    parts.push(
      lookup[tmp >> 2] +
      lookup[(tmp << 4) & 0x3F] +
      '=='
    )
  } else if (extraBytes === 2) {
    tmp = (uint8[len - 2] << 8) + uint8[len - 1]
    parts.push(
      lookup[tmp >> 10] +
      lookup[(tmp >> 4) & 0x3F] +
      lookup[(tmp << 2) & 0x3F] +
      '='
    )
  }

  return parts.join('')
}

},{}],6:[function(require,module,exports){
(function (Buffer){(function (){
/*!
 * The buffer module from node.js, for the browser.
 *
 * @author   Feross Aboukhadijeh <https://feross.org>
 * @license  MIT
 */
/* eslint-disable no-proto */

'use strict'

var base64 = require('base64-js')
var ieee754 = require('ieee754')

exports.Buffer = Buffer
exports.SlowBuffer = SlowBuffer
exports.INSPECT_MAX_BYTES = 50

var K_MAX_LENGTH = 0x7fffffff
exports.kMaxLength = K_MAX_LENGTH

/**
 * If `Buffer.TYPED_ARRAY_SUPPORT`:
 *   === true    Use Uint8Array implementation (fastest)
 *   === false   Print warning and recommend using `buffer` v4.x which has an Object
 *               implementation (most compatible, even IE6)
 *
 * Browsers that support typed arrays are IE 10+, Firefox 4+, Chrome 7+, Safari 5.1+,
 * Opera 11.6+, iOS 4.2+.
 *
 * We report that the browser does not support typed arrays if the are not subclassable
 * using __proto__. Firefox 4-29 lacks support for adding new properties to `Uint8Array`
 * (See: https://bugzilla.mozilla.org/show_bug.cgi?id=695438). IE 10 lacks support
 * for __proto__ and has a buggy typed array implementation.
 */
Buffer.TYPED_ARRAY_SUPPORT = typedArraySupport()

if (!Buffer.TYPED_ARRAY_SUPPORT && typeof console !== 'undefined' &&
    typeof console.error === 'function') {
  console.error(
    'This browser lacks typed array (Uint8Array) support which is required by ' +
    '`buffer` v5.x. Use `buffer` v4.x if you require old browser support.'
  )
}

function typedArraySupport () {
  // Can typed array instances can be augmented?
  try {
    var arr = new Uint8Array(1)
    arr.__proto__ = { __proto__: Uint8Array.prototype, foo: function () { return 42 } }
    return arr.foo() === 42
  } catch (e) {
    return false
  }
}

Object.defineProperty(Buffer.prototype, 'parent', {
  enumerable: true,
  get: function () {
    if (!Buffer.isBuffer(this)) return undefined
    return this.buffer
  }
})

Object.defineProperty(Buffer.prototype, 'offset', {
  enumerable: true,
  get: function () {
    if (!Buffer.isBuffer(this)) return undefined
    return this.byteOffset
  }
})

function createBuffer (length) {
  if (length > K_MAX_LENGTH) {
    throw new RangeError('The value "' + length + '" is invalid for option "size"')
  }
  // Return an augmented `Uint8Array` instance
  var buf = new Uint8Array(length)
  buf.__proto__ = Buffer.prototype
  return buf
}

/**
 * The Buffer constructor returns instances of `Uint8Array` that have their
 * prototype changed to `Buffer.prototype`. Furthermore, `Buffer` is a subclass of
 * `Uint8Array`, so the returned instances will have all the node `Buffer` methods
 * and the `Uint8Array` methods. Square bracket notation works as expected -- it
 * returns a single octet.
 *
 * The `Uint8Array` prototype remains unmodified.
 */

function Buffer (arg, encodingOrOffset, length) {
  // Common case.
  if (typeof arg === 'number') {
    if (typeof encodingOrOffset === 'string') {
      throw new TypeError(
        'The "string" argument must be of type string. Received type number'
      )
    }
    return allocUnsafe(arg)
  }
  return from(arg, encodingOrOffset, length)
}

// Fix subarray() in ES2016. See: https://github.com/feross/buffer/pull/97
if (typeof Symbol !== 'undefined' && Symbol.species != null &&
    Buffer[Symbol.species] === Buffer) {
  Object.defineProperty(Buffer, Symbol.species, {
    value: null,
    configurable: true,
    enumerable: false,
    writable: false
  })
}

Buffer.poolSize = 8192 // not used by this implementation

function from (value, encodingOrOffset, length) {
  if (typeof value === 'string') {
    return fromString(value, encodingOrOffset)
  }

  if (ArrayBuffer.isView(value)) {
    return fromArrayLike(value)
  }

  if (value == null) {
    throw TypeError(
      'The first argument must be one of type string, Buffer, ArrayBuffer, Array, ' +
      'or Array-like Object. Received type ' + (typeof value)
    )
  }

  if (isInstance(value, ArrayBuffer) ||
      (value && isInstance(value.buffer, ArrayBuffer))) {
    return fromArrayBuffer(value, encodingOrOffset, length)
  }

  if (typeof value === 'number') {
    throw new TypeError(
      'The "value" argument must not be of type number. Received type number'
    )
  }

  var valueOf = value.valueOf && value.valueOf()
  if (valueOf != null && valueOf !== value) {
    return Buffer.from(valueOf, encodingOrOffset, length)
  }

  var b = fromObject(value)
  if (b) return b

  if (typeof Symbol !== 'undefined' && Symbol.toPrimitive != null &&
      typeof value[Symbol.toPrimitive] === 'function') {
    return Buffer.from(
      value[Symbol.toPrimitive]('string'), encodingOrOffset, length
    )
  }

  throw new TypeError(
    'The first argument must be one of type string, Buffer, ArrayBuffer, Array, ' +
    'or Array-like Object. Received type ' + (typeof value)
  )
}

/**
 * Functionally equivalent to Buffer(arg, encoding) but throws a TypeError
 * if value is a number.
 * Buffer.from(str[, encoding])
 * Buffer.from(array)
 * Buffer.from(buffer)
 * Buffer.from(arrayBuffer[, byteOffset[, length]])
 **/
Buffer.from = function (value, encodingOrOffset, length) {
  return from(value, encodingOrOffset, length)
}

// Note: Change prototype *after* Buffer.from is defined to workaround Chrome bug:
// https://github.com/feross/buffer/pull/148
Buffer.prototype.__proto__ = Uint8Array.prototype
Buffer.__proto__ = Uint8Array

function assertSize (size) {
  if (typeof size !== 'number') {
    throw new TypeError('"size" argument must be of type number')
  } else if (size < 0) {
    throw new RangeError('The value "' + size + '" is invalid for option "size"')
  }
}

function alloc (size, fill, encoding) {
  assertSize(size)
  if (size <= 0) {
    return createBuffer(size)
  }
  if (fill !== undefined) {
    // Only pay attention to encoding if it's a string. This
    // prevents accidentally sending in a number that would
    // be interpretted as a start offset.
    return typeof encoding === 'string'
      ? createBuffer(size).fill(fill, encoding)
      : createBuffer(size).fill(fill)
  }
  return createBuffer(size)
}

/**
 * Creates a new filled Buffer instance.
 * alloc(size[, fill[, encoding]])
 **/
Buffer.alloc = function (size, fill, encoding) {
  return alloc(size, fill, encoding)
}

function allocUnsafe (size) {
  assertSize(size)
  return createBuffer(size < 0 ? 0 : checked(size) | 0)
}

/**
 * Equivalent to Buffer(num), by default creates a non-zero-filled Buffer instance.
 * */
Buffer.allocUnsafe = function (size) {
  return allocUnsafe(size)
}
/**
 * Equivalent to SlowBuffer(num), by default creates a non-zero-filled Buffer instance.
 */
Buffer.allocUnsafeSlow = function (size) {
  return allocUnsafe(size)
}

function fromString (string, encoding) {
  if (typeof encoding !== 'string' || encoding === '') {
    encoding = 'utf8'
  }

  if (!Buffer.isEncoding(encoding)) {
    throw new TypeError('Unknown encoding: ' + encoding)
  }

  var length = byteLength(string, encoding) | 0
  var buf = createBuffer(length)

  var actual = buf.write(string, encoding)

  if (actual !== length) {
    // Writing a hex string, for example, that contains invalid characters will
    // cause everything after the first invalid character to be ignored. (e.g.
    // 'abxxcd' will be treated as 'ab')
    buf = buf.slice(0, actual)
  }

  return buf
}

function fromArrayLike (array) {
  var length = array.length < 0 ? 0 : checked(array.length) | 0
  var buf = createBuffer(length)
  for (var i = 0; i < length; i += 1) {
    buf[i] = array[i] & 255
  }
  return buf
}

function fromArrayBuffer (array, byteOffset, length) {
  if (byteOffset < 0 || array.byteLength < byteOffset) {
    throw new RangeError('"offset" is outside of buffer bounds')
  }

  if (array.byteLength < byteOffset + (length || 0)) {
    throw new RangeError('"length" is outside of buffer bounds')
  }

  var buf
  if (byteOffset === undefined && length === undefined) {
    buf = new Uint8Array(array)
  } else if (length === undefined) {
    buf = new Uint8Array(array, byteOffset)
  } else {
    buf = new Uint8Array(array, byteOffset, length)
  }

  // Return an augmented `Uint8Array` instance
  buf.__proto__ = Buffer.prototype
  return buf
}

function fromObject (obj) {
  if (Buffer.isBuffer(obj)) {
    var len = checked(obj.length) | 0
    var buf = createBuffer(len)

    if (buf.length === 0) {
      return buf
    }

    obj.copy(buf, 0, 0, len)
    return buf
  }

  if (obj.length !== undefined) {
    if (typeof obj.length !== 'number' || numberIsNaN(obj.length)) {
      return createBuffer(0)
    }
    return fromArrayLike(obj)
  }

  if (obj.type === 'Buffer' && Array.isArray(obj.data)) {
    return fromArrayLike(obj.data)
  }
}

function checked (length) {
  // Note: cannot use `length < K_MAX_LENGTH` here because that fails when
  // length is NaN (which is otherwise coerced to zero.)
  if (length >= K_MAX_LENGTH) {
    throw new RangeError('Attempt to allocate Buffer larger than maximum ' +
                         'size: 0x' + K_MAX_LENGTH.toString(16) + ' bytes')
  }
  return length | 0
}

function SlowBuffer (length) {
  if (+length != length) { // eslint-disable-line eqeqeq
    length = 0
  }
  return Buffer.alloc(+length)
}

Buffer.isBuffer = function isBuffer (b) {
  return b != null && b._isBuffer === true &&
    b !== Buffer.prototype // so Buffer.isBuffer(Buffer.prototype) will be false
}

Buffer.compare = function compare (a, b) {
  if (isInstance(a, Uint8Array)) a = Buffer.from(a, a.offset, a.byteLength)
  if (isInstance(b, Uint8Array)) b = Buffer.from(b, b.offset, b.byteLength)
  if (!Buffer.isBuffer(a) || !Buffer.isBuffer(b)) {
    throw new TypeError(
      'The "buf1", "buf2" arguments must be one of type Buffer or Uint8Array'
    )
  }

  if (a === b) return 0

  var x = a.length
  var y = b.length

  for (var i = 0, len = Math.min(x, y); i < len; ++i) {
    if (a[i] !== b[i]) {
      x = a[i]
      y = b[i]
      break
    }
  }

  if (x < y) return -1
  if (y < x) return 1
  return 0
}

Buffer.isEncoding = function isEncoding (encoding) {
  switch (String(encoding).toLowerCase()) {
    case 'hex':
    case 'utf8':
    case 'utf-8':
    case 'ascii':
    case 'latin1':
    case 'binary':
    case 'base64':
    case 'ucs2':
    case 'ucs-2':
    case 'utf16le':
    case 'utf-16le':
      return true
    default:
      return false
  }
}

Buffer.concat = function concat (list, length) {
  if (!Array.isArray(list)) {
    throw new TypeError('"list" argument must be an Array of Buffers')
  }

  if (list.length === 0) {
    return Buffer.alloc(0)
  }

  var i
  if (length === undefined) {
    length = 0
    for (i = 0; i < list.length; ++i) {
      length += list[i].length
    }
  }

  var buffer = Buffer.allocUnsafe(length)
  var pos = 0
  for (i = 0; i < list.length; ++i) {
    var buf = list[i]
    if (isInstance(buf, Uint8Array)) {
      buf = Buffer.from(buf)
    }
    if (!Buffer.isBuffer(buf)) {
      throw new TypeError('"list" argument must be an Array of Buffers')
    }
    buf.copy(buffer, pos)
    pos += buf.length
  }
  return buffer
}

function byteLength (string, encoding) {
  if (Buffer.isBuffer(string)) {
    return string.length
  }
  if (ArrayBuffer.isView(string) || isInstance(string, ArrayBuffer)) {
    return string.byteLength
  }
  if (typeof string !== 'string') {
    throw new TypeError(
      'The "string" argument must be one of type string, Buffer, or ArrayBuffer. ' +
      'Received type ' + typeof string
    )
  }

  var len = string.length
  var mustMatch = (arguments.length > 2 && arguments[2] === true)
  if (!mustMatch && len === 0) return 0

  // Use a for loop to avoid recursion
  var loweredCase = false
  for (;;) {
    switch (encoding) {
      case 'ascii':
      case 'latin1':
      case 'binary':
        return len
      case 'utf8':
      case 'utf-8':
        return utf8ToBytes(string).length
      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return len * 2
      case 'hex':
        return len >>> 1
      case 'base64':
        return base64ToBytes(string).length
      default:
        if (loweredCase) {
          return mustMatch ? -1 : utf8ToBytes(string).length // assume utf8
        }
        encoding = ('' + encoding).toLowerCase()
        loweredCase = true
    }
  }
}
Buffer.byteLength = byteLength

function slowToString (encoding, start, end) {
  var loweredCase = false

  // No need to verify that "this.length <= MAX_UINT32" since it's a read-only
  // property of a typed array.

  // This behaves neither like String nor Uint8Array in that we set start/end
  // to their upper/lower bounds if the value passed is out of range.
  // undefined is handled specially as per ECMA-262 6th Edition,
  // Section 13.3.3.7 Runtime Semantics: KeyedBindingInitialization.
  if (start === undefined || start < 0) {
    start = 0
  }
  // Return early if start > this.length. Done here to prevent potential uint32
  // coercion fail below.
  if (start > this.length) {
    return ''
  }

  if (end === undefined || end > this.length) {
    end = this.length
  }

  if (end <= 0) {
    return ''
  }

  // Force coersion to uint32. This will also coerce falsey/NaN values to 0.
  end >>>= 0
  start >>>= 0

  if (end <= start) {
    return ''
  }

  if (!encoding) encoding = 'utf8'

  while (true) {
    switch (encoding) {
      case 'hex':
        return hexSlice(this, start, end)

      case 'utf8':
      case 'utf-8':
        return utf8Slice(this, start, end)

      case 'ascii':
        return asciiSlice(this, start, end)

      case 'latin1':
      case 'binary':
        return latin1Slice(this, start, end)

      case 'base64':
        return base64Slice(this, start, end)

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return utf16leSlice(this, start, end)

      default:
        if (loweredCase) throw new TypeError('Unknown encoding: ' + encoding)
        encoding = (encoding + '').toLowerCase()
        loweredCase = true
    }
  }
}

// This property is used by `Buffer.isBuffer` (and the `is-buffer` npm package)
// to detect a Buffer instance. It's not possible to use `instanceof Buffer`
// reliably in a browserify context because there could be multiple different
// copies of the 'buffer' package in use. This method works even for Buffer
// instances that were created from another copy of the `buffer` package.
// See: https://github.com/feross/buffer/issues/154
Buffer.prototype._isBuffer = true

function swap (b, n, m) {
  var i = b[n]
  b[n] = b[m]
  b[m] = i
}

Buffer.prototype.swap16 = function swap16 () {
  var len = this.length
  if (len % 2 !== 0) {
    throw new RangeError('Buffer size must be a multiple of 16-bits')
  }
  for (var i = 0; i < len; i += 2) {
    swap(this, i, i + 1)
  }
  return this
}

Buffer.prototype.swap32 = function swap32 () {
  var len = this.length
  if (len % 4 !== 0) {
    throw new RangeError('Buffer size must be a multiple of 32-bits')
  }
  for (var i = 0; i < len; i += 4) {
    swap(this, i, i + 3)
    swap(this, i + 1, i + 2)
  }
  return this
}

Buffer.prototype.swap64 = function swap64 () {
  var len = this.length
  if (len % 8 !== 0) {
    throw new RangeError('Buffer size must be a multiple of 64-bits')
  }
  for (var i = 0; i < len; i += 8) {
    swap(this, i, i + 7)
    swap(this, i + 1, i + 6)
    swap(this, i + 2, i + 5)
    swap(this, i + 3, i + 4)
  }
  return this
}

Buffer.prototype.toString = function toString () {
  var length = this.length
  if (length === 0) return ''
  if (arguments.length === 0) return utf8Slice(this, 0, length)
  return slowToString.apply(this, arguments)
}

Buffer.prototype.toLocaleString = Buffer.prototype.toString

Buffer.prototype.equals = function equals (b) {
  if (!Buffer.isBuffer(b)) throw new TypeError('Argument must be a Buffer')
  if (this === b) return true
  return Buffer.compare(this, b) === 0
}

Buffer.prototype.inspect = function inspect () {
  var str = ''
  var max = exports.INSPECT_MAX_BYTES
  str = this.toString('hex', 0, max).replace(/(.{2})/g, '$1 ').trim()
  if (this.length > max) str += ' ... '
  return '<Buffer ' + str + '>'
}

Buffer.prototype.compare = function compare (target, start, end, thisStart, thisEnd) {
  if (isInstance(target, Uint8Array)) {
    target = Buffer.from(target, target.offset, target.byteLength)
  }
  if (!Buffer.isBuffer(target)) {
    throw new TypeError(
      'The "target" argument must be one of type Buffer or Uint8Array. ' +
      'Received type ' + (typeof target)
    )
  }

  if (start === undefined) {
    start = 0
  }
  if (end === undefined) {
    end = target ? target.length : 0
  }
  if (thisStart === undefined) {
    thisStart = 0
  }
  if (thisEnd === undefined) {
    thisEnd = this.length
  }

  if (start < 0 || end > target.length || thisStart < 0 || thisEnd > this.length) {
    throw new RangeError('out of range index')
  }

  if (thisStart >= thisEnd && start >= end) {
    return 0
  }
  if (thisStart >= thisEnd) {
    return -1
  }
  if (start >= end) {
    return 1
  }

  start >>>= 0
  end >>>= 0
  thisStart >>>= 0
  thisEnd >>>= 0

  if (this === target) return 0

  var x = thisEnd - thisStart
  var y = end - start
  var len = Math.min(x, y)

  var thisCopy = this.slice(thisStart, thisEnd)
  var targetCopy = target.slice(start, end)

  for (var i = 0; i < len; ++i) {
    if (thisCopy[i] !== targetCopy[i]) {
      x = thisCopy[i]
      y = targetCopy[i]
      break
    }
  }

  if (x < y) return -1
  if (y < x) return 1
  return 0
}

// Finds either the first index of `val` in `buffer` at offset >= `byteOffset`,
// OR the last index of `val` in `buffer` at offset <= `byteOffset`.
//
// Arguments:
// - buffer - a Buffer to search
// - val - a string, Buffer, or number
// - byteOffset - an index into `buffer`; will be clamped to an int32
// - encoding - an optional encoding, relevant is val is a string
// - dir - true for indexOf, false for lastIndexOf
function bidirectionalIndexOf (buffer, val, byteOffset, encoding, dir) {
  // Empty buffer means no match
  if (buffer.length === 0) return -1

  // Normalize byteOffset
  if (typeof byteOffset === 'string') {
    encoding = byteOffset
    byteOffset = 0
  } else if (byteOffset > 0x7fffffff) {
    byteOffset = 0x7fffffff
  } else if (byteOffset < -0x80000000) {
    byteOffset = -0x80000000
  }
  byteOffset = +byteOffset // Coerce to Number.
  if (numberIsNaN(byteOffset)) {
    // byteOffset: it it's undefined, null, NaN, "foo", etc, search whole buffer
    byteOffset = dir ? 0 : (buffer.length - 1)
  }

  // Normalize byteOffset: negative offsets start from the end of the buffer
  if (byteOffset < 0) byteOffset = buffer.length + byteOffset
  if (byteOffset >= buffer.length) {
    if (dir) return -1
    else byteOffset = buffer.length - 1
  } else if (byteOffset < 0) {
    if (dir) byteOffset = 0
    else return -1
  }

  // Normalize val
  if (typeof val === 'string') {
    val = Buffer.from(val, encoding)
  }

  // Finally, search either indexOf (if dir is true) or lastIndexOf
  if (Buffer.isBuffer(val)) {
    // Special case: looking for empty string/buffer always fails
    if (val.length === 0) {
      return -1
    }
    return arrayIndexOf(buffer, val, byteOffset, encoding, dir)
  } else if (typeof val === 'number') {
    val = val & 0xFF // Search for a byte value [0-255]
    if (typeof Uint8Array.prototype.indexOf === 'function') {
      if (dir) {
        return Uint8Array.prototype.indexOf.call(buffer, val, byteOffset)
      } else {
        return Uint8Array.prototype.lastIndexOf.call(buffer, val, byteOffset)
      }
    }
    return arrayIndexOf(buffer, [ val ], byteOffset, encoding, dir)
  }

  throw new TypeError('val must be string, number or Buffer')
}

function arrayIndexOf (arr, val, byteOffset, encoding, dir) {
  var indexSize = 1
  var arrLength = arr.length
  var valLength = val.length

  if (encoding !== undefined) {
    encoding = String(encoding).toLowerCase()
    if (encoding === 'ucs2' || encoding === 'ucs-2' ||
        encoding === 'utf16le' || encoding === 'utf-16le') {
      if (arr.length < 2 || val.length < 2) {
        return -1
      }
      indexSize = 2
      arrLength /= 2
      valLength /= 2
      byteOffset /= 2
    }
  }

  function read (buf, i) {
    if (indexSize === 1) {
      return buf[i]
    } else {
      return buf.readUInt16BE(i * indexSize)
    }
  }

  var i
  if (dir) {
    var foundIndex = -1
    for (i = byteOffset; i < arrLength; i++) {
      if (read(arr, i) === read(val, foundIndex === -1 ? 0 : i - foundIndex)) {
        if (foundIndex === -1) foundIndex = i
        if (i - foundIndex + 1 === valLength) return foundIndex * indexSize
      } else {
        if (foundIndex !== -1) i -= i - foundIndex
        foundIndex = -1
      }
    }
  } else {
    if (byteOffset + valLength > arrLength) byteOffset = arrLength - valLength
    for (i = byteOffset; i >= 0; i--) {
      var found = true
      for (var j = 0; j < valLength; j++) {
        if (read(arr, i + j) !== read(val, j)) {
          found = false
          break
        }
      }
      if (found) return i
    }
  }

  return -1
}

Buffer.prototype.includes = function includes (val, byteOffset, encoding) {
  return this.indexOf(val, byteOffset, encoding) !== -1
}

Buffer.prototype.indexOf = function indexOf (val, byteOffset, encoding) {
  return bidirectionalIndexOf(this, val, byteOffset, encoding, true)
}

Buffer.prototype.lastIndexOf = function lastIndexOf (val, byteOffset, encoding) {
  return bidirectionalIndexOf(this, val, byteOffset, encoding, false)
}

function hexWrite (buf, string, offset, length) {
  offset = Number(offset) || 0
  var remaining = buf.length - offset
  if (!length) {
    length = remaining
  } else {
    length = Number(length)
    if (length > remaining) {
      length = remaining
    }
  }

  var strLen = string.length

  if (length > strLen / 2) {
    length = strLen / 2
  }
  for (var i = 0; i < length; ++i) {
    var parsed = parseInt(string.substr(i * 2, 2), 16)
    if (numberIsNaN(parsed)) return i
    buf[offset + i] = parsed
  }
  return i
}

function utf8Write (buf, string, offset, length) {
  return blitBuffer(utf8ToBytes(string, buf.length - offset), buf, offset, length)
}

function asciiWrite (buf, string, offset, length) {
  return blitBuffer(asciiToBytes(string), buf, offset, length)
}

function latin1Write (buf, string, offset, length) {
  return asciiWrite(buf, string, offset, length)
}

function base64Write (buf, string, offset, length) {
  return blitBuffer(base64ToBytes(string), buf, offset, length)
}

function ucs2Write (buf, string, offset, length) {
  return blitBuffer(utf16leToBytes(string, buf.length - offset), buf, offset, length)
}

Buffer.prototype.write = function write (string, offset, length, encoding) {
  // Buffer#write(string)
  if (offset === undefined) {
    encoding = 'utf8'
    length = this.length
    offset = 0
  // Buffer#write(string, encoding)
  } else if (length === undefined && typeof offset === 'string') {
    encoding = offset
    length = this.length
    offset = 0
  // Buffer#write(string, offset[, length][, encoding])
  } else if (isFinite(offset)) {
    offset = offset >>> 0
    if (isFinite(length)) {
      length = length >>> 0
      if (encoding === undefined) encoding = 'utf8'
    } else {
      encoding = length
      length = undefined
    }
  } else {
    throw new Error(
      'Buffer.write(string, encoding, offset[, length]) is no longer supported'
    )
  }

  var remaining = this.length - offset
  if (length === undefined || length > remaining) length = remaining

  if ((string.length > 0 && (length < 0 || offset < 0)) || offset > this.length) {
    throw new RangeError('Attempt to write outside buffer bounds')
  }

  if (!encoding) encoding = 'utf8'

  var loweredCase = false
  for (;;) {
    switch (encoding) {
      case 'hex':
        return hexWrite(this, string, offset, length)

      case 'utf8':
      case 'utf-8':
        return utf8Write(this, string, offset, length)

      case 'ascii':
        return asciiWrite(this, string, offset, length)

      case 'latin1':
      case 'binary':
        return latin1Write(this, string, offset, length)

      case 'base64':
        // Warning: maxLength not taken into account in base64Write
        return base64Write(this, string, offset, length)

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return ucs2Write(this, string, offset, length)

      default:
        if (loweredCase) throw new TypeError('Unknown encoding: ' + encoding)
        encoding = ('' + encoding).toLowerCase()
        loweredCase = true
    }
  }
}

Buffer.prototype.toJSON = function toJSON () {
  return {
    type: 'Buffer',
    data: Array.prototype.slice.call(this._arr || this, 0)
  }
}

function base64Slice (buf, start, end) {
  if (start === 0 && end === buf.length) {
    return base64.fromByteArray(buf)
  } else {
    return base64.fromByteArray(buf.slice(start, end))
  }
}

function utf8Slice (buf, start, end) {
  end = Math.min(buf.length, end)
  var res = []

  var i = start
  while (i < end) {
    var firstByte = buf[i]
    var codePoint = null
    var bytesPerSequence = (firstByte > 0xEF) ? 4
      : (firstByte > 0xDF) ? 3
        : (firstByte > 0xBF) ? 2
          : 1

    if (i + bytesPerSequence <= end) {
      var secondByte, thirdByte, fourthByte, tempCodePoint

      switch (bytesPerSequence) {
        case 1:
          if (firstByte < 0x80) {
            codePoint = firstByte
          }
          break
        case 2:
          secondByte = buf[i + 1]
          if ((secondByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0x1F) << 0x6 | (secondByte & 0x3F)
            if (tempCodePoint > 0x7F) {
              codePoint = tempCodePoint
            }
          }
          break
        case 3:
          secondByte = buf[i + 1]
          thirdByte = buf[i + 2]
          if ((secondByte & 0xC0) === 0x80 && (thirdByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0xF) << 0xC | (secondByte & 0x3F) << 0x6 | (thirdByte & 0x3F)
            if (tempCodePoint > 0x7FF && (tempCodePoint < 0xD800 || tempCodePoint > 0xDFFF)) {
              codePoint = tempCodePoint
            }
          }
          break
        case 4:
          secondByte = buf[i + 1]
          thirdByte = buf[i + 2]
          fourthByte = buf[i + 3]
          if ((secondByte & 0xC0) === 0x80 && (thirdByte & 0xC0) === 0x80 && (fourthByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0xF) << 0x12 | (secondByte & 0x3F) << 0xC | (thirdByte & 0x3F) << 0x6 | (fourthByte & 0x3F)
            if (tempCodePoint > 0xFFFF && tempCodePoint < 0x110000) {
              codePoint = tempCodePoint
            }
          }
      }
    }

    if (codePoint === null) {
      // we did not generate a valid codePoint so insert a
      // replacement char (U+FFFD) and advance only 1 byte
      codePoint = 0xFFFD
      bytesPerSequence = 1
    } else if (codePoint > 0xFFFF) {
      // encode to utf16 (surrogate pair dance)
      codePoint -= 0x10000
      res.push(codePoint >>> 10 & 0x3FF | 0xD800)
      codePoint = 0xDC00 | codePoint & 0x3FF
    }

    res.push(codePoint)
    i += bytesPerSequence
  }

  return decodeCodePointsArray(res)
}

// Based on http://stackoverflow.com/a/22747272/680742, the browser with
// the lowest limit is Chrome, with 0x10000 args.
// We go 1 magnitude less, for safety
var MAX_ARGUMENTS_LENGTH = 0x1000

function decodeCodePointsArray (codePoints) {
  var len = codePoints.length
  if (len <= MAX_ARGUMENTS_LENGTH) {
    return String.fromCharCode.apply(String, codePoints) // avoid extra slice()
  }

  // Decode in chunks to avoid "call stack size exceeded".
  var res = ''
  var i = 0
  while (i < len) {
    res += String.fromCharCode.apply(
      String,
      codePoints.slice(i, i += MAX_ARGUMENTS_LENGTH)
    )
  }
  return res
}

function asciiSlice (buf, start, end) {
  var ret = ''
  end = Math.min(buf.length, end)

  for (var i = start; i < end; ++i) {
    ret += String.fromCharCode(buf[i] & 0x7F)
  }
  return ret
}

function latin1Slice (buf, start, end) {
  var ret = ''
  end = Math.min(buf.length, end)

  for (var i = start; i < end; ++i) {
    ret += String.fromCharCode(buf[i])
  }
  return ret
}

function hexSlice (buf, start, end) {
  var len = buf.length

  if (!start || start < 0) start = 0
  if (!end || end < 0 || end > len) end = len

  var out = ''
  for (var i = start; i < end; ++i) {
    out += toHex(buf[i])
  }
  return out
}

function utf16leSlice (buf, start, end) {
  var bytes = buf.slice(start, end)
  var res = ''
  for (var i = 0; i < bytes.length; i += 2) {
    res += String.fromCharCode(bytes[i] + (bytes[i + 1] * 256))
  }
  return res
}

Buffer.prototype.slice = function slice (start, end) {
  var len = this.length
  start = ~~start
  end = end === undefined ? len : ~~end

  if (start < 0) {
    start += len
    if (start < 0) start = 0
  } else if (start > len) {
    start = len
  }

  if (end < 0) {
    end += len
    if (end < 0) end = 0
  } else if (end > len) {
    end = len
  }

  if (end < start) end = start

  var newBuf = this.subarray(start, end)
  // Return an augmented `Uint8Array` instance
  newBuf.__proto__ = Buffer.prototype
  return newBuf
}

/*
 * Need to make sure that buffer isn't trying to write out of bounds.
 */
function checkOffset (offset, ext, length) {
  if ((offset % 1) !== 0 || offset < 0) throw new RangeError('offset is not uint')
  if (offset + ext > length) throw new RangeError('Trying to access beyond buffer length')
}

Buffer.prototype.readUIntLE = function readUIntLE (offset, byteLength, noAssert) {
  offset = offset >>> 0
  byteLength = byteLength >>> 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var val = this[offset]
  var mul = 1
  var i = 0
  while (++i < byteLength && (mul *= 0x100)) {
    val += this[offset + i] * mul
  }

  return val
}

Buffer.prototype.readUIntBE = function readUIntBE (offset, byteLength, noAssert) {
  offset = offset >>> 0
  byteLength = byteLength >>> 0
  if (!noAssert) {
    checkOffset(offset, byteLength, this.length)
  }

  var val = this[offset + --byteLength]
  var mul = 1
  while (byteLength > 0 && (mul *= 0x100)) {
    val += this[offset + --byteLength] * mul
  }

  return val
}

Buffer.prototype.readUInt8 = function readUInt8 (offset, noAssert) {
  offset = offset >>> 0
  if (!noAssert) checkOffset(offset, 1, this.length)
  return this[offset]
}

Buffer.prototype.readUInt16LE = function readUInt16LE (offset, noAssert) {
  offset = offset >>> 0
  if (!noAssert) checkOffset(offset, 2, this.length)
  return this[offset] | (this[offset + 1] << 8)
}

Buffer.prototype.readUInt16BE = function readUInt16BE (offset, noAssert) {
  offset = offset >>> 0
  if (!noAssert) checkOffset(offset, 2, this.length)
  return (this[offset] << 8) | this[offset + 1]
}

Buffer.prototype.readUInt32LE = function readUInt32LE (offset, noAssert) {
  offset = offset >>> 0
  if (!noAssert) checkOffset(offset, 4, this.length)

  return ((this[offset]) |
      (this[offset + 1] << 8) |
      (this[offset + 2] << 16)) +
      (this[offset + 3] * 0x1000000)
}

Buffer.prototype.readUInt32BE = function readUInt32BE (offset, noAssert) {
  offset = offset >>> 0
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset] * 0x1000000) +
    ((this[offset + 1] << 16) |
    (this[offset + 2] << 8) |
    this[offset + 3])
}

Buffer.prototype.readIntLE = function readIntLE (offset, byteLength, noAssert) {
  offset = offset >>> 0
  byteLength = byteLength >>> 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var val = this[offset]
  var mul = 1
  var i = 0
  while (++i < byteLength && (mul *= 0x100)) {
    val += this[offset + i] * mul
  }
  mul *= 0x80

  if (val >= mul) val -= Math.pow(2, 8 * byteLength)

  return val
}

Buffer.prototype.readIntBE = function readIntBE (offset, byteLength, noAssert) {
  offset = offset >>> 0
  byteLength = byteLength >>> 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var i = byteLength
  var mul = 1
  var val = this[offset + --i]
  while (i > 0 && (mul *= 0x100)) {
    val += this[offset + --i] * mul
  }
  mul *= 0x80

  if (val >= mul) val -= Math.pow(2, 8 * byteLength)

  return val
}

Buffer.prototype.readInt8 = function readInt8 (offset, noAssert) {
  offset = offset >>> 0
  if (!noAssert) checkOffset(offset, 1, this.length)
  if (!(this[offset] & 0x80)) return (this[offset])
  return ((0xff - this[offset] + 1) * -1)
}

Buffer.prototype.readInt16LE = function readInt16LE (offset, noAssert) {
  offset = offset >>> 0
  if (!noAssert) checkOffset(offset, 2, this.length)
  var val = this[offset] | (this[offset + 1] << 8)
  return (val & 0x8000) ? val | 0xFFFF0000 : val
}

Buffer.prototype.readInt16BE = function readInt16BE (offset, noAssert) {
  offset = offset >>> 0
  if (!noAssert) checkOffset(offset, 2, this.length)
  var val = this[offset + 1] | (this[offset] << 8)
  return (val & 0x8000) ? val | 0xFFFF0000 : val
}

Buffer.prototype.readInt32LE = function readInt32LE (offset, noAssert) {
  offset = offset >>> 0
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset]) |
    (this[offset + 1] << 8) |
    (this[offset + 2] << 16) |
    (this[offset + 3] << 24)
}

Buffer.prototype.readInt32BE = function readInt32BE (offset, noAssert) {
  offset = offset >>> 0
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset] << 24) |
    (this[offset + 1] << 16) |
    (this[offset + 2] << 8) |
    (this[offset + 3])
}

Buffer.prototype.readFloatLE = function readFloatLE (offset, noAssert) {
  offset = offset >>> 0
  if (!noAssert) checkOffset(offset, 4, this.length)
  return ieee754.read(this, offset, true, 23, 4)
}

Buffer.prototype.readFloatBE = function readFloatBE (offset, noAssert) {
  offset = offset >>> 0
  if (!noAssert) checkOffset(offset, 4, this.length)
  return ieee754.read(this, offset, false, 23, 4)
}

Buffer.prototype.readDoubleLE = function readDoubleLE (offset, noAssert) {
  offset = offset >>> 0
  if (!noAssert) checkOffset(offset, 8, this.length)
  return ieee754.read(this, offset, true, 52, 8)
}

Buffer.prototype.readDoubleBE = function readDoubleBE (offset, noAssert) {
  offset = offset >>> 0
  if (!noAssert) checkOffset(offset, 8, this.length)
  return ieee754.read(this, offset, false, 52, 8)
}

function checkInt (buf, value, offset, ext, max, min) {
  if (!Buffer.isBuffer(buf)) throw new TypeError('"buffer" argument must be a Buffer instance')
  if (value > max || value < min) throw new RangeError('"value" argument is out of bounds')
  if (offset + ext > buf.length) throw new RangeError('Index out of range')
}

Buffer.prototype.writeUIntLE = function writeUIntLE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset >>> 0
  byteLength = byteLength >>> 0
  if (!noAssert) {
    var maxBytes = Math.pow(2, 8 * byteLength) - 1
    checkInt(this, value, offset, byteLength, maxBytes, 0)
  }

  var mul = 1
  var i = 0
  this[offset] = value & 0xFF
  while (++i < byteLength && (mul *= 0x100)) {
    this[offset + i] = (value / mul) & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeUIntBE = function writeUIntBE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset >>> 0
  byteLength = byteLength >>> 0
  if (!noAssert) {
    var maxBytes = Math.pow(2, 8 * byteLength) - 1
    checkInt(this, value, offset, byteLength, maxBytes, 0)
  }

  var i = byteLength - 1
  var mul = 1
  this[offset + i] = value & 0xFF
  while (--i >= 0 && (mul *= 0x100)) {
    this[offset + i] = (value / mul) & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeUInt8 = function writeUInt8 (value, offset, noAssert) {
  value = +value
  offset = offset >>> 0
  if (!noAssert) checkInt(this, value, offset, 1, 0xff, 0)
  this[offset] = (value & 0xff)
  return offset + 1
}

Buffer.prototype.writeUInt16LE = function writeUInt16LE (value, offset, noAssert) {
  value = +value
  offset = offset >>> 0
  if (!noAssert) checkInt(this, value, offset, 2, 0xffff, 0)
  this[offset] = (value & 0xff)
  this[offset + 1] = (value >>> 8)
  return offset + 2
}

Buffer.prototype.writeUInt16BE = function writeUInt16BE (value, offset, noAssert) {
  value = +value
  offset = offset >>> 0
  if (!noAssert) checkInt(this, value, offset, 2, 0xffff, 0)
  this[offset] = (value >>> 8)
  this[offset + 1] = (value & 0xff)
  return offset + 2
}

Buffer.prototype.writeUInt32LE = function writeUInt32LE (value, offset, noAssert) {
  value = +value
  offset = offset >>> 0
  if (!noAssert) checkInt(this, value, offset, 4, 0xffffffff, 0)
  this[offset + 3] = (value >>> 24)
  this[offset + 2] = (value >>> 16)
  this[offset + 1] = (value >>> 8)
  this[offset] = (value & 0xff)
  return offset + 4
}

Buffer.prototype.writeUInt32BE = function writeUInt32BE (value, offset, noAssert) {
  value = +value
  offset = offset >>> 0
  if (!noAssert) checkInt(this, value, offset, 4, 0xffffffff, 0)
  this[offset] = (value >>> 24)
  this[offset + 1] = (value >>> 16)
  this[offset + 2] = (value >>> 8)
  this[offset + 3] = (value & 0xff)
  return offset + 4
}

Buffer.prototype.writeIntLE = function writeIntLE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset >>> 0
  if (!noAssert) {
    var limit = Math.pow(2, (8 * byteLength) - 1)

    checkInt(this, value, offset, byteLength, limit - 1, -limit)
  }

  var i = 0
  var mul = 1
  var sub = 0
  this[offset] = value & 0xFF
  while (++i < byteLength && (mul *= 0x100)) {
    if (value < 0 && sub === 0 && this[offset + i - 1] !== 0) {
      sub = 1
    }
    this[offset + i] = ((value / mul) >> 0) - sub & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeIntBE = function writeIntBE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset >>> 0
  if (!noAssert) {
    var limit = Math.pow(2, (8 * byteLength) - 1)

    checkInt(this, value, offset, byteLength, limit - 1, -limit)
  }

  var i = byteLength - 1
  var mul = 1
  var sub = 0
  this[offset + i] = value & 0xFF
  while (--i >= 0 && (mul *= 0x100)) {
    if (value < 0 && sub === 0 && this[offset + i + 1] !== 0) {
      sub = 1
    }
    this[offset + i] = ((value / mul) >> 0) - sub & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeInt8 = function writeInt8 (value, offset, noAssert) {
  value = +value
  offset = offset >>> 0
  if (!noAssert) checkInt(this, value, offset, 1, 0x7f, -0x80)
  if (value < 0) value = 0xff + value + 1
  this[offset] = (value & 0xff)
  return offset + 1
}

Buffer.prototype.writeInt16LE = function writeInt16LE (value, offset, noAssert) {
  value = +value
  offset = offset >>> 0
  if (!noAssert) checkInt(this, value, offset, 2, 0x7fff, -0x8000)
  this[offset] = (value & 0xff)
  this[offset + 1] = (value >>> 8)
  return offset + 2
}

Buffer.prototype.writeInt16BE = function writeInt16BE (value, offset, noAssert) {
  value = +value
  offset = offset >>> 0
  if (!noAssert) checkInt(this, value, offset, 2, 0x7fff, -0x8000)
  this[offset] = (value >>> 8)
  this[offset + 1] = (value & 0xff)
  return offset + 2
}

Buffer.prototype.writeInt32LE = function writeInt32LE (value, offset, noAssert) {
  value = +value
  offset = offset >>> 0
  if (!noAssert) checkInt(this, value, offset, 4, 0x7fffffff, -0x80000000)
  this[offset] = (value & 0xff)
  this[offset + 1] = (value >>> 8)
  this[offset + 2] = (value >>> 16)
  this[offset + 3] = (value >>> 24)
  return offset + 4
}

Buffer.prototype.writeInt32BE = function writeInt32BE (value, offset, noAssert) {
  value = +value
  offset = offset >>> 0
  if (!noAssert) checkInt(this, value, offset, 4, 0x7fffffff, -0x80000000)
  if (value < 0) value = 0xffffffff + value + 1
  this[offset] = (value >>> 24)
  this[offset + 1] = (value >>> 16)
  this[offset + 2] = (value >>> 8)
  this[offset + 3] = (value & 0xff)
  return offset + 4
}

function checkIEEE754 (buf, value, offset, ext, max, min) {
  if (offset + ext > buf.length) throw new RangeError('Index out of range')
  if (offset < 0) throw new RangeError('Index out of range')
}

function writeFloat (buf, value, offset, littleEndian, noAssert) {
  value = +value
  offset = offset >>> 0
  if (!noAssert) {
    checkIEEE754(buf, value, offset, 4, 3.4028234663852886e+38, -3.4028234663852886e+38)
  }
  ieee754.write(buf, value, offset, littleEndian, 23, 4)
  return offset + 4
}

Buffer.prototype.writeFloatLE = function writeFloatLE (value, offset, noAssert) {
  return writeFloat(this, value, offset, true, noAssert)
}

Buffer.prototype.writeFloatBE = function writeFloatBE (value, offset, noAssert) {
  return writeFloat(this, value, offset, false, noAssert)
}

function writeDouble (buf, value, offset, littleEndian, noAssert) {
  value = +value
  offset = offset >>> 0
  if (!noAssert) {
    checkIEEE754(buf, value, offset, 8, 1.7976931348623157E+308, -1.7976931348623157E+308)
  }
  ieee754.write(buf, value, offset, littleEndian, 52, 8)
  return offset + 8
}

Buffer.prototype.writeDoubleLE = function writeDoubleLE (value, offset, noAssert) {
  return writeDouble(this, value, offset, true, noAssert)
}

Buffer.prototype.writeDoubleBE = function writeDoubleBE (value, offset, noAssert) {
  return writeDouble(this, value, offset, false, noAssert)
}

// copy(targetBuffer, targetStart=0, sourceStart=0, sourceEnd=buffer.length)
Buffer.prototype.copy = function copy (target, targetStart, start, end) {
  if (!Buffer.isBuffer(target)) throw new TypeError('argument should be a Buffer')
  if (!start) start = 0
  if (!end && end !== 0) end = this.length
  if (targetStart >= target.length) targetStart = target.length
  if (!targetStart) targetStart = 0
  if (end > 0 && end < start) end = start

  // Copy 0 bytes; we're done
  if (end === start) return 0
  if (target.length === 0 || this.length === 0) return 0

  // Fatal error conditions
  if (targetStart < 0) {
    throw new RangeError('targetStart out of bounds')
  }
  if (start < 0 || start >= this.length) throw new RangeError('Index out of range')
  if (end < 0) throw new RangeError('sourceEnd out of bounds')

  // Are we oob?
  if (end > this.length) end = this.length
  if (target.length - targetStart < end - start) {
    end = target.length - targetStart + start
  }

  var len = end - start

  if (this === target && typeof Uint8Array.prototype.copyWithin === 'function') {
    // Use built-in when available, missing from IE11
    this.copyWithin(targetStart, start, end)
  } else if (this === target && start < targetStart && targetStart < end) {
    // descending copy from end
    for (var i = len - 1; i >= 0; --i) {
      target[i + targetStart] = this[i + start]
    }
  } else {
    Uint8Array.prototype.set.call(
      target,
      this.subarray(start, end),
      targetStart
    )
  }

  return len
}

// Usage:
//    buffer.fill(number[, offset[, end]])
//    buffer.fill(buffer[, offset[, end]])
//    buffer.fill(string[, offset[, end]][, encoding])
Buffer.prototype.fill = function fill (val, start, end, encoding) {
  // Handle string cases:
  if (typeof val === 'string') {
    if (typeof start === 'string') {
      encoding = start
      start = 0
      end = this.length
    } else if (typeof end === 'string') {
      encoding = end
      end = this.length
    }
    if (encoding !== undefined && typeof encoding !== 'string') {
      throw new TypeError('encoding must be a string')
    }
    if (typeof encoding === 'string' && !Buffer.isEncoding(encoding)) {
      throw new TypeError('Unknown encoding: ' + encoding)
    }
    if (val.length === 1) {
      var code = val.charCodeAt(0)
      if ((encoding === 'utf8' && code < 128) ||
          encoding === 'latin1') {
        // Fast path: If `val` fits into a single byte, use that numeric value.
        val = code
      }
    }
  } else if (typeof val === 'number') {
    val = val & 255
  }

  // Invalid ranges are not set to a default, so can range check early.
  if (start < 0 || this.length < start || this.length < end) {
    throw new RangeError('Out of range index')
  }

  if (end <= start) {
    return this
  }

  start = start >>> 0
  end = end === undefined ? this.length : end >>> 0

  if (!val) val = 0

  var i
  if (typeof val === 'number') {
    for (i = start; i < end; ++i) {
      this[i] = val
    }
  } else {
    var bytes = Buffer.isBuffer(val)
      ? val
      : Buffer.from(val, encoding)
    var len = bytes.length
    if (len === 0) {
      throw new TypeError('The value "' + val +
        '" is invalid for argument "value"')
    }
    for (i = 0; i < end - start; ++i) {
      this[i + start] = bytes[i % len]
    }
  }

  return this
}

// HELPER FUNCTIONS
// ================

var INVALID_BASE64_RE = /[^+/0-9A-Za-z-_]/g

function base64clean (str) {
  // Node takes equal signs as end of the Base64 encoding
  str = str.split('=')[0]
  // Node strips out invalid characters like \n and \t from the string, base64-js does not
  str = str.trim().replace(INVALID_BASE64_RE, '')
  // Node converts strings with length < 2 to ''
  if (str.length < 2) return ''
  // Node allows for non-padded base64 strings (missing trailing ===), base64-js does not
  while (str.length % 4 !== 0) {
    str = str + '='
  }
  return str
}

function toHex (n) {
  if (n < 16) return '0' + n.toString(16)
  return n.toString(16)
}

function utf8ToBytes (string, units) {
  units = units || Infinity
  var codePoint
  var length = string.length
  var leadSurrogate = null
  var bytes = []

  for (var i = 0; i < length; ++i) {
    codePoint = string.charCodeAt(i)

    // is surrogate component
    if (codePoint > 0xD7FF && codePoint < 0xE000) {
      // last char was a lead
      if (!leadSurrogate) {
        // no lead yet
        if (codePoint > 0xDBFF) {
          // unexpected trail
          if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
          continue
        } else if (i + 1 === length) {
          // unpaired lead
          if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
          continue
        }

        // valid lead
        leadSurrogate = codePoint

        continue
      }

      // 2 leads in a row
      if (codePoint < 0xDC00) {
        if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
        leadSurrogate = codePoint
        continue
      }

      // valid surrogate pair
      codePoint = (leadSurrogate - 0xD800 << 10 | codePoint - 0xDC00) + 0x10000
    } else if (leadSurrogate) {
      // valid bmp char, but last char was a lead
      if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
    }

    leadSurrogate = null

    // encode utf8
    if (codePoint < 0x80) {
      if ((units -= 1) < 0) break
      bytes.push(codePoint)
    } else if (codePoint < 0x800) {
      if ((units -= 2) < 0) break
      bytes.push(
        codePoint >> 0x6 | 0xC0,
        codePoint & 0x3F | 0x80
      )
    } else if (codePoint < 0x10000) {
      if ((units -= 3) < 0) break
      bytes.push(
        codePoint >> 0xC | 0xE0,
        codePoint >> 0x6 & 0x3F | 0x80,
        codePoint & 0x3F | 0x80
      )
    } else if (codePoint < 0x110000) {
      if ((units -= 4) < 0) break
      bytes.push(
        codePoint >> 0x12 | 0xF0,
        codePoint >> 0xC & 0x3F | 0x80,
        codePoint >> 0x6 & 0x3F | 0x80,
        codePoint & 0x3F | 0x80
      )
    } else {
      throw new Error('Invalid code point')
    }
  }

  return bytes
}

function asciiToBytes (str) {
  var byteArray = []
  for (var i = 0; i < str.length; ++i) {
    // Node's code seems to be doing this and not & 0x7F..
    byteArray.push(str.charCodeAt(i) & 0xFF)
  }
  return byteArray
}

function utf16leToBytes (str, units) {
  var c, hi, lo
  var byteArray = []
  for (var i = 0; i < str.length; ++i) {
    if ((units -= 2) < 0) break

    c = str.charCodeAt(i)
    hi = c >> 8
    lo = c % 256
    byteArray.push(lo)
    byteArray.push(hi)
  }

  return byteArray
}

function base64ToBytes (str) {
  return base64.toByteArray(base64clean(str))
}

function blitBuffer (src, dst, offset, length) {
  for (var i = 0; i < length; ++i) {
    if ((i + offset >= dst.length) || (i >= src.length)) break
    dst[i + offset] = src[i]
  }
  return i
}

// ArrayBuffer or Uint8Array objects from other contexts (i.e. iframes) do not pass
// the `instanceof` check but they should be treated as of that type.
// See: https://github.com/feross/buffer/issues/166
function isInstance (obj, type) {
  return obj instanceof type ||
    (obj != null && obj.constructor != null && obj.constructor.name != null &&
      obj.constructor.name === type.name)
}
function numberIsNaN (obj) {
  // For IE11 support
  return obj !== obj // eslint-disable-line no-self-compare
}

}).call(this)}).call(this,require("buffer").Buffer)
},{"base64-js":5,"buffer":6,"ieee754":7}],7:[function(require,module,exports){
/*! ieee754. BSD-3-Clause License. Feross Aboukhadijeh <https://feross.org/opensource> */
exports.read = function (buffer, offset, isLE, mLen, nBytes) {
  var e, m
  var eLen = (nBytes * 8) - mLen - 1
  var eMax = (1 << eLen) - 1
  var eBias = eMax >> 1
  var nBits = -7
  var i = isLE ? (nBytes - 1) : 0
  var d = isLE ? -1 : 1
  var s = buffer[offset + i]

  i += d

  e = s & ((1 << (-nBits)) - 1)
  s >>= (-nBits)
  nBits += eLen
  for (; nBits > 0; e = (e * 256) + buffer[offset + i], i += d, nBits -= 8) {}

  m = e & ((1 << (-nBits)) - 1)
  e >>= (-nBits)
  nBits += mLen
  for (; nBits > 0; m = (m * 256) + buffer[offset + i], i += d, nBits -= 8) {}

  if (e === 0) {
    e = 1 - eBias
  } else if (e === eMax) {
    return m ? NaN : ((s ? -1 : 1) * Infinity)
  } else {
    m = m + Math.pow(2, mLen)
    e = e - eBias
  }
  return (s ? -1 : 1) * m * Math.pow(2, e - mLen)
}

exports.write = function (buffer, value, offset, isLE, mLen, nBytes) {
  var e, m, c
  var eLen = (nBytes * 8) - mLen - 1
  var eMax = (1 << eLen) - 1
  var eBias = eMax >> 1
  var rt = (mLen === 23 ? Math.pow(2, -24) - Math.pow(2, -77) : 0)
  var i = isLE ? 0 : (nBytes - 1)
  var d = isLE ? 1 : -1
  var s = value < 0 || (value === 0 && 1 / value < 0) ? 1 : 0

  value = Math.abs(value)

  if (isNaN(value) || value === Infinity) {
    m = isNaN(value) ? 1 : 0
    e = eMax
  } else {
    e = Math.floor(Math.log(value) / Math.LN2)
    if (value * (c = Math.pow(2, -e)) < 1) {
      e--
      c *= 2
    }
    if (e + eBias >= 1) {
      value += rt / c
    } else {
      value += rt * Math.pow(2, 1 - eBias)
    }
    if (value * c >= 2) {
      e++
      c /= 2
    }

    if (e + eBias >= eMax) {
      m = 0
      e = eMax
    } else if (e + eBias >= 1) {
      m = ((value * c) - 1) * Math.pow(2, mLen)
      e = e + eBias
    } else {
      m = value * Math.pow(2, eBias - 1) * Math.pow(2, mLen)
      e = 0
    }
  }

  for (; mLen >= 8; buffer[offset + i] = m & 0xff, i += d, m /= 256, mLen -= 8) {}

  e = (e << mLen) | m
  eLen += mLen
  for (; eLen > 0; buffer[offset + i] = e & 0xff, i += d, e /= 256, eLen -= 8) {}

  buffer[offset + i - d] |= s * 128
}

},{}],8:[function(require,module,exports){
// shim for using process in browser
var process = module.exports = {};

// cached from whatever global is present so that test runners that stub it
// don't break things.  But we need to wrap it in a try catch in case it is
// wrapped in strict mode code which doesn't define any globals.  It's inside a
// function because try/catches deoptimize in certain engines.

var cachedSetTimeout;
var cachedClearTimeout;

function defaultSetTimout() {
    throw new Error('setTimeout has not been defined');
}
function defaultClearTimeout () {
    throw new Error('clearTimeout has not been defined');
}
(function () {
    try {
        if (typeof setTimeout === 'function') {
            cachedSetTimeout = setTimeout;
        } else {
            cachedSetTimeout = defaultSetTimout;
        }
    } catch (e) {
        cachedSetTimeout = defaultSetTimout;
    }
    try {
        if (typeof clearTimeout === 'function') {
            cachedClearTimeout = clearTimeout;
        } else {
            cachedClearTimeout = defaultClearTimeout;
        }
    } catch (e) {
        cachedClearTimeout = defaultClearTimeout;
    }
} ())
function runTimeout(fun) {
    if (cachedSetTimeout === setTimeout) {
        //normal enviroments in sane situations
        return setTimeout(fun, 0);
    }
    // if setTimeout wasn't available but was latter defined
    if ((cachedSetTimeout === defaultSetTimout || !cachedSetTimeout) && setTimeout) {
        cachedSetTimeout = setTimeout;
        return setTimeout(fun, 0);
    }
    try {
        // when when somebody has screwed with setTimeout but no I.E. maddness
        return cachedSetTimeout(fun, 0);
    } catch(e){
        try {
            // When we are in I.E. but the script has been evaled so I.E. doesn't trust the global object when called normally
            return cachedSetTimeout.call(null, fun, 0);
        } catch(e){
            // same as above but when it's a version of I.E. that must have the global object for 'this', hopfully our context correct otherwise it will throw a global error
            return cachedSetTimeout.call(this, fun, 0);
        }
    }


}
function runClearTimeout(marker) {
    if (cachedClearTimeout === clearTimeout) {
        //normal enviroments in sane situations
        return clearTimeout(marker);
    }
    // if clearTimeout wasn't available but was latter defined
    if ((cachedClearTimeout === defaultClearTimeout || !cachedClearTimeout) && clearTimeout) {
        cachedClearTimeout = clearTimeout;
        return clearTimeout(marker);
    }
    try {
        // when when somebody has screwed with setTimeout but no I.E. maddness
        return cachedClearTimeout(marker);
    } catch (e){
        try {
            // When we are in I.E. but the script has been evaled so I.E. doesn't  trust the global object when called normally
            return cachedClearTimeout.call(null, marker);
        } catch (e){
            // same as above but when it's a version of I.E. that must have the global object for 'this', hopfully our context correct otherwise it will throw a global error.
            // Some versions of I.E. have different rules for clearTimeout vs setTimeout
            return cachedClearTimeout.call(this, marker);
        }
    }



}
var queue = [];
var draining = false;
var currentQueue;
var queueIndex = -1;

function cleanUpNextTick() {
    if (!draining || !currentQueue) {
        return;
    }
    draining = false;
    if (currentQueue.length) {
        queue = currentQueue.concat(queue);
    } else {
        queueIndex = -1;
    }
    if (queue.length) {
        drainQueue();
    }
}

function drainQueue() {
    if (draining) {
        return;
    }
    var timeout = runTimeout(cleanUpNextTick);
    draining = true;

    var len = queue.length;
    while(len) {
        currentQueue = queue;
        queue = [];
        while (++queueIndex < len) {
            if (currentQueue) {
                currentQueue[queueIndex].run();
            }
        }
        queueIndex = -1;
        len = queue.length;
    }
    currentQueue = null;
    draining = false;
    runClearTimeout(timeout);
}

process.nextTick = function (fun) {
    var args = new Array(arguments.length - 1);
    if (arguments.length > 1) {
        for (var i = 1; i < arguments.length; i++) {
            args[i - 1] = arguments[i];
        }
    }
    queue.push(new Item(fun, args));
    if (queue.length === 1 && !draining) {
        runTimeout(drainQueue);
    }
};

// v8 likes predictible objects
function Item(fun, array) {
    this.fun = fun;
    this.array = array;
}
Item.prototype.run = function () {
    this.fun.apply(null, this.array);
};
process.title = 'browser';
process.browser = true;
process.env = {};
process.argv = [];
process.version = ''; // empty string to avoid regexp issues
process.versions = {};

function noop() {}

process.on = noop;
process.addListener = noop;
process.once = noop;
process.off = noop;
process.removeListener = noop;
process.removeAllListeners = noop;
process.emit = noop;
process.prependListener = noop;
process.prependOnceListener = noop;

process.listeners = function (name) { return [] }

process.binding = function (name) {
    throw new Error('process.binding is not supported');
};

process.cwd = function () { return '/' };
process.chdir = function (dir) {
    throw new Error('process.chdir is not supported');
};
process.umask = function() { return 0; };

},{}],9:[function(require,module,exports){
(function (setImmediate,clearImmediate){(function (){
var nextTick = require('process/browser.js').nextTick;
var apply = Function.prototype.apply;
var slice = Array.prototype.slice;
var immediateIds = {};
var nextImmediateId = 0;

// DOM APIs, for completeness

exports.setTimeout = function() {
  return new Timeout(apply.call(setTimeout, window, arguments), clearTimeout);
};
exports.setInterval = function() {
  return new Timeout(apply.call(setInterval, window, arguments), clearInterval);
};
exports.clearTimeout =
exports.clearInterval = function(timeout) { timeout.close(); };

function Timeout(id, clearFn) {
  this._id = id;
  this._clearFn = clearFn;
}
Timeout.prototype.unref = Timeout.prototype.ref = function() {};
Timeout.prototype.close = function() {
  this._clearFn.call(window, this._id);
};

// Does not start the time, just sets up the members needed.
exports.enroll = function(item, msecs) {
  clearTimeout(item._idleTimeoutId);
  item._idleTimeout = msecs;
};

exports.unenroll = function(item) {
  clearTimeout(item._idleTimeoutId);
  item._idleTimeout = -1;
};

exports._unrefActive = exports.active = function(item) {
  clearTimeout(item._idleTimeoutId);

  var msecs = item._idleTimeout;
  if (msecs >= 0) {
    item._idleTimeoutId = setTimeout(function onTimeout() {
      if (item._onTimeout)
        item._onTimeout();
    }, msecs);
  }
};

// That's not how node.js implements it but the exposed api is the same.
exports.setImmediate = typeof setImmediate === "function" ? setImmediate : function(fn) {
  var id = nextImmediateId++;
  var args = arguments.length < 2 ? false : slice.call(arguments, 1);

  immediateIds[id] = true;

  nextTick(function onNextTick() {
    if (immediateIds[id]) {
      // fn.call() is faster so we optimize for the common use-case
      // @see http://jsperf.com/call-apply-segu
      if (args) {
        fn.apply(null, args);
      } else {
        fn.call(null);
      }
      // Prevent ids from leaking
      exports.clearImmediate(id);
    }
  });

  return id;
};

exports.clearImmediate = typeof clearImmediate === "function" ? clearImmediate : function(id) {
  delete immediateIds[id];
};
}).call(this)}).call(this,require("timers").setImmediate,require("timers").clearImmediate)
},{"process/browser.js":8,"timers":9}]},{},[3]);
