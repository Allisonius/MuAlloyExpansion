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
(all u,s: (one Photo) {
(((u->s) in suggested) => ((u != s) && ((u->s) !in follows) && (some f: (one User) {
((s != f) && (u != s) && ((u->f) in follows) && ((f->s) in follows))
})))
})
}





