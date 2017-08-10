# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
    {username:"mdo5004", email:"michaeldavidoconnell@gmail.com", password:"password", first_name:"Michael", last_name:"O'Connell"},
    {username:"levmason", email:"levi.s.mason@gmail.com", password:"password", first_name:"Levi", last_name:"Mason"},
    {username:"ryanomusic", email:"ryanoconnellmusic@gmail.com", password:"password", first_name:"Ryan", last_name:"O'Connell"}])
songs = users[0].songs.create([
    {title:"Stairway to Heaven", artist:"Led Zeppelin", content:"{t:Stairway to Heaven}
{st:Led Zeppelin}

{c:Intro:}
         [Am]     [G#+]     [C]     [D]     [Fmaj7]     [G]   [Am]
There's a [Am]lady who's [G#+]sure all that [C]glitters is [D]gold
and she's [Fmaj7]buying a stairway to [G]hea[Am]ven
When she [Am]gets there she [G#+]knows if the [C]stores are all [D]closed
with a [Fmaj7]word she can get what she [G]came [Am]for
[C]Oh_[D]__ [Fmaj7]oh____ [Am]and she's [C]buying a [G]stairway to [D]heaven
There's a [C]sign on the [D]wall but she [Fmaj7]wants to be [Am]sure
'cause you [C]know sometimes [D]words have two [Fmaj7]meanings

In a [Am]tree by the [G#+]brook there's a [C]songbird who [D]sings
Sometimes [Fmaj7]all of her thoughts are [G]mis[Am]given

[Am]     [G#+]     [C]     [D]     [Fmaj7]     [G]   [Am]
[G/B]    [Am7]     [Dsus4]     [D]Oh___ it makes me [Am7]wonder   [Em]   [D]   [C]    [D]
[Am7]Oh___ [Dsus4]it  [D]makes me wonder [Am7]     [Em]     [D]     [C]     [D]

There's a [C]feeling I [G]get when I [Am]look to the west 
and my [C]spirit is [G]crying for [F]lea[Am]ving
In my [C]thoughts I have [G]seen rings of [Am]smoke through the trees
and the [C]voices of [G]those who stand [F]loo[Am]king
[Am7]     [Dsus4]   Oh___ [D]it makes me wonder [Am7]     [Em]     [D]     [C]     [D]
[Am7]Oh___[Dsus4] it [D]really makes me wonder [Am7]     [Em]     [D]     [C]     [D]

And it's whispered that soon if we all call the tune
then the piper will lead us to reason
And the new day will dawn for those who stand long
and the forest will echo with laughter

If theres a bristle in your hedgerow dont be alarmed now
it's just a spring clean for the May queen
Yes there are two paths you can go by but in the long run
there's still time to change the road you're on

Your head is humming and it wont go in case you dont know
the pipers calling you to join him
Dear lady can you hear the wind blow and did you know
your stairway lies on the whispering wind

[D]     [Dsus2]     [D]     [Dsus4]      [D]     [Dsus2]     [D]     [Dsus4]     [C]     [Cadd9]     [C]     [Cadd9]     [C]
{np}



{c:For the solo and the remaining lyrics use a Am  G  F  G  barre chord sequence}

{c:Solo} 

And as we wind on down the road
Our shadows taller than our soul
There walks the lady we all know
Who shines white light and wants to know
how everything still turns to gold
And if you listen very hard
the time will come to you at last
When all are one and one is all
To be a rock and not to roll

And she's [Fmaj7]buying a stairway [G]to [Am]heaven

"},
    {title:"Who Are You", artist:"The Who",content:"{t:Who Are You}
{st:The Who}

{c:A? = bar second fret on first three strings}

{c:Chorus:}
        [E]Who are [D]you, [A?]who [E]who, [A?]who [E]who   (x4)

        [E]I woke up in the [D]Soho bar when a [A]policeman knew my [C]na[G]me. He said,
        '[E]You can go sleep at [D]home tonite if you can [A]get up and walk [C]aw[G]ay.'
             (repeat the who way through....)
        I staggered back to the underground and a breeze through back my
        head. I remember throwing punches around and preachin' from my
        chair.

        (play chorus section)
        Who are you (Who are you, who who, who who), I really want to know
        (Who are you, who who, who who) Come on tell me who are you
        (Who are you, who who, who who) Awww, who the fuck are you (Who are
        you, who who, who who).

        I know there's a place you walk where love falls from the trees.
        My heart is like a broken cut - it only hurts when I'm on my knees.
        I spill out like a sewer hole yet still receive your kiss. How can
        I measure up to anyone now after such a love as this? (chorus)"}
    ])
User.first.friends << users[1]
User.first.friends << users[2]
users[1].friends << users[2]
users[1].songs << songs[1]

