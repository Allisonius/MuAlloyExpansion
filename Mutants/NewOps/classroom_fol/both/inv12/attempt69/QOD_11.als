module unknown
open util/integer [] as integer
sig Person {
Tutors: (set Person),
Teaches: (set Class)
}
sig Group {}
sig Class {
Groups: (Person->Group)
}
sig Teacher in Person {}
sig Student in Person {}
pred inv12[] {
((some x: (one Class) {
((((Teacher))->x) in Teaches)
}) => (some g: (one Group) {
((((Teacher))->g) in Tutors)
}))
}





