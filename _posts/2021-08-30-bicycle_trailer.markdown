---
layout: single
title:  "Bicycle trailer for 2 Euroboxes"
date:   2021-08-30 22:14:00 +0200
---
**TL;DR I built a bicycle trailer out of aluminium to accomodate two euro boxes and a bit of stuff. Design thoughts and documents inside.**


I really like the [Carry Freedom](https://carryfreedom.com) trailers. We had the Y large in use for a few years, but that unfortunately went back to its owner. So a replacement was needed:

* Buy a Y large for about 400€ (oh yes, they got expensive!)
* Build something similar with the option of being more specific to our use case: dumpster diving

![trailer sketch](/assets/trailer/trailer_box.jpg)

I really like going dumpster diving with a bike trailer and euro boxes ("green boxes") on it. I also normally take a bike pump, a water bottle, some tools and maybe a rain jacket. While I could fit all those things in a bike bag, I like to carry this in the trailer. So let's have it have an extra box for this :-)

Other than that, the trailer should fulfil the following design criteria:

* fit 2 boxes of 60x40cm each (60cm width of load, 2 boxes behind each other). Actually, fit these boxes perfectly. The sole purpose of the trailer is to carry these boxes.
* stable enough to easily carry 100kg: 6 boxes of 15kg each is possible when dumpster diving, although it will normally be used with less
* use as much standard bike parts as possible: While the Y trailer uses special wheels, I don't need to be able to take them off and I trust the "normal" bicycle wheel, which axle is supported on both sides, a bit better
* as little and light as possible: Doing the 20-35km tour is already enough sports, the less weight I have to carry the better :-)
* Use the carry freedom coupling system: connection point to rear axle of bicycle with carry freedom polymer. I really love this system!

The choice of bicycle wheels comes at a price: The support on the outside of the axle makes the trailer quite a bit wider - so I put some thoughts and measurements into making it as small as possible, as two doors where the trailer should fit through are only 85cm wide:

* Lots of different boxes I measured actually always fit into 60,0 x 40,0 cm. There is no need for extra space, so let's just add 1-2 mm
* While the axle holders are meant to be 10cm apart, the tyre itself does only need 8cm of space between the axle holders, so the outer frame can be mounted with a space of 8-8,5 cm (a bit extra to allow for some weird wheels I did not measure or some inaccuracies)
* The width of the outer frame part does not matter as long as it is below 3cm as the axle + nut will be approximately 2 cm wide (and the mounting is shifted outwards about 7mm)
* The boxes stand on top of the inner frame part, so its width also does not matter

I decided to go with aluminium: It is not only lightweight and does not need much care regarding corrosion issues but it also allows learning a new welding technique.

### static calculation

Disclaimer: I never studied statics, so take this section with care. I found this nice [Online calculator](https://cncwerk.de/rechner/vierkant/) for aluminium square profiles.
My thought: Let's imagine having half of the weight of the trailer (50kg) at the back. It would then split to both sides (25kg) as well as the inner and outer frame (12,5kg each). Let's double that number just to be safe (25kg) :-)

So... 40cm (free length) and a 30x30x3mm square profile (starting point).
We have a free end (technically not true as there are all 4 lose ends connected to each other but from thinking about it this should represent the case the closest).
The calculator is nice and also gives the weight of the profile:
nearly 2mm bend and 340g of weight.
Comparison to a 40x30x2mm rectangular profile:
a third less bend and about 15% less weight. Great!

This calculation cannot say if any forces inside the material will be too big. I trust my "common sense" here and say: It will be fine.

### Welding setup

I have access to a cheap MIG inverter welding machine, the IPOTOOLS MIG 250.
To use it for aluminium, I get a PTFE tube and 500 grams of 1mm aluminium welding wire.
The argon gas bottle (instead of argon-CO2 mix for steel) I can borrow from a friend.
There is lots of guides out on the internet on how to properly setup your MIG machine for aluminium - for me it worked flawlessly on the first try.

