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
((all ph: (one Photo) {
(((ph in (((User)).posts)) && (ph in (((User)).sees))) => ((((User)) in (((User)).follows)) && (((User)) != ((User)))))
}) && (all u1,u2: (one User) {
(all ph: (one Photo) {
(some ad: (one Ad) {
(((ph in (u1.sees)) && (ph in (u2.posts)) && (u1 !in (follows.u2))) => (ph = ad))
})
})
}))
}





