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
((all p: (one Photo) {
(((((User)) != ((User))) && ((((User))->((User))) in follows) && ((((User))->p) in sees)) => ((((User))->p) in posts))
}) && (all u: (one User) {
(all ad: (one Ad) {
(((u->ad) in sees) => ((u->ad) !in posts))
})
}))
}





