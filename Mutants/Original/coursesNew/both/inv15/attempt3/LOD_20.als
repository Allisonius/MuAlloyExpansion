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
pred inv15[] {
(all disj s1,s2: (one Student) {
(all c: (one Course) {
(some p: (one Project) {
((p in (s1.projects)) => ((s1.((projects.p).grades)) = (s2.((projects.p).grades))))
})
})
})
}





