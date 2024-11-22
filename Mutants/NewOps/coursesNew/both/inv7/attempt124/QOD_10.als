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
(one p: (one Project) {
(((p in (((Person)).projects)) && (((Person)) in Student) && (p in (c.projects))) => (c in (((Person)).enrolled)))
})
})
}





