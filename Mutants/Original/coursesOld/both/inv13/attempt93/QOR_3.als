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
(lone s: (one Student),c: (one Course),g: (one Grade) {
(((c->(s->g)) in grades) => (one p: (one Project) {
(((c->p) in projects) && ((s->c) in enrolled))
}))
})
}





