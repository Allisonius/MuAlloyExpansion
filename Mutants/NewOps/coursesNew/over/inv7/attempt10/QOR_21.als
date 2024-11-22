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
(all per: (one Person) {
(no c: (one Course) {
(((pro1 in (per.projects)) && (pro2 in (per.projects)) && (pro1 in (c.projects))) => (pro2 !in (c.projects)))
})
})
})
}





