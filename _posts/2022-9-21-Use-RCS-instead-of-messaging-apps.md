---
layout: post
title: "Messaging Apps Aren't a Good Idea"
date: 2022-09-21 23:05:24 +0200
categories: thoughts tech
---

Cell phones. They've been around longer than me, and they've spring
loaded our society into the often dubbed "communications age". It seems
like today anyone can just talk to anybody, wherever they are, simply
by pulling a phone out their pocket. Sounds great, right?

Well, anybody who's been living within the past 10 years knows that the
reality is far more nuanced. Yeah, to non-techies it *looks* like we
communicate with phones in a straightforward way, but that couldn't be
further from the truth. And this all started when app stores came along.

It *looked* like the arrival of the smartphone was gonna make
communications so much easier and richer in content. We now had better
cameras on phones, the ability to make video calls, and all sorts of
stuff that was previously relegated to "your home computer". But in
reality, standards don't move nearly as fast as innovation, and so it
was the duty of third party app developers to bring this richer
experience to smartphones. As you may infer from the title of this, I'm
specifically talking about **texting**.

Texting, for the longest time, had a pretty tight definition. It meant to
exchange text messages via SMS. And while not all cell phones have always
supported it, it's a fairly universal standard, one that lets a 20 year
old phone communicate with a modern smartphone. And you just have to give
it props for that.

While for regular text message endeavors, SMS was fine, and honestly
still is, it's not nearly flexible enough for the hardware that we now
have and for the speeds of the internet. Yeah sure MMS was a thing, but it
might as well not be for how awful (and expensive) it is.

Let's not beat around the bush anymore, we all know the story. Today, in
2022, if you're living a life, you're not using SMS to text. You're using
a **messaging app**. Yes, instant messaging has been around for years,
some protocols have existed for longer than SMS. And IM has very obvious
perks, like statuses, longer message support, discoverability, and
importantly support for media.

But messaging apps are very distinct from classic IMs, because unlike the
latter, messaging apps tend to be a) **proprietary**, and b)
**incompatible with each other**. Pretty much **all** messaging apps out
there use a **proprietary protocol**, allow only **one official client**,
and **aren't compatible with any other protocol**.

The result of this is the creation of big walled gardens that all reinvent
the wheel of texting in their own way, and mostly support the same features,
but all use different protocols, and no way to talk to each other. The extent
of these walled gardens is *so* big that hardly anyone even notices.
The transition to smartphones has been pretty gradual, and these apps have
established themselves very early, thus they have pretty much become the
standard, especially for people who don't know better.

In my country the big player in this space is WhatsApp. Which is no
surprise, given that it was the first of its kind and is also the most
popular in the world. Literally everyone with a smartphone here uses
WhatsApp. Even people that don't use any of its IM features, but just use it
to exchange text messages. That's how much of a monopoly it has. It's now
become synonymous with texting here.

There's also the odd Telegram user every now and then, usually a more tech
inclined person, but I couldn't tell you about someone who doesn't have
WhatsApp installed. It's the expected norm at this point.

It's not random the way these apps have become so popular.
I have yet to encounter a messaging app that, when trying to reach a user,
fallbacks to SMS or some other open protocol in case that user does not have
the app installed or isn't online to receive the messages. This is bad for
two reasons:
1.  the obvious one, is that it creates **vendor lock in**. Once a
    messaging app establishes itself as "*the* way to text" for a whole
    country, if somebody doesn't have it, they're pretty much cut off from
    everyone else. If these apps at least let you send messages in an
    alternative protocol like SMS, when doing otherwise is not possible,
    I guarantee you this wouldn't be as much of an issue at all.

    Nobody wants to think about the way they text, and no one does. Technical
    stuff is for us techies. Everyone else just wants stuff to work. When
    they see that you aren't reachable using WhatsApp, they think you're not
    reachable, *full stop*.

2.  simply put, because messaging apps work through the internet, if you
    don't have a connection in a particular moment, everyone who tries to
    reach you using an app, will not be able to. SMS by contrast works using
    GSM. If somebody just needs to send you a text message, that is more than
    appropriate, but as I stated in point 1, if it's not done automatically,
    people won't go to the extra mile to do it themselves, because 90% of
    people have no idea about anything I just said.

Plus, messaging apps are just a redundancy. We already have texing protocols
that every phone supports and already have a texting app on our phones  . Rather
than creating more and more of these apps looking to "solve every problem with
messaging" (see [xkcd 927](https://xkcd.com/927)), we should look to improve and
extend the systems already in place, to ensure that we get to have the new features,
without cutting off everyone who doesn't have a certain device with a certain app
installed. Instant messaging should allow everyone to talk seamlessly, not
**requiring** a certain technology, or branching off in a whole lot of different
technologies that in principle attempt to do the same thing yet are incompatible
with each other.

The thing that saddens me most is that this *was* the standard, 15 years ago.
I remember when we didn't have to think about "what app you use", Internet
loading times, compatibility issues and all that stuff. It didn't even matter
what phone you or your recipient had. It all just worked, like phone calls do.

