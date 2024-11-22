module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv8[] {
(all a: (one Ad) {
(((((User))->a) in sees) => (one v: (one User) {
((((v->a) in posts) && ((((User))->v) in follows)) || ((v->((User))) in suggested))
}))
})
}





