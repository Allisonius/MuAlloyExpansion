module unknown
open util/integer [] as integer
open util/ordering [Grade] as ordering
sig Person {
teaches: (set Course),
enrolled: (set Course),
projects: (set Project)
}
sig Professor in Person {}
sig Student in Person {}
sig Course {
projects: (set Project),
grades: (Person->Grade)
}
sig Project {}
sig Grade {}
pred inv9[] {
(all s: (one Student) {
(all p: (one Professor) {
(all c,c2: (one Course) {
(((c != (s.enrolled)) && (c in (p.enrolled))) => (!((c2 in (p.teaches)) && (c2 in (s.enrolled)))))
})
})
})
}





