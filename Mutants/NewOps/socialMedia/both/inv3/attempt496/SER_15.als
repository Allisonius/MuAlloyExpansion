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
(all u: (one Day),p: (one Photo),us: (one User) {
((p in (u.sees)) => ((p in Ad) || (((us->p) in posts) => ((u->us) in follows))))
})
}





