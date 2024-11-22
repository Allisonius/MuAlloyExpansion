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
(all u: (one User),a: (one Ad) {
(((u->a) in sees) => (some u1,u2: (one User) {u1 != u =>  {u1 != u =>  {
(((u->u1) in follows) || ((u->u2) in suggested))
}}}))
})
}





