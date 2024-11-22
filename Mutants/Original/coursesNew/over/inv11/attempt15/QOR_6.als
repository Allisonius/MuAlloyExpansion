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
pred inv11[] {
((lone st: (one Student),c: (one (st.enrolled)),g: (one Grade) {
((st->g) in (c.grades))
}) && (all c: (one Course) {
(all p: (one Person),g: (one Grade) {
(((p->g) in (c.grades)) => (c in (p.enrolled)))
})
}))
}





