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
pred inv12[] {
((all s: (one Student) {
(lone (((grades.Grade).s) & (s.enrolled)))
}) && (all s: (one Course),c: (one (s.enrolled)) {
(lone ((grades.Grade).s))
}))
}





