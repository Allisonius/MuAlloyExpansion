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
(lone p_act: (one Project) {
(((some (p_act & (((Course)).projects))) && (some (((Course)) & (((Student)).enrolled)))) => (p_act in (((Student)).projects)))
})
}





