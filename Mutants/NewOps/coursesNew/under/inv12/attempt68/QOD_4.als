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
pred inv12[] {
(all g1,g2: (one Grade) {
(all s: (one Student) {
(((((Course)) in (s.enrolled)) && (((Course)) in (s.enrolled)) && ((s->g1) in (((Course)).grades)) && ((s->g2) in (((Course)).grades)) && (g1 != g2)) => (((Course)) != ((Course))))
})
})
}





