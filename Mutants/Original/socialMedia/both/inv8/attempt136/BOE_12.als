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
(all a: (one Ad),u,x: (one User) {
((((u->x) in follows) => (((u->a) in sees) && ((x->a) in posts))) || ((u->x) in suggested))
})
}





