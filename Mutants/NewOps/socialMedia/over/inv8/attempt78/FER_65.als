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
(all a: (one Ad) {
(all u: (one User) {
(((a in (u.sees)) <=> (a in ((u.suggested).posts))) || (a in ((u.follows).follows)))
})
})
}





