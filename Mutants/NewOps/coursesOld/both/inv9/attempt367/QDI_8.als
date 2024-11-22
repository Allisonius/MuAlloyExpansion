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
(all t1,t2: (Person - Student) {
(((t1 != t2) && (some ((t1.enrolled) & (t2.enrolled)))) => (no ((t1.enrolled) & (t2.teaches))))
})
}





