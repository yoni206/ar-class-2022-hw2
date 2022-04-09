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
(declare-fun ffx1 () S)
(declare-fun ffx3 () S)

(assert (= x1 x2))
(assert (= x4 x5))
(assert (= fx1 (f x1)))
(assert (= fx3 (f x3)))
(assert (= fx1 fx3))
(assert (= ffx1 (f fx1)))
(assert (= ffx3 (f fx3)))
(assert (not (= ffx1 ffx3)))

(check-sat)
