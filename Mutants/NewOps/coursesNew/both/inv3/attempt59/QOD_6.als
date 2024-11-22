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
(some z: (one Student),y: (one Person) {
((((z->((Course))) in enrolled) && (z in Student)) => (((y->((Course))) in teaches) && (y in Professor) && (z != y)))
})
}





