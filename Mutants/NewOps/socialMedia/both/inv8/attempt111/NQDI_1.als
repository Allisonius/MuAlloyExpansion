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
(all disj u,i: (one User),disj a: (one Ad) {
((((a in (u.sees)) && (a in (i.posts))) => (i in (u.follows))) || (i in (u.suggested)))
})
}





