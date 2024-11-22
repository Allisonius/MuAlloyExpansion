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
(all u1: (one Person),u2: (one Person),u3: (one Course),proj: (one Project) {
(((proj in (u1.projects)) && (proj in (u2.projects)) && (proj in (u3.projects))) => (u3 != u2))
})
}





