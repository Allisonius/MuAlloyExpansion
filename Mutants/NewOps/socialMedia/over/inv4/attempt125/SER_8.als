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
(all user: (one Photo) {
((user in User) && (some ad: (one univ) {
((((user->ad) in posts) && (ad in Ad)) => (all photo: (one univ) {
((photo in Photo) && ((user->photo) in posts) && (photo in Ad))
}))
}))
})
}





