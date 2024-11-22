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
(all c: (one Course),p1,p2: (one Person) {
(((c in (p1.enrolled)) && ((p2.enrolled) in c)) => ((p1.teaches) !in (p2.enrolled)))
})
}





