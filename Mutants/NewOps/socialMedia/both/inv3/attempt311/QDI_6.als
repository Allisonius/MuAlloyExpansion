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
(all p: (Photo + Ad),x,y: (one User) {
((((x->p) in sees) && ((y->p) in posts)) => ((x->y) in follows))
})
}





