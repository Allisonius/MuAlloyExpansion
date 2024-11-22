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
(all t: (one Person) {
((all c: (one Class) {
((all g: (one Group) {
((c->(((Person))->g)) in Groups)
}) && ((t->c) in Teaches))
}) => ((t->((Person))) in Tutors))
})
}





