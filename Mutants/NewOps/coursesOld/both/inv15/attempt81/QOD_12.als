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
pred inv15[] {
(((((Project)) in (((Student)).projects)) && (((Project)) in (((Student)).projects)) && (((Project)) in (((Course)).projects))) => (((((Student)) in ((((Course)).grades).Grade)) && (((Student)) in ((((Course)).grades).Grade))) => (((((Student)).(((Course)).grades)) = ((((Student)).(((Course)).grades)).(ordering/prev[]))) || ((((Student)).(((Course)).grades)) = ((((Student)).(((Course)).grades)).(ordering/prev[]))))))
}