The same can't be said today. Have you ever read some news headline that
WhatsApp or some other popular app is going to drop support for a whole stack
of old Android versions? It might seem like it's reasonable. But when you come
to think about it it's actually a very big deal. Due to the nature of messaging
apps, the client not being supported means no way to communicate through it.

Sure, Android 4.4 is a very old version, but not everybody needs or has the ability
to upgrade their device. I can guarantee you that an Android 4.4 phone can fulfill
the needs of someone who's just looking to call and text, and take the odd photo.
But because "texting" now means "to use a proprietary messaging app", if the company
decides you're cut off, *you're cut off*. And everyone around you **will** still
expect to reach you through it. In other words, that perfectly good phone (think
Galaxy S2 or Nexus 4) will now get thrown away and become e-waste, because a
messaging app no longer works.
Since the rise of proprietary messaging apps the bar for compatibility has dropped
from 20+ years of support to just over 10.

This level of control over compatibility means that essentially, a piece of
hardware, or a software platform, has no hopes of establishing itself until
the big messaging apps start deciding to support it. And even established
systems may fall apart in days if the app decides to drop the support.
This severely cripples innovation, strengthens the duopoly of the mobile
space, and it's already happened so many times. Yes, I'm thinking of you,
Windows Phone. And meego, Symbian, Firefox OS, Ubuntu touch, you name it.

Compatibility is not the only way these messaging apps can just screw a
bunch of people over. Think now of *security* What if the messaging app
that you use for all your communications, and is also used by 3 billion
people, suddenly has a data breach? Well, now you're fucked because all of
your private messages go through that company's service. Yeah, sure, the
company says they're using encryption, but realistically, end to end
encryption is useless if a fault is found on the client side, and we're not
even going to tackle government requests because you can leave that discussion
to other people.

In short, the nature of these messaging apps involves a lot of incompatibility
by design. No compatibility with older devices, no compatibility with
unsupported systems, no compatibility with each other even. The issue is tied
to the closed nature of these apps, in contrast to open protocols, which over
the years have proven to work across a moltitude of different devices and
configurations, because the **standard**, the **servers** and **clients** are
all separate.

With open protocols, an operating system's support for the protocol is
dependent only on the OS itself, which can just include its own client, if
none is available. Compare that to the silo-messaging apps, and there it's a
whole different story: *the server, client and protocol spec are all in the
hands of one company*, and even if they do provide an API, it's not a spec,
and the servers are still theirs. In other words support is never guaranteed
and is fully dependant on whatever company is behind the walled garden.

When it comes to instant messaging there are loads of examples of standard
protocols, which have worked across a load of different systems over tens
of years. Think xmpp, IRC, email, and recently, Matrix and Fediverse. I'm
well aware that not all of these are appropriate for today or evolved in
an adequate way, but they're built to be **interoperable** or can at least
be **bridged** together, especially more recent standards.

Alright, it's time for me to talk about the alternative to all of this mess.
It's not perfect either, but it checks all the boxes of a good solution: it's
a) a **standard**, b) designed for the **default messaging** clients of
phones, c) **interoperable** across servers and d) **supports fallback to an
established protocol**, in this case **SMS**. I'm, of course, talking about
iMessage. Nah, just kidding, I'm talking about **RCS**. You may have heard of
it: Google is pushing hard for its adoption and has its own in house client
for it, Google Messages, which just so happens to be Android's default
messaging app. But RCS is not Google, it was started and developed by the
GSMA and designed for adoption by carriers, because RCS is thought of as a
more modern revision of SMS.

Essentially, RCS provides all the features of a messaging app, minus all the
"walls". RCS support is not dependent on the type of device, rather it's the
duty of OS developers to write a compatible stack, and if not, third party
clients can be written. Ideally, all of these clients should be able
to talk to each other, and all RCS servers should too.

RCS runs over IP, so it requires an internet connection, but the good thing
about it is that it's built to allow a fallback to SMS messages, which ensures
that not only will text messages get across even without a stable connection,
but also if either party doesn't support RCS. And all of this is done
seamlessly by the client. Carriers typically also allow this happening on the
server side, since they also have access to SMS infrastructure, which allows
them to directly route RCS and SMS traffic together.

Yes, RCS is not without its disadvantages. For one, the indisputed big player
in the RCS space is Google, who provide both the most popular client as well
as the most used server (see [Google Jibe](https://jibe.google.com)). This
doesn't sound much better than proprietary messaging apps, but in this case
we're at least still dealing with a standard, that technically anyone can
implement. There's also plenty of existing carrier servers alongside Google's,
so we can rest assured that they're not going to monopolize this space too.
But the concern is still there and it might not be long before we're dealing
with a Chromium-like situation.

Anyways, the GSMA's [official FAQ](https://www.gsma.com/solutions-and-impact/technologies/networks/rcs-frequently-asked-questions/)
actually explains a lot of my points quite well. So if you haven't been
convinced yet, go and check that out, and then open your phone's default
texting app and write to someone. And by someone I mean anyone, because
you won't have to worry about what they're running ;)


<i class="faded">Fun fact: Windows Phone was one of the first OS to include
support for RCS and it still works fine. Name me something else that does.</i>