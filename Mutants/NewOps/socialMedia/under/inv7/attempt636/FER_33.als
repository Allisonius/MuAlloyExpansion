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
pred inv7[] {
(all s,u: (one User) {
(((u != s) && ((u->s) in posts)) => (some u1: (one User) {
((u1 != s) && (u1 != u) && ((u->u1) in follows) && ((u1->s) in follows) && ((u->s) !in follows))
}))
})
}





