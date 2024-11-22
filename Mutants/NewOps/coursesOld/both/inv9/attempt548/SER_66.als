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
(some p: (one Person) {
(some c: (one Course) {
(((p in Professor) && ((p->c) in teaches)) => (all r: (one Person) {
((r in Student) => ((r->c) !in enrolled))
}))
})
})
}





