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
(all s: (Person + Student) {
(all m1: (one (s.(Course.grades))),m2: (one ((((s.projects).(~projects)) - s).(Course.grades))) {
(m1 in ((m2 + (m2.(ordering/prev[]))) + (m2.(ordering/next[]))))
})
})
}





