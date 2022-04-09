(set-logic QF_UF)
(declare-sort S 0)
(declare-fun f (S) S)
(declare-fun x1 () S)
(declare-fun x2 () S)
(declare-fun x3 () S)
(declare-fun x4 () S)
(declare-fun x5 () S)
(declare-fun fx1 () S)
(declare-fun fx3 () S)

(assert (= x1 x2))
(assert (= x2 x3))
(assert (= x4 x5))
(assert (not (= x5 x1)))
(assert (= fx1 (f x1)))
(assert (= fx3 (f x3)))
(assert (not (= fx1 fx3)))

(check-sat)