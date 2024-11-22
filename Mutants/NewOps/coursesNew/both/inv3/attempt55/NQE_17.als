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
pred inv3[] {
(one z,y: (one Person) {
(all x: (one Course) {
((((z->x) in enrolled) && (z in Student)) => (((y->x) in teaches) && (y in Professor)))
})
})
}





