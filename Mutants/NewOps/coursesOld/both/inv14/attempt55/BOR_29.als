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
(all s: (one Student) {
(all disj p1,p2: (one (s.projects)) {
(one (((Person.projects) & p1) & ((Person.projects) - p2)))
})
})
}





