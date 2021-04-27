(window.webpackJsonp = window.webpackJsonp || []).push([[11], {
    1327: function (e, n, a) {
        !function (e, n) {
            "use strict";

            function a(e) {
                return (a = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (e) {
                    return typeof e
                } : function (e) {
                    return e && "function" == typeof Symbol && e.constructor === Symbol && e !== Symbol.prototype ? "symbol" : typeof e
                })(e)
            }

            function t(e, n) {
                if (null == e) return {};
                var a, t, i = function (e, n) {
                    if (null == e) return {};
                    var a, t, i = {}, r = Object.keys(e);
                    for (t = 0; t < r.length; t++) a = r[t], n.indexOf(a) >= 0 || (i[a] = e[a]);
                    return i
                }(e, n);
                if (Object.getOwnPropertySymbols) {
                    var r = Object.getOwnPropertySymbols(e);
                    for (t = 0; t < r.length; t++) a = r[t], n.indexOf(a) >= 0 || Object.prototype.propertyIsEnumerable.call(e, a) && (i[a] = e[a])
                }
                return i
            }

            function i(e, n) {
                return function (e) {
                    if (Array.isArray(e)) return e
                }(e) || function (e, n) {
                    if ("undefined" != typeof Symbol && Symbol.iterator in Object(e)) {
                        var a = [], t = !0, i = !1, r = void 0;
                        try {
                            for (var o, l = e[Symbol.iterator](); !(t = (o = l.next()).done) && (a.push(o.value), !n || a.length !== n); t = !0) ;
                        } catch (e) {
                            i = !0, r = e
                        } finally {
                            try {
                                t || null == l.return || l.return()
                            } finally {
                                if (i) throw r
                            }
                        }
                        return a
                    }
                }(e, n) || function (e, n) {
                    if (e) {
                        if ("string" == typeof e) return r(e, n);
                        var a = Object.prototype.toString.call(e).slice(8, -1);
                        return "Object" === a && e.constructor && (a = e.constructor.name), "Map" === a || "Set" === a ? Array.from(e) : "Arguments" === a || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(a) ? r(e, n) : void 0
                    }
                }(e, n) || function () {
                    throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")
                }()
            }

            function r(e, n) {
                (null == n || n > e.length) && (n = e.length);
                for (var a = 0, t = new Array(n); a < n; a++) t[a] = e[a];
                return t
            }

            function o() {
            }

            function l() {
            }

            n = n && Object.prototype.hasOwnProperty.call(n, "default") ? n.default : n, l.resetWarningCache = o;
            var d = function (e, n) {
                return e(n = {exports: {}}, n.exports), n.exports
            }((function (e) {
                e.exports = function () {
                    function e(e, n, a, t, i, r) {
                        if ("SECRET_DO_NOT_PASS_THIS_OR_YOU_WILL_BE_FIRED" !== r) {
                            var o = new Error("Calling PropTypes validators directly is not supported by the `prop-types` package. Use PropTypes.checkPropTypes() to call them. Read more at http://fb.me/use-check-prop-types");
                            throw o.name = "Invariant Violation", o
                        }
                    }

                    function n() {
                        return e
                    }

                    e.isRequired = e;
                    var a = {
                        array: e,
                        bool: e,
                        func: e,
                        number: e,
                        object: e,
                        string: e,
                        symbol: e,
                        any: e,
                        arrayOf: n,
                        element: e,
                        elementType: e,
                        instanceOf: n,
                        node: e,
                        objectOf: n,
                        oneOf: n,
                        oneOfType: n,
                        shape: n,
                        exact: n,
                        checkPropTypes: l,
                        resetWarningCache: o
                    };
                    return a.PropTypes = a, a
                }()
            })), c = function (e) {
                return null !== e && "object" === a(e)
            }, s = function e(n, a) {
                if (!c(n) || !c(a)) return n === a;
                var t = Array.isArray(n);
                if (t !== Array.isArray(a)) return !1;
                var i = "[object Object]" === Object.prototype.toString.call(n);
                if (i !== ("[object Object]" === Object.prototype.toString.call(a))) return !1;
                if (!i && !t) return !1;
                var r = Object.keys(n), o = Object.keys(a);
                if (r.length !== o.length) return !1;
                for (var l = {}, d = 0; d < r.length; d += 1) l[r[d]] = !0;
                for (var s = 0; s < o.length; s += 1) l[o[s]] = !0;
                var u = Object.keys(l);
                if (u.length !== r.length) return !1;
                var m = n, p = a;
                return u.every((function (n) {
                    return e(m[n], p[n])
                }))
            }, u = function (e) {
                var a = n.useRef(e);
                return n.useEffect((function () {
                    a.current = e
                }), [e]), a.current
            }, m = function (e) {
                if (null === e || c(n = e) && "function" == typeof n.elements && "function" == typeof n.createToken && "function" == typeof n.createPaymentMethod && "function" == typeof n.confirmCardPayment) return e;
                var n;
                throw new Error("Invalid prop `stripe` supplied to `Elements`. We recommend using the `loadStripe` utility from `@stripe/stripe-js`. See https://stripe.com/docs/stripe-js/react#elements-props-stripe for details.")
            }, p = function (e) {
                if (function (e) {
                    return c(e) && "function" == typeof e.then
                }(e)) return {tag: "async", stripePromise: Promise.resolve(e).then(m)};
                var n = m(e);
                return null === n ? {tag: "empty"} : {tag: "sync", stripe: n}
            }, f = n.createContext(null);
            f.displayName = "ElementsContext";
            var v = function (e) {
                var a = e.stripe, t = e.options, r = e.children, o = n.useRef(!1), l = n.useRef(!0),
                    d = n.useMemo((function () {
                        return p(a)
                    }), [a]), c = i(n.useState((function () {
                        return {stripe: null, elements: null}
                    })), 2), m = c[0], v = c[1], k = u(a), b = u(t);
                return null !== k && (k !== a && console.warn("Unsupported prop change on Elements: You cannot change the `stripe` prop after setting it."), s(t, b) || console.warn("Unsupported prop change on Elements: You cannot change the `options` prop after setting the `stripe` prop.")), o.current || ("sync" === d.tag && (o.current = !0, v({
                    stripe: d.stripe,
                    elements: d.stripe.elements(t)
                })), "async" === d.tag && (o.current = !0, d.stripePromise.then((function (e) {
                    e && l.current && v({stripe: e, elements: e.elements(t)})
                })))), n.useEffect((function () {
                    return function () {
                        l.current = !1
                    }
                }), []), n.useEffect((function () {
                    var e = m.stripe;
                    e && e._registerWrapper && e._registerWrapper({name: "react-stripe-js", version: "1.2.2"})
                }), [m.stripe]), n.createElement(f.Provider, {value: m}, r)
            };
            v.propTypes = {stripe: d.any, options: d.object};
            var k = function (e) {
                return function (e, n) {
                    if (!e) throw new Error("Could not find Elements context; You need to wrap the part of your app that ".concat(n, " in an <Elements> provider."));
                    return e
                }(n.useContext(f), e)
            }, b = function (e) {
                return (0, e.children)(k("mounts <ElementsConsumer>"))
            };
            b.propTypes = {children: d.func.isRequired};
            var h = function (e) {
                    var a = n.useRef(e);
                    return n.useEffect((function () {
                        a.current = e
                    }), [e]), function () {
                        a.current && a.current.apply(a, arguments)
                    }
                }, y = function (e) {
                    return c(e) ? (e.paymentRequest, t(e, ["paymentRequest"])) : {}
                }, g = function () {
                }, x = function (e, a) {
                    var t, i = "".concat((t = e).charAt(0).toUpperCase() + t.slice(1), "Element"), r = a ? function (e) {
                        k("mounts <".concat(i, ">"));
                        var a = e.id, t = e.className;
                        return n.createElement("div", {id: a, className: t})
                    } : function (a) {
                        var t = a.id, r = a.className, o = a.options, l = void 0 === o ? {} : o, d = a.onBlur,
                            c = void 0 === d ? g : d, u = a.onFocus, m = void 0 === u ? g : u, p = a.onReady,
                            f = void 0 === p ? g : p, v = a.onChange, b = void 0 === v ? g : v, x = a.onEscape,
                            N = void 0 === x ? g : x, E = a.onClick, C = void 0 === E ? g : E,
                            P = k("mounts <".concat(i, ">")).elements, S = n.useRef(null), M = n.useRef(null), w = h(f),
                            _ = h(c), T = h(m), F = h(C), O = h(b), D = h(N);
                        n.useLayoutEffect((function () {
                            if (null == S.current && P && null != M.current) {
                                var n = P.create(e, l);
                                S.current = n, n.mount(M.current), n.on("ready", (function () {
                                    return w(n)
                                })), n.on("change", O), n.on("blur", _), n.on("focus", T), n.on("escape", D), n.on("click", F)
                            }
                        }));
                        var I = n.useRef(l);
                        return n.useEffect((function () {
                            I.current && I.current.paymentRequest !== l.paymentRequest && console.warn("Unsupported prop change: options.paymentRequest is not a customizable property.");
                            var e = y(l);
                            0 === Object.keys(e).length || s(e, y(I.current)) || S.current && (S.current.update(e), I.current = l)
                        }), [l]), n.useLayoutEffect((function () {
                            return function () {
                                S.current && S.current.destroy()
                            }
                        }), []), n.createElement("div", {id: t, className: r, ref: M})
                    };
                    return r.propTypes = {
                        id: d.string,
                        className: d.string,
                        onChange: d.func,
                        onBlur: d.func,
                        onFocus: d.func,
                        onReady: d.func,
                        onClick: d.func,
                        options: d.object
                    }, r.displayName = i, r.__elementType = e, r
                }, N = "undefined" == typeof window, E = x("auBankAccount", N), C = x("card", N), P = x("cardNumber", N),
                S = x("cardExpiry", N), M = x("cardCvc", N), w = x("fpxBank", N), _ = x("iban", N),
                T = x("idealBank", N), F = x("paymentRequestButton", N);
            e.AuBankAccountElement = E, e.CardCvcElement = M, e.CardElement = C, e.CardExpiryElement = S, e.CardNumberElement = P, e.Elements = v, e.ElementsConsumer = b, e.FpxBankElement = w, e.IbanElement = _, e.IdealBankElement = T, e.PaymentRequestButtonElement = F, e.useElements = function () {
                return k("calls useElements()").elements
            }, e.useStripe = function () {
                return k("calls useStripe()").stripe
            }, Object.defineProperty(e, "__esModule", {value: !0})
        }(n, a(0))
    }, 1330: function (e, n, a) {
        "use strict";
        a.d(n, "a", (function () {
            return re
        })), a.d(n, "b", (function () {
            return Ue
        })), a.d(n, "c", (function () {
            return se
        }));
        a(82);
        var t, i, r = a(44), o = a.n(r), l = a(40), d = a.n(l), c = a(5), s = a.n(c), u = a(13), m = a.n(u), p = a(10),
            f = a.n(p), v = a(24), k = a.n(v), b = a(14), h = a.n(b), y = a(37), g = a.n(y), x = a(28), N = a.n(x),
            E = a(26), C = a.n(E), P = a(29), S = a.n(P), M = a(30), w = a.n(M), _ = a(1327), T = a(3), F = a.n(T),
            O = a(0), D = a.n(O), I = a(12), j = a(133), L = a(21), A = a(9), B = a(498), V = a(1), W = a.n(V),
            z = a(2141), Y = {insert: "head", singleton: !1}, X = (W()(z.a, Y), z.a.locals || {}), R = a(41);

        function q(e, n) {
            var a = g()(e);
            if (N.a) {
                var t = N()(e);
                n && (t = C()(t).call(t, (function (n) {
                    return S()(e, n).enumerable
                }))), a.push.apply(a, t)
            }
            return a
        }

        function U(e) {
            for (var n = 1; n < arguments.length; n++) {
                var a = null != arguments[n] ? arguments[n] : {};
                n % 2 ? q(Object(a), !0).forEach((function (n) {
                    s()(e, n, a[n])
                })) : w.a ? Object.defineProperties(e, w()(a)) : q(Object(a)).forEach((function (n) {
                    Object.defineProperty(e, n, S()(a, n))
                }))
            }
            return e
        }

        var K = {}, J = [{
            kind: "FragmentDefinition",
            name: {kind: "Name", value: "AttachCreditCardPaymentMethod"},
            typeCondition: {kind: "NamedType", name: {kind: "Name", value: "PaymentMethod"}},
            selectionSet: {
                kind: "SelectionSet",
                selections: [{kind: "Field", name: {kind: "Name", value: "id"}}, {
                    kind: "Field",
                    name: {kind: "Name", value: "brand"}
                }, {kind: "Field", name: {kind: "Name", value: "last4"}}, {
                    kind: "Field",
                    name: {kind: "Name", value: "expirationDate"}
                }]
            }
        }], Q = {
            kind: "Document",
            definitions: h()(t = [{
                kind: "OperationDefinition",
                operation: "query",
                name: {kind: "Name", value: "GetViewer"},
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        name: {kind: "Name", value: "viewer"},
                        selectionSet: {
                            kind: "SelectionSet",
                            selections: [{
                                kind: "Field",
                                name: {kind: "Name", value: "paymentMethods"},
                                selectionSet: {
                                    kind: "SelectionSet",
                                    selections: [{
                                        kind: "FragmentSpread",
                                        name: {kind: "Name", value: "AttachCreditCardPaymentMethod"}
                                    }]
                                }
                            }]
                        }
                    }]
                }
            }]).call(t, o()(J))
        };
        var H = {
            kind: "Document",
            definitions: h()(i = [{
                kind: "OperationDefinition",
                operation: "mutation",
                name: {kind: "Name", value: "AttachPaymentMethod"},
                variableDefinitions: [{
                    kind: "VariableDefinition",
                    variable: {kind: "Variable", name: {kind: "Name", value: "methodId"}},
                    type: {kind: "NonNullType", type: {kind: "NamedType", name: {kind: "Name", value: "ID"}}}
                }],
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        name: {kind: "Name", value: "attachPaymentMethod"},
                        arguments: [{
                            kind: "Argument",
                            name: {kind: "Name", value: "methodId"},
                            value: {kind: "Variable", name: {kind: "Name", value: "methodId"}}
                        }],
                        selectionSet: {
                            kind: "SelectionSet",
                            selections: [{
                                kind: "FragmentSpread",
                                name: {kind: "Name", value: "AttachCreditCardPaymentMethod"}
                            }]
                        }
                    }]
                }
            }]).call(i, o()(J))
        };

        function G(e, n) {
            var a = g()(e);
            if (N.a) {
                var t = N()(e);
                n && (t = C()(t).call(t, (function (n) {
                    return S()(e, n).enumerable
                }))), a.push.apply(a, t)
            }
            return a
        }

        function Z(e) {
            for (var n = 1; n < arguments.length; n++) {
                var a = null != arguments[n] ? arguments[n] : {};
                n % 2 ? G(Object(a), !0).forEach((function (n) {
                    s()(e, n, a[n])
                })) : w.a ? Object.defineProperties(e, w()(a)) : G(Object(a)).forEach((function (n) {
                    Object.defineProperty(e, n, S()(a, n))
                }))
            }
            return e
        }

        var $, ee, ne, ae, te = Object(I.a)({
                attachAction: {
                    id: "stripe.components.AttachCreditCard.AttachCreditCard.attachAction",
                    defaultMessage: "カードを追加する"
                },
                cardNumber: {
                    id: "stripe.components.AttachCreditCard.AttachCreditCard.cardNumber",
                    defaultMessage: "クレジットカード番号"
                },
                cardExpiry: {id: "stripe.components.AttachCreditCard.AttachCreditCard.cardExpiry", defaultMessage: "有効期限"},
                cardCvc: {id: "stripe.components.AttachCreditCard.AttachCreditCard.cardCvc", defaultMessage: "CVC"},
                cancel: {id: "stripe.components.AttachCreditCard.AttachCreditCard.cancel", defaultMessage: "キャンセル"}
            }), ie = {base: {color: "#333", fontSize: "16px", lineHeight: "32px", "::placeholder": {color: "#ddd"}}},
            re = function (e) {
                var n, a, t = e.className, i = e.showCancel, r = void 0 !== i && i,
                    l = f()(e, ["className", "showCancel"]), c = Object(j.a)(), u = Object(A.m)(te),
                    p = Object(A.h)().user, v = Object(_.useStripe)(), b = Object(_.useElements)(),
                    y = (a = U(U({}, K), n), R.useMutation(H, a)), g = m()(y, 2), x = g[0], N = g[1].loading,
                    E = D.a.useState(), C = m()(E, 2), P = C[0], S = C[1],
                    M = D.a.useState({cardNumber: {}, cardExpiry: {}, cardCvc: {}}), w = m()(M, 2), T = w[0], O = w[1],
                    I = D.a.useRef();
                I.current = D.a.useCallback((function (e) {
                    O(Z(Z({}, T), {}, s()({}, e.elementType, e)))
                }), [T]), D.a.useEffect((function () {
                    var e, n, a;
                    if (b) {
                        var t = function (e) {
                            var n;
                            return null === (n = I.current) || void 0 === n ? void 0 : n.call(I, e)
                        };
                        null === (e = b.getElement("cardNumber")) || void 0 === e || e.on("change", t), null === (n = b.getElement("cardExpiry")) || void 0 === n || n.on("change", t), null === (a = b.getElement("cardCvc")) || void 0 === a || a.on("change", t)
                    }
                }), [b]);
                var V = Object(A.g)(d()(k.a.mark((function e() {
                        var n, a, t, i, r, d;
                        return k.a.wrap((function (e) {
                            for (; ;) switch (e.prev = e.next) {
                                case 0:
                                    return S(void 0), n = b.getElement("cardNumber"), e.prev = 2, e.next = 5, v.createPaymentMethod({
                                        type: "card",
                                        card: n,
                                        billing_details: {email: p.email}
                                    });
                                case 5:
                                    if (t = e.sent, i = t.error, r = t.paymentMethod, !i) {
                                        e.next = 10;
                                        break
                                    }
                                    throw console.error("stripe.createPaymentMethod failed", i), i;
                                case 10:
                                    return d = r.id, e.next = 13, x({
                                        variables: {methodId: d}, update: function (e, n) {
                                            var a, t = n.data, i = e.readQuery({query: Q}),
                                                r = h()(a = []).call(a, o()(i.viewer.paymentMethods), [t.attachPaymentMethod]);
                                            e.writeQuery({
                                                query: Q,
                                                data: Z(Z({}, i), {}, {viewer: Z(Z({}, i.viewer), {}, {paymentMethods: r})})
                                            })
                                        }
                                    });
                                case 13:
                                    null === (a = l.onAttached) || void 0 === a || a.call(l), e.next = 19;
                                    break;
                                case 16:
                                    e.prev = 16, e.t0 = e.catch(2), S(Object(B.d)(c, e.t0));
                                case 19:
                                case"end":
                                    return e.stop()
                            }
                        }), e, null, [[2, 16]])
                    })))), W = m()(V, 2), z = W[0], Y = W[1],
                    q = T.cardNumber.complete && T.cardExpiry.complete && T.cardCvc.complete;
                return D.a.createElement("div", {className: F()(X.AttachCreditCard, t)}, D.a.createElement(L.t, {
                    noPaper: !0,
                    className: X.cardForm
                }, D.a.createElement(L.s, {
                    containerClassName: X.cardNumber,
                    label: u.cardNumber
                }, D.a.createElement(_.CardNumberElement, {
                    options: {classes: {base: X.stripeElement}, style: ie},
                    onReady: function (e) {
                        return e.focus()
                    }
                })), D.a.createElement(L.s, {
                    containerClassName: X.cardExpiry,
                    label: u.cardExpiry
                }, D.a.createElement(_.CardExpiryElement, {
                    options: {
                        classes: {base: X.stripeElement},
                        style: ie
                    }
                })), D.a.createElement(L.s, {
                    containerClassName: X.cardCvc,
                    label: u.cardCvc
                }, D.a.createElement(_.CardCvcElement, {
                    options: {
                        classes: {base: X.stripeElement},
                        style: ie,
                        placeholder: ""
                    }
                }))), P && D.a.createElement("p", {className: X.errorNote}, P), T.cardNumber.error && D.a.createElement("p", {className: X.errorNote}, T.cardNumber.error.message), T.cardExpiry.error && D.a.createElement("p", {className: X.errorNote}, T.cardExpiry.error.message), T.cardCvc.error && D.a.createElement("p", {className: X.errorNote}, T.cardCvc.error.message), D.a.createElement("div", {className: F()(X.actions, r && X.hasCancel)}, r && D.a.createElement(L.b, {
                    className: X.cancel,
                    buttonStyle: "danger",
                    onClick: function () {
                        var e;
                        return null === (e = l.onCancel) || void 0 === e ? void 0 : e.call(l)
                    }
                }, u.cancel), D.a.createElement(L.Ab, {
                    className: X.addCard,
                    suspending: Y || N,
                    disabled: !q,
                    onClick: z
                }, u.attachAction)))
            }, oe = a(8), le = a.n(oe), de = a(2142), ce = a(178), se = function (e) {
                var n = e.children, a = D.a.useMemo((function () {
                    return Object(de.loadStripe)(ce.a.STRIPE_PUBLISHABLE_KEY)
                }), []);
                return D.a.createElement(_.Elements, {stripe: a}, n)
            }, ue = a(194), me = a.n(ue), pe = a(16), fe = a.n(pe),
            ve = (a(1180), a(1181), a(119), a(73), a(127), a(128), a(129), a(143)), ke = a(23), be = a(2144),
            he = {insert: "head", singleton: !1}, ye = (W()(be.a, he), be.a.locals || {});

        function ge(e, n) {
            var a = g()(e);
            if (N.a) {
                var t = N()(e);
                n && (t = C()(t).call(t, (function (n) {
                    return S()(e, n).enumerable
                }))), a.push.apply(a, t)
            }
            return a
        }

        function xe(e) {
            for (var n = 1; n < arguments.length; n++) {
                var a = null != arguments[n] ? arguments[n] : {};
                n % 2 ? ge(Object(a), !0).forEach((function (n) {
                    s()(e, n, a[n])
                })) : w.a ? Object.defineProperties(e, w()(a)) : ge(Object(a)).forEach((function (n) {
                    Object.defineProperty(e, n, S()(a, n))
                }))
            }
            return e
        }

        var Ne = {}, Ee = [{
            kind: "FragmentDefinition",
            name: {kind: "Name", value: "PurchaseModalInvoice"},
            typeCondition: {kind: "NamedType", name: {kind: "Name", value: "Invoice"}},
            selectionSet: {
                kind: "SelectionSet",
                selections: [{kind: "Field", name: {kind: "Name", value: "id"}}, {
                    kind: "Field",
                    name: {kind: "Name", value: "createdAt"}
                }, {kind: "Field", name: {kind: "Name", value: "currency"}}, {
                    kind: "Field",
                    name: {kind: "Name", value: "discountAmount"}
                }, {kind: "Field", name: {kind: "Name", value: "label"}}, {
                    kind: "Field",
                    name: {kind: "Name", value: "planType"}
                }, {kind: "Field", name: {kind: "Name", value: "status"}}, {
                    kind: "Field",
                    name: {kind: "Name", value: "tax"}
                }, {kind: "Field", name: {kind: "Name", value: "total"}}, {
                    kind: "Field",
                    name: {kind: "Name", value: "subtotal"}
                }, {
                    kind: "Field",
                    name: {kind: "Name", value: "discount"},
                    selectionSet: {
                        kind: "SelectionSet",
                        selections: [{kind: "Field", name: {kind: "Name", value: "id"}}, {
                            kind: "Field",
                            name: {kind: "Name", value: "couponId"}
                        }, {
                            kind: "Field",
                            name: {kind: "Name", value: "coupon"},
                            selectionSet: {
                                kind: "SelectionSet",
                                selections: [{kind: "Field", name: {kind: "Name", value: "id"}}, {
                                    kind: "Field",
                                    name: {kind: "Name", value: "name"}
                                }]
                            }
                        }, {kind: "Field", name: {kind: "Name", value: "promotionCode"}}]
                    }
                }, {
                    kind: "Field",
                    name: {kind: "Name", value: "paymentIntent"},
                    selectionSet: {
                        kind: "SelectionSet",
                        selections: [{kind: "Field", name: {kind: "Name", value: "id"}}, {
                            kind: "Field",
                            name: {kind: "Name", value: "amount"}
                        }, {kind: "Field", name: {kind: "Name", value: "clientSecret"}}, {
                            kind: "Field",
                            name: {kind: "Name", value: "lastPaymentErrorPaymentMethodId"}
                        }, {kind: "Field", name: {kind: "Name", value: "lastPaymentErrorCode"}}, {
                            kind: "Field",
                            name: {kind: "Name", value: "lastPaymentErrorMessage"}
                        }, {kind: "Field", name: {kind: "Name", value: "lastPaymentErrorType"}}]
                    }
                }]
            }
        }], Ce = {
            kind: "Document",
            definitions: [{
                kind: "OperationDefinition",
                operation: "query",
                name: {kind: "Name", value: "ListPaymentMethods"},
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        name: {kind: "Name", value: "viewer"},
                        selectionSet: {
                            kind: "SelectionSet",
                            selections: [{
                                kind: "Field",
                                name: {kind: "Name", value: "paymentMethods"},
                                selectionSet: {
                                    kind: "SelectionSet",
                                    selections: [{kind: "Field", name: {kind: "Name", value: "id"}}, {
                                        kind: "Field",
                                        name: {kind: "Name", value: "brand"}
                                    }, {kind: "Field", name: {kind: "Name", value: "last4"}}, {
                                        kind: "Field",
                                        name: {kind: "Name", value: "expirationDate"}
                                    }, {
                                        kind: "Field",
                                        name: {kind: "Name", value: "isExpired"},
                                        directives: [{kind: "Directive", name: {kind: "Name", value: "client"}}]
                                    }]
                                }
                            }]
                        }
                    }]
                }
            }]
        };
        var Pe = {
            kind: "Document",
            definitions: [{
                kind: "OperationDefinition",
                operation: "query",
                name: {kind: "Name", value: "GetPlanPurchased"},
                variableDefinitions: [{
                    kind: "VariableDefinition",
                    variable: {kind: "Variable", name: {kind: "Name", value: "id"}},
                    type: {kind: "NonNullType", type: {kind: "NamedType", name: {kind: "Name", value: "ID"}}}
                }],
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        alias: {kind: "Name", value: "plan"},
                        name: {kind: "Name", value: "getPlan"},
                        arguments: [{
                            kind: "Argument",
                            name: {kind: "Name", value: "id"},
                            value: {kind: "Variable", name: {kind: "Name", value: "id"}}
                        }],
                        selectionSet: {
                            kind: "SelectionSet",
                            selections: [{kind: "Field", name: {kind: "Name", value: "id"}}, {
                                kind: "Field",
                                name: {kind: "Name", value: "viewerPurchasedPlan"},
                                selectionSet: {
                                    kind: "SelectionSet",
                                    selections: [{kind: "Field", name: {kind: "Name", value: "createdAt"}}]
                                }
                            }]
                        }
                    }]
                }
            }]
        };
        var Se = {
            kind: "Document",
            definitions: h()($ = [{
                kind: "OperationDefinition",
                operation: "query",
                name: {kind: "Name", value: "RetrieveInvoice"},
                variableDefinitions: [{
                    kind: "VariableDefinition",
                    variable: {kind: "Variable", name: {kind: "Name", value: "id"}},
                    type: {kind: "NonNullType", type: {kind: "NamedType", name: {kind: "Name", value: "ID"}}}
                }],
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        alias: {kind: "Name", value: "invoice"},
                        name: {kind: "Name", value: "retrieveInvoice"},
                        arguments: [{
                            kind: "Argument",
                            name: {kind: "Name", value: "invoiceId"},
                            value: {kind: "Variable", name: {kind: "Name", value: "id"}}
                        }],
                        selectionSet: {
                            kind: "SelectionSet",
                            selections: [{kind: "FragmentSpread", name: {kind: "Name", value: "PurchaseModalInvoice"}}]
                        }
                    }]
                }
            }]).call($, o()(Ee))
        };
        var Me = {
            kind: "Document", definitions: h()(ee = [{
                kind: "OperationDefinition",
                operation: "mutation",
                name: {kind: "Name", value: "MakeInvoice"},
                variableDefinitions: [{
                    kind: "VariableDefinition",
                    variable: {kind: "Variable", name: {kind: "Name", value: "planType"}},
                    type: {kind: "NonNullType", type: {kind: "NamedType", name: {kind: "Name", value: "PlanType"}}}
                }, {
                    kind: "VariableDefinition",
                    variable: {kind: "Variable", name: {kind: "Name", value: "planIds"}},
                    type: {
                        kind: "NonNullType",
                        type: {
                            kind: "ListType",
                            type: {kind: "NonNullType", type: {kind: "NamedType", name: {kind: "Name", value: "ID"}}}
                        }
                    }
                }],
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        alias: {kind: "Name", value: "invoice"},
                        name: {kind: "Name", value: "makeInvoice"},
                        arguments: [{
                            kind: "Argument",
                            name: {kind: "Name", value: "input"},
                            value: {
                                kind: "ObjectValue",
                                fields: [{
                                    kind: "ObjectField",
                                    name: {kind: "Name", value: "planType"},
                                    value: {kind: "Variable", name: {kind: "Name", value: "planType"}}
                                }, {
                                    kind: "ObjectField",
                                    name: {kind: "Name", value: "planIds"},
                                    value: {kind: "Variable", name: {kind: "Name", value: "planIds"}}
                                }]
                            }
                        }],
                        selectionSet: {
                            kind: "SelectionSet",
                            selections: [{kind: "FragmentSpread", name: {kind: "Name", value: "PurchaseModalInvoice"}}]
                        }
                    }]
                }
            }]).call(ee, o()(Ee))
        };
        var we = {
            kind: "Document", definitions: h()(ne = [{
                kind: "OperationDefinition",
                operation: "mutation",
                name: {kind: "Name", value: "ApplyPromotionCode"},
                variableDefinitions: [{
                    kind: "VariableDefinition",
                    variable: {kind: "Variable", name: {kind: "Name", value: "invoiceId"}},
                    type: {kind: "NonNullType", type: {kind: "NamedType", name: {kind: "Name", value: "ID"}}}
                }, {
                    kind: "VariableDefinition",
                    variable: {kind: "Variable", name: {kind: "Name", value: "planType"}},
                    type: {kind: "NonNullType", type: {kind: "NamedType", name: {kind: "Name", value: "PlanType"}}}
                }, {
                    kind: "VariableDefinition",
                    variable: {kind: "Variable", name: {kind: "Name", value: "planIds"}},
                    type: {
                        kind: "NonNullType",
                        type: {
                            kind: "ListType",
                            type: {kind: "NonNullType", type: {kind: "NamedType", name: {kind: "Name", value: "ID"}}}
                        }
                    }
                }, {
                    kind: "VariableDefinition",
                    variable: {kind: "Variable", name: {kind: "Name", value: "promotionCode"}},
                    type: {kind: "NonNullType", type: {kind: "NamedType", name: {kind: "Name", value: "String"}}}
                }],
                selectionSet: {
                    kind: "SelectionSet",
                    selections: [{
                        kind: "Field",
                        alias: {kind: "Name", value: "invoice"},
                        name: {kind: "Name", value: "applyPromotionCode"},
                        arguments: [{
                            kind: "Argument",
                            name: {kind: "Name", value: "input"},
                            value: {
                                kind: "ObjectValue",
                                fields: [{
                                    kind: "ObjectField",
                                    name: {kind: "Name", value: "planType"},
                                    value: {kind: "Variable", name: {kind: "Name", value: "planType"}}
                                }, {
                                    kind: "ObjectField",
                                    name: {kind: "Name", value: "planIds"},
                                    value: {kind: "Variable", name: {kind: "Name", value: "planIds"}}
                                }, {
                                    kind: "ObjectField",
                                    name: {kind: "Name", value: "invoiceId"},
                                    value: {kind: "Variable", name: {kind: "Name", value: "invoiceId"}}
                                }, {
                                    kind: "ObjectField",
                                    name: {kind: "Name", value: "promotionCode"},
                                    value: {kind: "Variable", name: {kind: "Name", value: "promotionCode"}}
                                }]
                            }
                        }],
                        selectionSet: {
                            kind: "SelectionSet",
                            selections: [{kind: "FragmentSpread", name: {kind: "Name", value: "PurchaseModalInvoice"}}]
                        }
                    }]
                }
            }]).call(ne, o()(Ee))
        };
        var _e = {
            kind: "Document", definitions: h()(ae = [{
                kind: "OperationDefinition",
                operation: "mutation",
                name: {kind: "Name", value: "PurchaseInvoice"},
                variableDefinitions: [{
                    kind: "VariableDefinition",
                    variable: {kind: "Variable", name: {kind: "Name", value: "invoiceId"}},
                    type: {kind: "NonNullType", type: {kind: "NamedType", name: {kind: "Name", value: "ID"}}}
                }, {
                    kind: "VariableDefinition",
                    variable: {kind: "Variable", name: {kind: "Name", value: "planType"}},
                    type: {kind: "NonNullType", type: {kind: "NamedType", name: {kind: "Name", value: "PlanType"}}}
                }, {
                    kind: "VariableDefinition",
                    variable: {kind: "Variable", name: {kind: "Name", value: "planIds"}},
                    type: {
                        kind: "NonNullType",
                        type: {
                            kind: "ListType",
                            type: {kind: "NonNullType", type: {kind: "NamedType", name: {kind: "Name", value: "ID"}}}
                        }
                    }
                }, {
                    kind: "VariableDefinition",
                    variable: {kind: "Variable", name: {kind: "Name", value: "promotionCode"}},
                    type: {kind: "NamedType", name: {kind: "Name", value: "String"}}
                }, {
                    kind: "VariableDefinition",
                    variable: {kind: "Variable", name: {kind: "Name", value: "paymentMethodId"}},
                    type: {kind: "NamedType", name: {kind: "Name", value: "ID"}}
                }],
                selectionSet: {
                    kind: "SelectionSet", selections: [{
                        kind: "Field",
                        name: {kind: "Name", value: "purchaseInvoice"},
                        arguments: [{
                            kind: "Argument",
                            name: {kind: "Name", value: "input"},
                            value: {
                                kind: "ObjectValue",
                                fields: [{
                                    kind: "ObjectField",
                                    name: {kind: "Name", value: "planType"},
                                    value: {kind: "Variable", name: {kind: "Name", value: "planType"}}
                                }, {
                                    kind: "ObjectField",
                                    name: {kind: "Name", value: "planIds"},
                                    value: {kind: "Variable", name: {kind: "Name", value: "planIds"}}
                                }, {
                                    kind: "ObjectField",
                                    name: {kind: "Name", value: "invoiceId"},
                                    value: {kind: "Variable", name: {kind: "Name", value: "invoiceId"}}
                                }, {
                                    kind: "ObjectField",
                                    name: {kind: "Name", value: "promotionCode"},
                                    value: {kind: "Variable", name: {kind: "Name", value: "promotionCode"}}
                                }, {
                                    kind: "ObjectField",
                                    name: {kind: "Name", value: "paymentmethodId"},
                                    value: {kind: "Variable", name: {kind: "Name", value: "paymentMethodId"}}
                                }]
                            }
                        }],
                        selectionSet: {
                            kind: "SelectionSet",
                            selections: [{kind: "Field", name: {kind: "Name", value: "clientSecret"}}, {
                                kind: "Field",
                                name: {kind: "Name", value: "invoice"},
                                selectionSet: {
                                    kind: "SelectionSet",
                                    selections: [{
                                        kind: "FragmentSpread",
                                        name: {kind: "Name", value: "PurchaseModalInvoice"}
                                    }]
                                }
                            }]
                        }
                    }]
                }
            }]).call(ae, o()(Ee))
        };
        var Te = Object(I.a)({
                note: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PaymentMethodChoice.note",
                    defaultMessage: "※クレジットカード情報が入力されておりません。{br}\n  ※無料クーポンを使って視聴される場合も、クレジットカードの登録が必要です。"
                },
                buttonAddCard: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PaymentMethodChoice.buttonAddCard",
                    defaultMessage: "+ カードを追加する"
                }
            }), Fe = function (e) {
                var n, a, t, i, r = e.paymentMethodId, o = f()(e, ["paymentMethodId"]), l = Object(A.i)(Te),
                    d = (t = {fetchPolicy: "network-only"}, i = xe(xe({}, Ne), t), R.useQuery(Ce, i)).data,
                    c = D.a.useState(), s = m()(c, 2), u = s[0], p = s[1],
                    v = null == d || null === (n = d.viewer) || void 0 === n ? void 0 : n.paymentMethods;
                return D.a.useEffect((function () {
                    v && 0 === v.length && p(!0), v && v.length && !r && !v[0].isExpired && o.onChange(v[0].id)
                }), [v]), D.a.createElement("div", {className: ye.PaymentMethodChoice}, v ? D.a.createElement("ul", null, fe()(v).call(v, (function (e) {
                    return D.a.createElement("li", {key: e.id}, D.a.createElement(L.N, {
                        label: D.a.createElement(L.k, le()({className: ye.creditCard}, e)),
                        name: "paymentmethod",
                        value: e.id,
                        checked: e.id === r,
                        disabled: e.isExpired,
                        onChange: function () {
                            var n;
                            return !e.isExpired && (null === (n = o.onChange) || void 0 === n ? void 0 : n.call(o, e.id))
                        }
                    }))
                }))) : D.a.createElement(L.R, {
                    size: 32,
                    className: ye.loading
                }), v && 0 === v.length && D.a.createElement("p", {className: ye.note}, l.note({br: D.a.createElement("br", null)})), u && D.a.createElement(re, {
                    showCancel: (null !== (a = null == v ? void 0 : v.length) && void 0 !== a ? a : 0) > 0,
                    onAttached: function () {
                        return p(!1)
                    },
                    onCancel: function () {
                        return p(!1)
                    }
                }), !0 !== u && D.a.createElement("div", {className: ye.actions}, D.a.createElement(L.b, {
                    size: "small",
                    onClick: function () {
                        return p(!0)
                    }
                }, l.buttonAddCard())))
            }, Oe = a(2145), De = {insert: "head", singleton: !1}, Ie = (W()(Oe.a, De), Oe.a.locals || {}),
            je = Object(I.a)({
                amount: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.amount",
                    defaultMessage: "{amount, number, ::currency/JPY}"
                },
                applied: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.applied",
                    defaultMessage: "適用済み"
                },
                apply: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.apply",
                    defaultMessage: "適用する"
                },
                couponCode: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.couponCode",
                    defaultMessage: "クーポン"
                },
                couponErrorMessage: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.couponErrorMessage",
                    defaultMessage: "※クーポンコードが異なります"
                },
                creditCard: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.creditCard",
                    defaultMessage: "クレジットカード"
                },
                discountAmount: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.discountAmount",
                    defaultMessage: "クーポン"
                },
                failedToWait: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.failedToWait",
                    defaultMessage: '購入完了の確認が時間内にできませんでした。 シラス事務局に "{invoiceId}" の購入についてお問い合わせください。'
                },
                headline: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.headline",
                    defaultMessage: "ご購入内容"
                },
                onetimePlanAmountLabel: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.onetimePlanAmountLabel",
                    defaultMessage: "価格"
                },
                onetimePlanAmountLabelWithTax: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.onetimePlanAmountLabelWithTax",
                    defaultMessage: "価格(税込)"
                },
                onetimePlanAmountLabelWithTaxAfterdiscounted: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.onetimePlanAmountLabelWithTaxAfterdiscounted",
                    defaultMessage: "割引後価格(税込)"
                },
                promotionCodePlaceholder: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.promotionCodePlaceholder",
                    defaultMessage: "クーポンコード"
                },
                subscriptionPlanAmountLabel: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.subscriptionPlanAmountLabel",
                    defaultMessage: "月額"
                },
                subscriptionPlanAmountLabelWithTax: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.subscriptionPlanAmountLabelWithTax",
                    defaultMessage: "月額(税込)"
                },
                subscriptionPlanAmountLabelWithTaxAfterdiscounted: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.subscriptionPlanAmountLabelWithTaxAfterdiscounted",
                    defaultMessage: "割引時月額(税込)"
                },
                subtotal: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.subtotal",
                    defaultMessage: "小計"
                },
                tax: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.tax",
                    defaultMessage: "税額"
                },
                couponUsed: {
                    id: "stripe.components.PurchaseModal.PurchaseDetailsModal.PurchaseDetailsModal.couponUsed",
                    defaultMessage: "クーポンは適用済みです"
                }
            });

        function Le(e, n, a) {
            return Ae.apply(this, arguments)
        }

        function Ae() {
            return (Ae = d()(k.a.mark((function e(n, a, t) {
                var i, r, o, l, d, c;
                return k.a.wrap((function (e) {
                    for (; ;) switch (e.prev = e.next) {
                        case 0:
                            i = 0;
                        case 1:
                            if (!(i < 20)) {
                                e.next = 20;
                                break
                            }
                            return e.next = 4, n.query({query: Se, fetchPolicy: "network-only", variables: {id: a}});
                        case 4:
                            if (r = e.sent, o = r.data, l = r.loading, d = r.errors, l || d) {
                                e.next = 15;
                                break
                            }
                            if ("paid" !== (c = o.invoice).status) {
                                e.next = 14;
                                break
                            }
                            return e.abrupt("return", !0);
                        case 14:
                            throw t(c.paymentIntent);
                        case 15:
                            return e.next = 17, Object(ke.b)(500);
                        case 17:
                            ++i, e.next = 1;
                            break;
                        case 20:
                            throw new ve.c("Failed to wait payment completion. invoice id ".concat(a));
                        case 21:
                        case"end":
                            return e.stop()
                    }
                }), e)
            })))).apply(this, arguments)
        }

        function Be(e, n) {
            return Ve.apply(this, arguments)
        }

        function Ve() {
            return (Ve = d()(k.a.mark((function e(n, a) {
                var t, i, r, o, l, d;
                return k.a.wrap((function (e) {
                    for (; ;) switch (e.prev = e.next) {
                        case 0:
                            t = 0;
                        case 1:
                            if (!(t < 20)) {
                                e.next = 15;
                                break
                            }
                            return e.next = 4, n.query({query: Pe, fetchPolicy: "network-only", variables: {id: a}});
                        case 4:
                            if (r = e.sent, o = r.data, l = r.loading, d = r.errors, l || d || null == o || null === (i = o.plan) || void 0 === i || !i.viewerPurchasedPlan) {
                                e.next = 10;
                                break
                            }
                            return e.abrupt("return", !0);
                        case 10:
                            return e.next = 12, Object(ke.b)(500);
                        case 12:
                            ++t, e.next = 1;
                            break;
                        case 15:
                            throw new ve.c("Failed to wait payment completion. plan id ".concat(a));
                        case 16:
                        case"end":
                            return e.stop()
                    }
                }), e)
            })))).apply(this, arguments)
        }

        var We = function (e) {
                var n, a, t = e.children, i = e.description, r = e.isOpen, o = e.planIds, l = e.planType,
                    c = e.purchaseButtonLabel,
                    u = f()(e, ["children", "description", "isOpen", "planIds", "planType", "purchaseButtonLabel"]),
                    p = Object(j.a)(), v = Object(A.i)(je), b = Object(R.useApolloClient)(), y = D.a.useState(null),
                    g = m()(y, 2), x = g[0], N = g[1], E = Object(_.useStripe)(),
                    P = (a = xe(xe({}, Ne), n), R.useMutation(Me, a)), S = m()(P, 1)[0], M = function (e) {
                        var n = xe(xe({}, Ne), e);
                        return R.useMutation(_e, n)
                    }(), w = m()(M, 1)[0], T = D.a.useState(), O = m()(T, 2), I = O[0], V = O[1], W = D.a.useState(),
                    z = m()(W, 2), Y = z[0], X = z[1], q = function (e) {
                        var n = xe(xe({}, Ne), e);
                        return R.useMutation(we, n)
                    }(), U = m()(q, 2), K = U[0], J = U[1], Q = D.a.useState(""), H = m()(Q, 2), G = H[0], Z = H[1],
                    $ = Object(A.g)(d()(k.a.mark((function e() {
                        var n, a, t, i, r;
                        return k.a.wrap((function (e) {
                            for (; ;) switch (e.prev = e.next) {
                                case 0:
                                    return V(void 0), e.prev = 1, e.next = 4, w({
                                        variables: {
                                            invoiceId: Y.id,
                                            planType: l,
                                            planIds: o,
                                            promotionCode: G.length ? G : null,
                                            paymentMethodId: x
                                        }
                                    });
                                case 4:
                                    if (a = e.sent, X(a.data.purchaseInvoice.invoice), !(t = a.data.purchaseInvoice).clientSecret) {
                                        e.next = 14;
                                        break
                                    }
                                    return e.next = 10, E.confirmCardPayment(t.clientSecret, {payment_method: x});
                                case 10:
                                    if (i = e.sent, !(r = i.error)) {
                                        e.next = 14;
                                        break
                                    }
                                    throw r;
                                case 14:
                                    n = t.invoice, e.next = 22;
                                    break;
                                case 17:
                                    return e.prev = 17, e.t0 = e.catch(1), console.error("purchase failed", e.t0), V(Object(B.d)(p, e.t0)), e.abrupt("return");
                                case 22:
                                    return e.prev = 22, e.next = 25, Le(b, n.id, (function (e) {
                                        var n = e.lastPaymentErrorCode, a = e.lastPaymentErrorMessage;
                                        throw Object(ve.f)("StripeError", n, a, void 0, {declineCode: n, message: a})
                                    }));
                                case 25:
                                    return e.next = 27, me.a.all(fe()(o).call(o, (function (e) {
                                        return Be(b, e)
                                    })));
                                case 27:
                                    e.next = 34;
                                    break;
                                case 29:
                                    return e.prev = 29, e.t1 = e.catch(22), console.error("check completion failed", e.t1), e.t1 instanceof ve.c ? V(v.failedToWait({invoiceId: n.id})) : V(Object(B.d)(p, e.t1)), e.abrupt("return");
                                case 34:
                                    setTimeout((function () {
                                        return u.onCompleted()
                                    }));
                                case 35:
                                case"end":
                                    return e.stop()
                            }
                        }), e, null, [[1, 17], [22, 29]])
                    })))), ee = m()($, 2), ne = ee[0], ae = ee[1];
                D.a.useEffect((function () {
                    Z(""), d()(k.a.mark((function e() {
                        var n;
                        return k.a.wrap((function (e) {
                            for (; ;) switch (e.prev = e.next) {
                                case 0:
                                    return e.prev = 0, e.next = 3, S({variables: {planType: l, planIds: o}});
                                case 3:
                                    n = e.sent, X(n.data.invoice), e.next = 12;
                                    break;
                                case 7:
                                    e.prev = 7, e.t0 = e.catch(0), console.error("makeInvoice failed", e.t0), V(Object(B.d)(p, e.t0)), X(null);
                                case 12:
                                case"end":
                                    return e.stop()
                            }
                        }), e, null, [[0, 7]])
                    })))()
                }), [r]);
                var te = D.a.useCallback((function (e) {
                        Z(e)
                    }), []), ie = D.a.useCallback(d()(k.a.mark((function e() {
                        var n, a;
                        return k.a.wrap((function (e) {
                            for (; ;) switch (e.prev = e.next) {
                                case 0:
                                    if (console.assert(Y), !G.length) {
                                        e.next = 6;
                                        break
                                    }
                                    return e.next = 4, K({
                                        variables: {
                                            invoiceId: Y.id,
                                            planType: l,
                                            planIds: o,
                                            promotionCode: G
                                        }
                                    });
                                case 4:
                                    a = e.sent, null !== (n = a.data) && void 0 !== n && n.invoice && X(a.data.invoice);
                                case 6:
                                case"end":
                                    return e.stop()
                            }
                        }), e)
                    }))), [Y, G]), re = D.a.useMemo((function () {
                        var e;
                        if (!Y) return null;
                        var n = Y.total, a = Y.discountAmount;
                        return C()(e = [["SubscriptionPlan" === l ? v.subscriptionPlanAmountLabel() : v.onetimePlanAmountLabel(), Y.subtotal], 0 !== a ? [v.discountAmount(), -a] : void 0, 0 !== a ? [v.subtotal(), Y.subtotal - a] : void 0, [v.tax(), Y.tax], ["SubscriptionPlan" === l ? 0 === a ? v.subscriptionPlanAmountLabelWithTax() : v.subscriptionPlanAmountLabelWithTaxAfterdiscounted() : 0 === a ? v.onetimePlanAmountLabelWithTax() : v.onetimePlanAmountLabelWithTaxAfterdiscounted(), n]]).call(e, (function (e) {
                            return !!e
                        }))
                    }), [Y, l, v]), oe = J.loading || ae, le = !Y || oe || !1, de = !Y || oe || 0 === G.length || le,
                    ce = !(x && !oe && Y);
                return D.a.createElement(L.C, {
                    headline: v.headline(),
                    isOpen: r,
                    onRequestClose: u.onRequestClose
                }, D.a.createElement("div", {className: Ie.main}, t, D.a.createElement("div", {className: Ie.creditCard}, D.a.createElement(L.B, {
                    className: Ie.heading,
                    level: 4,
                    text: v.creditCard()
                }), D.a.createElement(Fe, {
                    paymentMethodId: x,
                    onChange: N
                })), D.a.createElement("div", {className: Ie.coupon}, D.a.createElement(L.B, {
                    className: Ie.heading,
                    level: 4,
                    text: v.couponCode()
                }), null != Y && Y.discount ? D.a.createElement("p", {className: Ie.promotionCodeApplied}, v.couponUsed()) : D.a.createElement("div", {className: Ie.couponCodeForm}, D.a.createElement("div", {className: Ie.couponCodeInputContainer}, D.a.createElement(L.Jb, {
                    className: Ie.couponCodeInput,
                    disabled: le,
                    error: !!J.error,
                    onTextChange: te,
                    placeholder: v.promotionCodePlaceholder(),
                    value: G,
                    width: 360,
                    height: 32
                })), D.a.createElement(L.Ab, {
                    className: Ie.applyCouponButton,
                    disabled: de,
                    onClick: ie,
                    size: "small",
                    suspending: J.loading
                }, v.apply()), J.error && D.a.createElement("div", {className: Ie.couponErrorMessage}, Object(B.d)(p, J.error)))), void 0 === Y && D.a.createElement(L.R, {
                    className: Ie.loading,
                    size: 32
                }), re && D.a.createElement("table", {className: Ie.amount}, D.a.createElement("tbody", null, fe()(re).call(re, (function (e, n) {
                    var a, t = m()(e, 2), i = t[0], r = t[1];
                    return D.a.createElement("tr", {
                        key: h()(a = "".concat(n, "-")).call(a, i),
                        className: F()(s()({}, Ie.isDiscount, r < 0))
                    }, D.a.createElement("th", null, i), D.a.createElement("td", null, v.amount({amount: r})))
                })))), D.a.createElement(L.F, {className: Ie.hr}), D.a.createElement("div", {className: Ie.description}, D.a.createElement(L.u, {text: i}))), D.a.createElement("div", {className: Ie.action}, I && D.a.createElement("div", {className: Ie.paymentError}, I), D.a.createElement(L.Ab, {
                    className: Ie.purchaseButton,
                    disabled: ce,
                    onClick: ne,
                    suspending: ae
                }, c)))
            }, ze = a(2146), Ye = {insert: "head", singleton: !1}, Xe = (W()(ze.a, Ye), ze.a.locals || {}),
            Re = Object(I.a)({
                headline: {
                    id: "stripe.components.PurchaseModal.PurchasedModal.headline",
                    defaultMessage: "ご購入完了"
                }
            }), qe = function (e) {
                var n = e.children, a = e.completeButtonLabel, t = e.isOpen, i = e.onPurchaseCompleted, r = e.purchasedText,
                    o = Object(A.m)(Re);
                return D.a.createElement(L.C, {
                    classes: {spHeaderContentLeft: Xe.spHeaderContentLeft},
                    headline: o.headline,
                    isOpen: t,
                    onRequestClose: i
                }, D.a.createElement("div", {className: Xe.main}, D.a.createElement("div", {className: Xe.purchasedText}, r), D.a.createElement("div", {className: Xe.content}, n), D.a.createElement("div", {className: Xe.action}, D.a.createElement(L.b, {onClick: i}, a))))
            }, Ue = function (e) {
                var n = D.a.useState(!1), a = m()(n, 2), t = a[0], i = a[1], r = D.a.useCallback((function (e) {
                    void 0 === e ? i(!0) : (console.error("purchase failed", e), alert(e))
                }), []);
                return e.isOpen ? t ? D.a.createElement(qe, e) : D.a.createElement(se, null, D.a.createElement(We, le()({}, e, {onCompleted: r}))) : null
            }
    }, 2141: function (e, n, a) {
        "use strict";
        var t = a(2), i = a.n(t)()((function (e) {
            return e[1]
        }));
        i.push([e.i, '._1IBLChPBF6Mi4mvyb5X7AW ._36i1YMRuxWpSBY_ozIcJoj{display:-ms-grid;display:grid;grid-column-gap:16px;grid-row-gap:24px;grid-template-areas:"cardNumber cardExpiry cardCvc";-ms-grid-columns:5fr 16px 2fr 16px 2fr;grid-template-columns:5fr 2fr 2fr}@media (max-width:560px){._1IBLChPBF6Mi4mvyb5X7AW ._36i1YMRuxWpSBY_ozIcJoj{grid-template-areas:"cardNumber cardNumber" "cardExpiry cardCvc";-ms-grid-columns:1fr 1fr;grid-template-columns:1fr 1fr}}._1IBLChPBF6Mi4mvyb5X7AW ._2agPvWLGBeVGqHm6ehEKvF{-ms-grid-row:1;-ms-grid-column:1;grid-area:cardNumber;margin:0}._1IBLChPBF6Mi4mvyb5X7AW ._2NZGEVgoyF7WJzU3jyglcq{-ms-grid-row:1;-ms-grid-column:3;grid-area:cardExpiry;margin:0}._1IBLChPBF6Mi4mvyb5X7AW ._3Ekv0_poKQ25kxbm8XxKpD{-ms-grid-row:1;-ms-grid-column:5;grid-area:cardCvc;margin:0}@media (max-width:560px){._1IBLChPBF6Mi4mvyb5X7AW ._2agPvWLGBeVGqHm6ehEKvF{-ms-grid-row:1;-ms-grid-column:1;-ms-grid-column-span:2}._1IBLChPBF6Mi4mvyb5X7AW ._2NZGEVgoyF7WJzU3jyglcq{-ms-grid-row:2;-ms-grid-column:1}._1IBLChPBF6Mi4mvyb5X7AW ._3Ekv0_poKQ25kxbm8XxKpD{-ms-grid-row:2;-ms-grid-column:2}}._1IBLChPBF6Mi4mvyb5X7AW ._3_igH2_LBEfRfcmkTpYO9a{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;margin-top:16px;text-align:center}._1IBLChPBF6Mi4mvyb5X7AW ._3_igH2_LBEfRfcmkTpYO9a>button{width:auto;margin:0 12px;vertical-align:middle}._1IBLChPBF6Mi4mvyb5X7AW ._3_igH2_LBEfRfcmkTpYO9a>button._2M3oe_1UDfkNNjdf0Sq16L{padding:0 13px}._1IBLChPBF6Mi4mvyb5X7AW ._3_igH2_LBEfRfcmkTpYO9a>button._2fx-05TnK37H04CjB7HfWu{padding:0 22px}._1IBLChPBF6Mi4mvyb5X7AW .IcdNRXYZmVbLkkZDMCCwo{border-radius:16px;border:1px solid var(--colorgray2);padding:0 16px;height:32px}._1IBLChPBF6Mi4mvyb5X7AW ._3mrOJjM-Soc6NvCSHTMRVP{color:var(--colorRed);margin:8px 0;font-size:var(--fontsizeXSmall)}', ""]), i.locals = {
            AttachCreditCard: "_1IBLChPBF6Mi4mvyb5X7AW",
            cardForm: "_36i1YMRuxWpSBY_ozIcJoj",
            cardNumber: "_2agPvWLGBeVGqHm6ehEKvF",
            cardExpiry: "_2NZGEVgoyF7WJzU3jyglcq",
            cardCvc: "_3Ekv0_poKQ25kxbm8XxKpD",
            actions: "_3_igH2_LBEfRfcmkTpYO9a",
            cancel: "_2M3oe_1UDfkNNjdf0Sq16L",
            addCard: "_2fx-05TnK37H04CjB7HfWu",
            stripeElement: "IcdNRXYZmVbLkkZDMCCwo",
            errorNote: "_3mrOJjM-Soc6NvCSHTMRVP"
        }, n.a = i
    }, 2142: function (e, n, a) {
        e.exports = a(2143)
    }, 2143: function (e, n, a) {
        "use strict";

        function t(e) {
            return (t = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (e) {
                return typeof e
            } : function (e) {
                return e && "function" == typeof Symbol && e.constructor === Symbol && e !== Symbol.prototype ? "symbol" : typeof e
            })(e)
        }

        Object.defineProperty(n, "__esModule", {value: !0});
        var i, r = "https://js.stripe.com/v3", o = /^https:\/\/js\.stripe\.com\/v3\/?(\?.*)?$/,
            l = "loadStripe.setLoadParameters was called but an existing Stripe.js script already exists in the document; existing script parameters will be used",
            d = null, c = function (e) {
                return null !== d ? d : d = new Promise((function (n, a) {
                    if ("undefined" != typeof window) if (window.Stripe && e && console.warn(l), window.Stripe) n(window.Stripe); else try {
                        var t = function () {
                            for (var e = document.querySelectorAll('script[src^="'.concat(r, '"]')), n = 0; n < e.length; n++) {
                                var a = e[n];
                                if (o.test(a.src)) return a
                            }
                            return null
                        }();
                        t && e ? console.warn(l) : t || (t = function (e) {
                            var n = e && !e.advancedFraudSignals ? "?advancedFraudSignals=false" : "",
                                a = document.createElement("script");
                            a.src = "".concat(r).concat(n);
                            var t = document.head || document.body;
                            if (!t) throw new Error("Expected document.body not to be null. Stripe.js requires a <body> element.");
                            return t.appendChild(a), a
                        }(e)), t.addEventListener("load", (function () {
                            window.Stripe ? n(window.Stripe) : a(new Error("Stripe.js not available"))
                        })), t.addEventListener("error", (function () {
                            a(new Error("Failed to load Stripe.js"))
                        }))
                    } catch (e) {
                        return void a(e)
                    } else n(null)
                }))
            }, s = function (e, n, a) {
                if (null === e) return null;
                var t = e.apply(void 0, n);
                return function (e, n) {
                    e && e._registerWrapper && e._registerWrapper({name: "stripe-js", version: "1.13.1", startTime: n})
                }(t, a), t
            }, u = !1, m = function () {
                for (var e = arguments.length, n = new Array(e), a = 0; a < e; a++) n[a] = arguments[a];
                u = !0;
                var t = Date.now();
                return c(i).then((function (e) {
                    return s(e, n, t)
                }))
            };
        m.setLoadParameters = function (e) {
            if (u) throw new Error("You cannot change load parameters after calling loadStripe");
            i = function (e) {
                var n = "invalid load parameters; expected object of shape\n\n    {advancedFraudSignals: boolean}\n\nbut received\n\n    ".concat(JSON.stringify(e), "\n");
                if (null === e || "object" !== t(e)) throw new Error(n);
                if (1 === Object.keys(e).length && "boolean" == typeof e.advancedFraudSignals) return e;
                throw new Error(n)
            }(e)
        }, n.loadStripe = m
    }, 2144: function (e, n, a) {
        "use strict";
        var t = a(2), i = a.n(t)()((function (e) {
            return e[1]
        }));
        i.push([e.i, "._3Lom4T5kYW7kOBRh9qn4CE ._3sUx1lPpO33MpUXEvIMOca{margin:8px auto}._3Lom4T5kYW7kOBRh9qn4CE>ul>li{border-bottom:1px solid var(--colorgray3);padding-bottom:16px;margin-bottom:16px}._3Lom4T5kYW7kOBRh9qn4CE>ul>li:last-child{border-bottom:none}._3Lom4T5kYW7kOBRh9qn4CE>ul>li>label{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:start;-ms-flex-pack:start;justify-content:flex-start}._3Lom4T5kYW7kOBRh9qn4CE>ul>li>label ._1ByZxn6lz9Jmg4Kn8GJXkr{-webkit-box-flex:1;-ms-flex:1 1 auto;flex:1 1 auto;margin-left:12px}._3Lom4T5kYW7kOBRh9qn4CE ._JNx7TKWyLFzexInqTnec{margin:8px 0;font-size:var(--fontsizeSmall);color:var(--colorgray5)}._3Lom4T5kYW7kOBRh9qn4CE .xfzimoboN1stLcJfv1gGM{margin-top:16px;text-align:center}._3Lom4T5kYW7kOBRh9qn4CE .xfzimoboN1stLcJfv1gGM button{width:auto;padding:0 12px}", ""]), i.locals = {
            PaymentMethodChoice: "_3Lom4T5kYW7kOBRh9qn4CE",
            loading: "_3sUx1lPpO33MpUXEvIMOca",
            creditCard: "_1ByZxn6lz9Jmg4Kn8GJXkr",
            note: "_JNx7TKWyLFzexInqTnec",
            actions: "xfzimoboN1stLcJfv1gGM"
        }, n.a = i
    }, 2145: function (e, n, a) {
        "use strict";
        var t = a(2), i = a.n(t), r = a(202), o = a(147), l = a(409), d = i()((function (e) {
            return e[1]
        }));
        d.i(r.a, "", !0), d.i(o.a, "", !0), d.i(l.a, "", !0), d.push([e.i, ".DrvB89EqPmiruUE950nmk{margin-top:24px}@media (max-width:560px){.DrvB89EqPmiruUE950nmk{margin-top:0;min-height:calc(100vh - 187px);padding:16px}}._35Yb9tTxfFqNXpLy41Ergr{display:-webkit-box;display:-ms-flexbox;display:flex}._35Yb9tTxfFqNXpLy41Ergr>img{-webkit-box-flex:0;-ms-flex:none;flex:none;height:81px;width:144px}@media (max-width:560px){._35Yb9tTxfFqNXpLy41Ergr>img{height:40.5px;width:72px}}._35Yb9tTxfFqNXpLy41Ergr>h4{color:var(--colorFont);-webkit-box-flex:1;-ms-flex:auto;flex:auto;font-size:var(--fontsizeNormal);font-weight:400;margin:0 0 0 16px}@media (max-width:560px){._35Yb9tTxfFqNXpLy41Ergr>h4{font-size:var(--fontsizeSmall);margin-left:8px}}._3QFfUMx3IObZPP-ZNgQY-C{margin-top:24px}._3QFfUMx3IObZPP-ZNgQY-C ._1kewdyOJXiuzsvHbmefBB8{margin-bottom:16px}._3QFfUMx3IObZPP-ZNgQY-C>img{height:40px;width:100%}.gTfuspr3wSQ2dG5GEu2NB,._1xYQDh3oNEK6-DIzGYkHfq{color:red;margin:4px 0;font-size:var(--fontsizeSmall)}._1kewdyOJXiuzsvHbmefBB8{}@media (max-width:560px){._1kewdyOJXiuzsvHbmefBB8{font-size:var(--fontsizeSmall)}}._3W2YgUwhX3qCyVFYrx003Q{margin-top:24px}.sKaIo9d76c63ayZ2C_iZL{margin-top:8px;-webkit-box-align:center;-ms-flex-align:center;align-items:center;display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap}.sKaIo9d76c63ayZ2C_iZL>button{margin-left:8px}._1uXFt4ikQYds6U6TzGTYW0{position:relative}._1uXFt4ikQYds6U6TzGTYW0>i{color:var(--colorBlueVivid);position:absolute;right:16px;top:12px}@media (max-width:560px){._1uXFt4ikQYds6U6TzGTYW0>i{top:8px}}._1uXFt4ikQYds6U6TzGTYW0>i._1crt9pTrrsosK9BfV-j-0n{color:red}._2XUXfV9a1KsyEMVfvSK-ta{padding-right:40px;width:300px}@media (max-width:560px){._2XUXfV9a1KsyEMVfvSK-ta{width:100%}}._12WujUyIW1oo0k5jefKtvv{-webkit-box-flex:0;-ms-flex:none;flex:none}._3EkHI45E6v6z3TSowc-Pue{color:red;font-size:var(--fontsizeXSmall);margin-top:4px;-webkit-box-flex:1;-ms-flex:1 1 100%;flex:1 1 100%}@media (max-width:560px){._3EkHI45E6v6z3TSowc-Pue{font-size:var(--fontsizeXXSmall)}}.jNm8rDN0oK9-u1fuiptJ6{margin-top:8px;font-size:var(--fontsizeXSmall);color:var(--colorgray4)}._2Cvv14osUTbRnKXg07KmtF{border-spacing:40px 0;margin:24px auto 0;white-space:nowrap}._2Cvv14osUTbRnKXg07KmtF th{color:var(--colorgray4);font-size:var(--fontsizeXXSmall);font-weight:400;text-align:right}._2Cvv14osUTbRnKXg07KmtF td{color:var(--colorFont);font-size:var(--fontsizeXSmall);text-align:right}._2Cvv14osUTbRnKXg07KmtF tr._11K_Wnm9zY4_uCMo16mcMx>td,._2Cvv14osUTbRnKXg07KmtF tr._11K_Wnm9zY4_uCMo16mcMx>th{color:red}._2Cvv14osUTbRnKXg07KmtF tr:last-child th{font-weight:700;font-size:var(--fontsizeXSmall)}._2Cvv14osUTbRnKXg07KmtF tr:last-child td{font-weight:700;font-size:var(--fontsizeNormal)}._1YJn1pNdDOmLe9CDzuzfKh{margin-top:24px}._1iEYRbcxPuDDq3Fm-tSTvI{color:var(--colorFont);font-size:var(--fontsizeSmall);line-height:24px;margin-top:24px}@media (max-width:560px){._1iEYRbcxPuDDq3Fm-tSTvI{font-size:var(--fontsizeXXSmall)}}._1ENdQQ43D1VuVb1VyNIJQW{margin-top:24px;text-align:center}@media (max-width:560px){._1ENdQQ43D1VuVb1VyNIJQW{background-color:var(--colorWhite);bottom:0;-webkit-box-shadow:0 -2px 2px 0 rgba(0,0,0,.1);box-shadow:0 -2px 2px 0 rgba(0,0,0,.1);padding:4px 0;position:sticky}}._1ENdQQ43D1VuVb1VyNIJQW .x66td6O6zWrGuF_vFQWDo{margin:4px auto}.YjO8DVWbSHLmUeO15r5S0{font-size:var(--fontsizeSmall);color:var(--colorgray5)}@media (max-width:560px){.YjO8DVWbSHLmUeO15r5S0{font-size:var(--fontsizeXXSmall);color:var(--colorgray4)}}.mLqejTYGeSej0jBJWLbyb{margin:24px auto 0}", ""]), d.locals = {
            main: "DrvB89EqPmiruUE950nmk",
            overview: "_35Yb9tTxfFqNXpLy41Ergr",
            creditCard: "_3QFfUMx3IObZPP-ZNgQY-C",
            heading: "_1kewdyOJXiuzsvHbmefBB8 " + r.a.locals.root,
            cardError: "gTfuspr3wSQ2dG5GEu2NB",
            paymentError: "_1xYQDh3oNEK6-DIzGYkHfq",
            coupon: "_3W2YgUwhX3qCyVFYrx003Q",
            couponCodeForm: "sKaIo9d76c63ayZ2C_iZL",
            couponCodeInputContainer: "_1uXFt4ikQYds6U6TzGTYW0",
            couponCodeInputInvalid: "_1crt9pTrrsosK9BfV-j-0n",
            couponCodeInput: "_2XUXfV9a1KsyEMVfvSK-ta " + o.a.locals.root,
            applyCouponButton: "_12WujUyIW1oo0k5jefKtvv",
            couponErrorMessage: "_3EkHI45E6v6z3TSowc-Pue",
            promotionCodeApplied: "jNm8rDN0oK9-u1fuiptJ6",
            amount: "_2Cvv14osUTbRnKXg07KmtF",
            isDiscount: "_11K_Wnm9zY4_uCMo16mcMx",
            hr: "_1YJn1pNdDOmLe9CDzuzfKh " + l.a.locals.root,
            description: "_1iEYRbcxPuDDq3Fm-tSTvI",
            action: "_1ENdQQ43D1VuVb1VyNIJQW",
            purchaseButton: "x66td6O6zWrGuF_vFQWDo",
            note: "YjO8DVWbSHLmUeO15r5S0",
            loading: "mLqejTYGeSej0jBJWLbyb"
        }, n.a = d
    }, 2146: function (e, n, a) {
        "use strict";
        var t = a(2), i = a.n(t), r = a(410), o = i()((function (e) {
            return e[1]
        }));
        o.i(r.a, "", !0), o.push([e.i, "._23DZVJSJekXhfV5XTUxeuR{display:none}@media (max-width:560px){._361JqVQ6vbRF5_5FuhuHwV{padding:16px}}.ZSpsN58wP3UzLwmoIhaDf{color:var(--colorFont);font-size:var(--fontsizeSmall);line-height:24px;margin-top:24px;text-align:center}@media (max-width:560px){.ZSpsN58wP3UzLwmoIhaDf{font-size:var(--fontsizeSmall);margin-top:0}}._1LjhoL1C5yFf09-LvH0Juc{margin-top:32px}.Skx_8EJ6WaRBDPHYwYzrI{-webkit-box-align:center;-ms-flex-align:center;align-items:center;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;margin-top:24px}", ""]), o.locals = {
            spHeaderContentLeft: "_23DZVJSJekXhfV5XTUxeuR " + r.a.locals.spHeaderContent,
            main: "_361JqVQ6vbRF5_5FuhuHwV",
            purchasedText: "ZSpsN58wP3UzLwmoIhaDf",
            content: "_1LjhoL1C5yFf09-LvH0Juc",
            action: "Skx_8EJ6WaRBDPHYwYzrI"
        }, n.a = o
    }
}]);