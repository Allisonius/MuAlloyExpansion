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
pred inv14[] {
(some t: (one Teacher) {
((some c: (one Class) {
((some g: (one Group) {
((c->(((Student))->g)) in Groups)
}) && ((t->c) in Teaches))
}) && ((t->((Student))) in Tutors))
})
}