You really only need to get used to the material: The voltage needs to be set pretty high ("4" on my device, which I normally use for 4-5mm steel) and the wirespeed anyway ("6"), so you have to weld thin 2mm aluminium **really** quickly. Unfortunately, even at the end of this trailer project I did not manage to produce really good looking welds (although I am certain that they will be stable enough, just not good looking). This could be improved by using 3mm aluminium (at the cost of weight and money) but I strongly suggest using a TIG welding machine if you can get a hand on it. Also, if your MIG machine allows pulsing it would be a huge improvement for the thin aluminium.

### Design
As everything is figured out, let's sketch something up :-) The design is inspired by the [Pedalkreis Carla](https://pedalkreis.org/fahrzeuge/carlacargo/)

![trailer sketch](/assets/trailer/trailer_sketch2.png)

Unfortunately, I was unable to properly draw this with CAD and it just took me 1-2 hours on good old paper (I did not use pencil, ruler and set square for years before!).
The dimensions in here are **not** up to date, but also not horribly wrong. Read it in the buildings section.

I used a cheat sheet to get some angle calculations right:
![angle calculations cheat sheet](/assets/trailer/cheat_sheet.png).

You can easily change all dimensions to make the trailer fit for your exact purpose. The material is strong enough to allow making the trailer quite a bit bigger - but if you increase the length more than 50 cm, think about upsizing the long parts of the inner frame.



### Parts
Order
* 6m of 40x30x2mm aluminium rectangular profiles (3x 2m just works out, 6x 1m might not, better order 7 then)
* 0,5m of 40x5mm aluminium flat piece
* 1m of 50x3mm aluminium flat piece
* 0,5m of 30x30x2mm aluminium square profile

