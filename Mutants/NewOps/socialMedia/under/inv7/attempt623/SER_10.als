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
(all u,s: (one Influencer) {
(((u->s) in suggested) => (((u->s) !in follows) && (some f: (one User) {
((u != s) && (s != f) && (u != s) && ((u->f) in follows) && ((f->s) in follows))
})))
})
}





