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
pred inv7[] {
(all c: (one Course) {
(all s1: (one Student) {
(all s2: (Person - Professor) {
(((s1 in ((c.projects).(~enrolled))) && (s2 in ((c.projects).(~enrolled)))) <=> (s1 = s2))
})
})
})
}





