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
pred inv13[] {
(all c: (one Course) {
(all pM: (one ((c.grades).Grade)) {
((all p: (one ((c.grades).Grade)) {
(ordering/gte[(pM.(c.grades)),(p.(c.grades))])
}) <=> (some ((pM.projects) & (c.projects))))
})
})
}





