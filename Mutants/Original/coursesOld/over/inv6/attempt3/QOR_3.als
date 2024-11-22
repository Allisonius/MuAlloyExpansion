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
(lone p1: (one Person) {
(all pr1: (one Project) {
(((p1->pr1) in projects) => (some c1: (one Course) {
(((c1->pr1) in projects) && ((c1->p1) in enrolled))
}))
})
})
}





