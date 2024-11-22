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
pred inv5[] {
((all a: (Person - Professor),b: (one Project) {
((b in (a.projects)) => (a in Student))
}) && (some c: (one Person) {
(all d: (one Project) {
(d in (c.projects))
})
}))
}





