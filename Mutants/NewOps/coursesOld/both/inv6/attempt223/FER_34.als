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
pred inv6[] {
(!(some s: (one Student) {
(some proj: (one Project),c: (one Course) {
(((c->proj) in projects) && ((s->proj) in teaches) && ((s->c) !in enrolled))
})
}))
}