and optionally
* 1m of 25x25x3mm (or 25x25x2mm if you don't find it) aluminium square profile if you want to build the drawbar yourself
* 0,5m of 40x3mm aluminium flat piece to close some holes of the rectangular profile in the end (pure optics)
* 1,25m * (10-15cm) 1,5-2mm aluminium sheet for the box surrounding in the front
* 55cm * 12cm 1,5-2mm aluminium sheet for the box surface in the front

I paid about 80€ for everything but had to combine two shops.

For the bike parts, you might want...
* One 20 inch front wheel (starting from 25€)
* One 20 inch front wheel with dynamo hub (starting from 50€)
* Schwalbe Big Apple tyres (a set for 36€)
* 2x tube for 20 inch and 50-55mm tyre width (2-2,15 inch) with a valve of your choise (3-5€ each)
* 1x LED front light suitable for dynamo hub (8-25€, don't need anything super bright here)
* 2x LED rear lights for mudguard mounting (I used Büchel Z fire mini as they have certified reflectors for 6,50€ each)
* 1x front reflector 

Then, you still need the carry freedom parts
* A set of coupling polymer and hitch for bicycle (around 50€)
* The drawbar for 35-40€ if you don't want to build it yourself

With all these parts together, you should end up somewhere between 300-350€. You will also use welding gas/wire for 5-10€. I needed 13 hours of time for building the trailer without making it nice and shiny and without installing the lights and then spend an additional day until it was "done" enough.

Tools you need:
* Welding machine setup for aluminium welding
* Welding safety equipment
* Welding accessoires: (flat) table, clamps, wire brush (Well, you should have at least a tiny bit of welding experience before this, you know what tools you need)
* folding rule
* Metal 90 degrees angle
* Cutting tool: If you don't have a proper metal cutter, use an angle grinder
* Pencil

(you see, there are no special tools besides the obvious for doing a bit of metal/welding work.)

### Building
To do the cutting with the angle grinder, mark the cutting line all around. Try to feed the angle grinder very careful, slowly and accurate. Always use clamps to mount the aluminium to a heavy table, so it does not vibrate or jump away. Using a 1mm angle grinder blade makes it easier to have exact cuts, but a 3mm blade would also work.

#### Starting with some straight pieces
Start with the 40x30x2 material and cut the following pieces with both ends straight:

* Inner frame length: 2x (40,5+40,5+15) = 96cm
* Inner frame distance: 3x (60,3-3-3) = 54,3cm (Sketch shows 55cm)

You can already now put this together on a table and weld it:

Basically lay down the trailer frame (with the 40x30 profiles upright, so they use 30mm width) on the table in front of you.
In my sketch, the very front part consists of a lot of small pieces with 45 degrees angle, so I did them last. Intentionally keep 15cm of space there!
Use an angle tool to have all inside angles at exactly 90 degrees. Use clamps to mount all pieces (or at least always the 2 pieces you are welding) to the table so they can't move.

Start by putting 2-3 spot welds on each corner (Well, better practice that / setup your machine before with some scrap parts: Did I tell you that aluminium welding is a bit different to steel? :D ). If you use MIG welding, don't forget to use a wire brush to remove the aluminium oxide where you will be welding - do this not more than 2 minutes before you actually weld. Also either preheat the aluminium or just be fine with that the first spots on the cold material will not bind properly - starting on a point for half a second and then moving a few millimeters so you have an ugly big dot but a nice connection just next to it worked good for me.

When you are done, measure if they dimensions are still right: Are all angles at 90 degrees? Is the size (the boxes are gonna use all the space on top of the aluminium pieces) at least 60,2cm in the width and 80,2cm in length so the boxes fit?

All good?
Then you are free to finish up the existing welds.
Again: Practice before on a scrap part, the difference between making a hole and now having a proper connection is easy to miss.

#### Continuing
Let's continue with the frame part around the wheels, I call it "outer frame".
I did a mistake on my build: I just did two times 45 degrees angles on the edge parts which made it not fit nicely. You would want to split up the angle between the straight piece and the corner piece to two times 22,5 degrees so the resulting surfaces are of the same size.
Being exact is necessary on the angle - you don't want to have gaps of more than 1mm you need to bridge when welding.

I first marked the longer distance for the piece on the metal and then used an angle tool to mark the angle right.
When making a line all around, I start with one line, then extending this to both of its neighbour sides and in the end connect those lines on the forth side, opposite to the beginning side.
Doing that, I minimize the error and get an indication of error when the two ends on the forth side don't match in the angle they should match...

You now need (sketch shows different lengths here):
* Outer frame length: two pieces of 52cm length (long side) with (90 - 22,5) degrees on both sides (shorter side should then be 52cm - 2 * tan(22,5°) * 3cm = 49,51cm)
* Outer frame edges: four pieces of 16.97cm length (long side) with 45 degrees on the trailer facing side and  (90 - 22,5) degrees on the outside facing side. The short side will then be sqrt(2\*9\*9cm²) = 12,73cm

When putting this together, it is important that the long piece is parallel to the rest of the trailer frame. We will be able to correct alignment issues when mounting the wheel holders, but still it is good to take care here.
I put a few pieces of wood between the long pieces of the inner and the outer frame so I could clamp it together with the exact distance of 9cm.
I also had the whole trailer on a straight table.
As there are the welds already on the frame so it will not be straight on the table, I put 12mm plywood I had lying around under places without welds, so I had everything straight again.

If you are going to put end caps on the long parts of the inner frame in the end, you might want to have the wheel frame going about 3mm further back.
In general, the trailer should be designed so you have a bit of load pushing the drawbar down, in idle case but also in load case.
As I would like to keep the outer frame at the 45 degrees angle, I could not put the wheels further back.
I don't see a problem there as I can easily adjust the center of gravity by adjusting the load:
Just put the heavier boxes to the front.
Try to fit all the pieces by hand, try to use an angle grinder or file to do small corrections so you get only very small gaps.
Then, put everything together with clamps, spot weld and finish welding.

It should now almost look like a trailer already :-)

Now is a good time to use an angle grinder to make the top surface smooth, e.g. remove all additional material on the top so the boxes can stand on there.

#### Drawbar holder

For cycling, you normally need a drawbar on the left side.
I don't know why the carry freedom has them on both sides but I also went along with this, to give more support for the front box.

The drawbar holder will be build out of 30x30x2mm aluminium (Carry freedom uses 32x32x3 which I could not acquire).

I was lazy and just measured the remaining space on my trailer; you can do the same or calculate it: 

* Drawbar holder: 2 pieces with 45 degrees at both ends (ends parallel to each other) with the sides being sqrt(2\*15\*15cm²) = 21,21cm

The drawbar positioning I also got a bit wrong:
Carry Freedom uses a splint to fix the drawbar to its holder that is 5cm from the end of the drawbar.
You want this splint to be approximately 20cm away from the center of the trailer.

You should definitively drill the splint hole (6mm) **before** you weld the holder to the frame, as it is important to center it exactly.
I forgot, did it later by hand, used 7mm and still had a bad fitting :-(.

Best you try fitting the drawbar before welding, so you can make a bigger hole (you will not be able to reach that properly with a drilling machine once welded onto the trailer)

About the actual positioning in the frame, I was limited by the remaining metal pieces: I wanted the piece in the front between the two drawbar holders be once piece and only had a 33cm piece left - that is why my drawbar holders are a bit more in the center so my trailer is off-center for about 5cm behind the bike as well.

As I was way too lazy to calculate the dimensions for the three pieces in the front, I measured them after the drawbar holder was fixed already.

#### Wheel holder

![trailer sketch](/assets/trailer/wheel_holder.png)

* Wheel holder: 4 pieces of 5cm out of the 40x4mm flat aluminium. Drill a 10mm hole 1,5cm from the long edge so it is centered there. Cut out with an angle grinder so an axle can easily be fit in.

The holes should have the exact same distance on all parts so the wheel will run exactly orthogonal to the ground.

The wheel axle center will be 2,5cm below the trailer, that gives enough room for the nuts and so on.

I used a (straight!) 1m piece of M10 threaded bar, 8 washers and nuts to position the wheel holders for each wheel exactly 10,0cm apart (in my experience, use rather 9,9cm than 10,1cm), put it on the trailer and adjusted the distance between them so the wheels will be symmetrical in the frame openings.
Then, I used a sharp view to make sure the thread bar is parallel to the middle inner width piece of the trailer and the wheel holders are parallel to the long pieces of the trailer.
Fix everything with a clamp, check the orientation again, spot weld, finish welding.

Fitting the wheels showed a perfect result :-)

#### Test ride!
That's it. Fit the wheels, fit the drawbar and make a test ride :-) Other parts are not neccessary.

#### Lights
I really like having proper lights at a bike and trailer, so I am happy to spend three hours of time and 60 euros to have the trailer seen at night and comply with german regulations.

At Carla Cargo, they add mudguards and add the lights there.

I added small flat pieces of aluminium at the front and rear of each wheel, so I can mount the lights directly.
It might or might not be possible to use the same mounts for mudguards - that's left up to the reader who wants to have them :-)

For both lights, the important part is to have it set back so much it does not stick out of the projection of the frame - in case you hit anything with the trailer, you don't want the light to be destroyed.

I used 50x3mm as base material and cut it in half (so having effectively 25x3mm).

![trailer sketch](/assets/trailer/light_holder.png)

* Front light: Two pieces of approximately 6cm length, 1cm (to weld on the frame) bend at about 60 degrees.
* Rear light: Two pieces of approximately 10cm length, 1cm (to weld on the frame) bend at about 45 degrees.

For the front light, drill a 6mm hole, for the rear light a 5mm hole; both approximately 1cm apart from the edge (on the longer end of the bend)

Put it on the frame, adjust the angle until it is parallel to the frame/wheel, spot weld, remove clamp, finish welding :-)

To feed the cable, you can use (or make) aluminium "washers" (pieces of 10x10x2mm aluminium with a 5mm hole in the middle) you weld onto the frame - then use cable ties through the  hole to fix the cable to the frame.

#### Box holders
Use 50x3mm aluminium to make a few pieces of about 5cm length that you weld around the frame - it is meant to hold the euro boxes in place.
As the boxes normally have a set back on their walls all around (so they can be stacked), you can also have a weld on the inside, e.g. on top of the trailer frame, and that will not be in the way.

#### Box
I used two 55cm pieces of 60x2mm flat aluminium as a base and left some space for a tie strap, so it can be fed just around the boxes put on the trailer but not around the aluminium box.
Then, I bend a "box wall" out of 1,25m x 12,5cm x 2mm flat aluminium, which didn't work so great.

I noticed that the box was making quite some noise; welding it at as many places as possible made the resonant frequency increase and the noise level decrease. It is basically silent now :-)

### Pictures


![trailer sketch](/assets/trailer/trailer_frame.jpg)