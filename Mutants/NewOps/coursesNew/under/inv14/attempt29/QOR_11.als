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
pred inv14[] {
(all x: (one Student) {
(all resto: (one (Student - x)) {
(one p: (one (x.projects)) {
(all p2: (one (resto.projects)) {
(lone (p & p2))
})
})
})
})
}





