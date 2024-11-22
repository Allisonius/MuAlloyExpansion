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
(some s: (one User) {
(((((User))->s) in suggested) => ((((User)) != s) && ((((User))->s) !in follows) && (some f: (one User) {
((s != f) && (((User)) != f) && ((((User))->f) in follows) && ((f->s) in follows))
})))
})
}





