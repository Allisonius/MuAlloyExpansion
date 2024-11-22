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
(all p2: (one Student) {
(all p: (one Person) {
(all c1: (one Course) {
((((p2->c1) in teaches) && ((p->c1) in enrolled) && (p != p2)) => (p !in Professor))
})
})
})
}





