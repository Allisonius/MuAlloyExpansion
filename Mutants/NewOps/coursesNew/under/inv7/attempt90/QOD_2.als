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
(all pro1,pro2: (one Project) {
(all c: (one Course) {
(((((Person)) in Student) && (pro1 in (((Person)).projects)) && (pro2 in (((Person)).projects)) && (pro1 in (c.projects)) && (pro1 != pro2)) => (pro2 !in (c.projects)))
})
})
}





