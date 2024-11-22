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
(all per: (one Person) {
((per in Grade) => (all c: (one Course) {
(lone pro: (one Project) {
(((c->pro) in projects) && ((per->pro) in projects))
})
}))
})
}





