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
pred inv4[] {
(all user: (one User) {
(no ad: (one Ad) {
(((user->ad) in posts) => ((user.posts) in Ad))
})
})
}





