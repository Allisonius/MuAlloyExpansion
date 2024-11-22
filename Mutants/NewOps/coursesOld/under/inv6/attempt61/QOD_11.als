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
(all pr1: (one Project) {
(((((Student))->pr1) in projects) => (some c1: (one Course) {
(((c1->pr1) in projects) && ((((Student))->c1) in enrolled))
}))
})
}





