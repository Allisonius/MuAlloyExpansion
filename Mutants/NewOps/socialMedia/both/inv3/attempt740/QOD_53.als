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
((all a: (one Ad) {
(all u: (one User) {
((u->a) in sees)
})
}) && (all p: (one (Photo - Ad)) {
((((((User))->p) in sees) && ((((User))->p) in posts)) => ((((User))->((User))) in follows))
}) && (all u: (one User) {
(all p: (one Photo) {
(((u->p) in posts) => ((u->p) !in sees))
})
}))
}





