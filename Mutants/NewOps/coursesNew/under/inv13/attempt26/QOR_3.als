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
pred inv13[] {
(one s: (one Student) {
(all c: (one Course) {
(all g: (one Grade) {
((((c->(s->g)) in grades) && (g in ((c.grades).(ordering/last[])))) => (some p: (one Project) {
(((s->p) in projects) && ((c->p) in projects))
}))
})
})
})
}





