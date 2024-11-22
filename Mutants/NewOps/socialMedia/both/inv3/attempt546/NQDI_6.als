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
(all disj u,f: (one User),disj p,s: (one Photo),disj a: (one Ad) {
((((u->s) in sees) => (((u->f) in follows) && ((f->p) in posts) && (s = p))) || (s = a))
})
}





