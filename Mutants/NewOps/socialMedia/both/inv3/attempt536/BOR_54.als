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
pred inv3[] {
(all u: (one User),p: (one Photo) {
(all f: (one User) {
((((u->p) in sees) && ((f->p) in posts) && (p in Ad)) => ((u->f) in follows))
})
})
}





