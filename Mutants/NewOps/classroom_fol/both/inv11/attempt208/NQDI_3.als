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
pred inv11[] {
(all c: (one Class) {
(all s: (one Student) {
(some t: (one Teacher) {t != s =>  {t != s =>  {
(some g: (one Group) {
(((c->(s->g)) in Groups) => ((t->c) in Teaches))
})
}}})
})
})
}





