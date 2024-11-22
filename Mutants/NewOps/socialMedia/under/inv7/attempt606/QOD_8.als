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
(all f: (one User) {
((f in (((User)).suggested)) => (some v: (one User) {
(((v->f) in follows) && ((((User))->v) in follows) && (((User)) != f) && (((User)) != v) && (f != v))
}))
})
}





