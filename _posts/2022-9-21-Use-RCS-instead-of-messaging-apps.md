---
layout: post
title: "Use RCS Instead Of Messaging Apps"
date: 2022-09-21 23:05:24 +0200
categories: thoughts tech
---

How do you message all of your friends and relatives? Is there more than
one answer? When you know a lot of people, you just can't seem to agree
on what messaging system to use.

Probably, you've had to sign up to some messaging service used by your
workplace for communications and now everyone is starting to text you
there, even though you wouldn't use it for anything else. It's really
frustrating.

This creates a massive communication barrier, and that seems ironic for
a technology that was meant to open up information. Why does it have to
be that way?

Back in the 2000's and early 2010's the answer to that question was
obvious, you just hit them up with an SMS and they'd text you back,
whatever phone you or they were using.

------------------------------------------------------------------------

At the time, however, an SMS message usually cost about 50 cents if your
mobile plan didn't cover them, and the simple mention of MMS would
strike fear into any phone user. This was mostly a carrier problem, but
it was widespread enough that, at least in my country, sending an SMS
message was considered risky. Most people just called.

So in 2009 [WhatsApp](https://whatsapp.com) launched as a paid service,
for around 89 cents a year. It stayed that way up until early 2014.
WhatsApp got so popular in a matter of years because internet access was
becoming cheaper and more widely available.

Because carriers didn't start lowering text fees until very late in
2017, and app stores kept pushing these apps, the rise to power of
WhatsApp and later Facebook started causing a vendor lock in issue *so
big* that people nowadays don't even notice it.

In fact, whatever person you talk to just takes for granted that you
have WhatsApp on your phone and when I bring up the fact that I *don't*
want it I just look "weird".

Okay, so let me explain why I think messaging apps are really bad:

1.  If you use these apps you're creating a big vendor lock in barrier
    around yourself. In order to receive and respond to your message,
    all your friends need to have the app installed, which can be
    uncomfortable if proprietary, and outright impossible in some cases,
    like if they don't have a smartphone, access to the Internet or an
    unsupported OS, all this further increasing the company's reach in
    power and lock-in.

    Using these apps is massively detrimental to the world's freedom.
    Not only does your recipient **need** to get a **smartphone**, a
    **data plan** (which is often expensive in some countries) and an
    **operating system** supported by the app, so either Android or iOS,
    but they'll also have to be **forced** to download and use the
    often proprietary app.

    Even if you don't believe that's an issue (and that's a very
    selfish thing to believe), if at any point in time the company
    behind your messagging app has a data breach, stops supporting your
    OS, installs backdoors in the app, or outright bans you from using
    their services (which has happened to a friend of mine *twice*), you
    can **do nothing** but question your life choice of delegating all
    of your data and communications to a single for profit company.

    WhatsApp has had numerous data breaches, cases of government
    censorships and backdoor requests, user ban waves, and recently
    stopped supporting Android versions 4.4 and lower, following the
    steps of Google.

    Just think about if for a moment. You can be **banned** from your
    primary communication method if the company decides it is in their
    interest to do so, and they won't guarantee that they'll give you
    any reasoning or give you the services back. Also if you have an
    unsupported device, good luck with finding an alternate way to talk
    using a **proprietary protocol** that nobody knows how it works and
    thus need to use the app for.

    If you, or your recipient, have a button phone with no Internet
    connection, or even a Windows Phone, they won't be able to
    communicate with you if you only use those apps. This causes many
    issues in workplaces, families, and people in developing countries,
    who usually need to communicate important stuff: using proprietary
    services for this is very harmful.

2.  When you send a WhatsApp message to your friend, it first goes from
    your phone to a WhatsApp data center, that makes sure to deliver
    your message to the recipient. No one ever knows what happens in
    those servers, for how long exactly your messages are stored, and
    whoever could access them. The same can be said about Telegram and
    other proprietary messaging apps.

3.  I can't tell you the amount of times I have been told by friends,
    professors, and relatives that I just "nEeD tO gEt WhAtsApp". No, if
    you want to talk to me, you and I both have a phone number, just
    text me, and I'll get back to you. Why would I have to be *forced*
    to sign up for a proprietary service I don't want and agree to a
    [terms and conditions contract](https://whatsapp.com/privacy) that I
    don't even agree with just to chat with someone else? (If you are
    the type of person to do this, I'd rather just not talk to you)

    This goes for any messaging apps, and is the most obnoxious thing
    about them. Most don't care to open source their protocol or to use
    an existing open standard. They'd rather have the most amount of
    people possible to use their private service and have *full control*
    over them.

    This is one of the legal loopholes that companies love to use to get
    around antitrust laws. Technically installing their app or not is
    still your choice, but if you choose not to, you'll be missing out
    on all those contacts and vice versa. And yeah, as hinted before,
    that's precisely why messaging apps generally don't fallback. They
    don't care about compatibility or accessibility, in fact they want
    you to be *forced to use their service* in some way.

4.  The big majority of messaging apps are proprietary. In the case of
    Telegram and WhatsApp, their protocols and server software are
    closed source, and even if they were publicly shared to be audited,
    there is no guarantee that the published code is the same that's
    running on the server. [Telegram's founder even says
    so](https://t.me/durovschat/515221).

Also, most apps did not add anything useful to the **texting**
experience. Exchanging text messages and talking on WhatsApp is roughly
identical. Actually I bet the average WhatsApp experience in 2014 was
indistinguishable from using MMS.

But surely, they must have changed *something*. I mean how did they get
popular otherwise? For WhatsApp, the answer is statuses, and for
Telegram lossless media exchange, replies and stickers.

Those seem pretty compelling as features, that are definitely lacking in
SMS. But what if there was a **new standard**, a spiritual successor to
SMS, that allows for a more modern chat experience across all kinds of
phones, just like what MMS tried to do?

------------------------------------------------------------------------

## The solution is RCS!

So what is the solution to all of this? I hinted before to an **open
protocol** that allows everyone to talk with anyone else, just like SMS,
but with more robust security and more features. It turns out, there is
one: **[RCS](https://wikipedia.org/wiki/Rich_Communication_Service)**!

I really love these kinds of open standards, the internet was built on
them. Actually, most things we take for granted every day use standards
that developers, providers and companies have agreed on for decades.
HTML, Unicode, POSIX all come to mind.

RCS, or Rich Communication Service is one such protocol. SMS has been
included since the early '80s on basically all cellphones, and since
then MMS was also launched for media capable phones.

If you have an Android phone, **you can already start to use RCS** with
all of your friends. RCS support is bundled with all Android 5.0+ phones
and you can also install one on your own if for some reason that isn't
the case. Generally, RCS apps also work as SMS apps and vice versa.

By far the most popular RCS client is **[Google
Messages](https://messages.google.com)**, but RCS is also supported by
Samsung Messages, which is probably already the default SMS apps on your
phone. So you can also text if you or your recipient don't have an
internet connection or a smartphone.

------------------------------------------------------------------------

1.  You can just send a text message to anyone, as long as they have a
    cell phone made after the year 1990. RCS clients fallback to SMS in
    case the recipient's phone is not connected to the internet or if
    it does not support RCS.

    SMS support is completely independent of the operating system. In
    fact, your phone doesn't even need to have one as long as the
    hardware firmware has SMS.

    It is up to the developers of the OS to preload a working SMS
    client, but even if they for some reason didn't, there are loads
    available like Textra for Android phones and you could always make
    your own if you wanted.

    Every Android phone with at least Android 5.0 fully supports all
    features of RCS, and older phones can still use and receive SMS even
    from RCS users.

    So, with SMS, you can text even in remote places with no Internet.
    No matter if your recipient is currently online, if they even have a
    smartphone, or if they have low signal, they'll still be able to
    read your message.

2.  RCS systems use your mobile providers's RCS infrastructure to route
    your messages over to your recipient. Conversely to apps like
    Telegram there's no need for a data center that stores your
    messages. These RCS services run a selfhosted software known as an
    "RCS deployment". [Google](https://jibe.google.com) makes the
    deployment used by the majority of providers. These deployments
    should be GSMA compliant, so aligned with the RCS standard.

    If you and your friend are on different carriers, **RCS hubs** come
    in to play to send messages across the global RCS network.

    SMS, the fallback, sends your message to an SMSC ("SMS Center") in
    your radio coverage area, which is then sent over to your
    recipient's area, just like phone calls (however, the phone line
    and the SMS route are different).

3.  Your messages are only on you and your recipient's phones,
    including photos and videos. Also, unlike WhatsApp which does a
    similar thing, there's no need for an expensive and often
    unreliable cloud backup, because a lot of chats can be stored into a
    SIM card.

    As an added bonus, most RCS implementations are now end-to-end
    encrypted.

4.  The RCS protocol has full support for **message replies**, **message
    deletion**, **high quality photos**, **location data**, reactions,
    videos, stickers and as I've been able to test, even raw files.

    RCS messages can even contain information like live locations,
    stickers, GIFs, search results, and more.

    In case there's some need to fall back to SMS, information about
    replies and reactions is preserved (eg. a "Reply to: ..." text
    will be shown to SMS users) and media is sent over MMS or using
    links. This ensures integrity if you can't use RCS at a given time.

------------------------------------------------------------------------

So all of that said, why spend so much of your time trying to get
someone else to download the same app you're using, when you could just
open the Messages app and just... talk?
