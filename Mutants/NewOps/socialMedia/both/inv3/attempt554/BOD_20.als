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
((lone u2: (one User) {
(((u->u2) in follows) && ((u2->p) in posts))
}) || (p in Ad))
})
}





