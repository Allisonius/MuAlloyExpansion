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
(all p1,p2: (one Project),s: (one Student) {
(((p1 in ((s.enrolled).projects)) && (p2 = ((s.enrolled).projects))) => (p1 = p2))
})
}





