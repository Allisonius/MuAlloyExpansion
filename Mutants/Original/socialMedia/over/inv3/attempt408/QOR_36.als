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
((all u: (one User) {
(all p: (one (Photo - Ad)) {
(((u->p) in sees) => (p in ((u.follows).posts)))
})
}) && (lone u: (one User) {
(all p: (one Photo) {
(all a: (one Ad) {
((((u->a) in posts) && ((u->p) in posts)) => (p in Ad))
})
})
}))
}





