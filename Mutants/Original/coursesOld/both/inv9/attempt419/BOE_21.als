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
(all x,x1: (one Person) {
(some c: (one Course) {
(((teaches in (x->c)) && ((x1->c) in enrolled) && (x != x1)) => (x1 !in Professor))
})
})
}





