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
(all p: (one Professor) {
(all p1: (one Person) {p1 != p =>  {p1 != p =>  {
(all c: (one (p1.enrolled)) {
((c in (p.enrolled)) => ((p.teaches) !in c))
})
}}})
})
}





