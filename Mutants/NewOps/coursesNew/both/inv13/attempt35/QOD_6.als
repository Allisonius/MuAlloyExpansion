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
(all pM: (one ((((Course)).grades).Grade)) {
((all p: (one ((((Course)).grades).Grade)) {
(ordering/gte[(pM.(((Course)).grades)),(p.(((Course)).grades))])
}) => (some ((pM.projects) & (((Course)).projects))))
})
}





