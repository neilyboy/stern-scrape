# stern-scrape
scrape https://www.howardstern.com for episode info
(this is my first script so be nice)

Simple bash script to pull episode data about SiriusXM Howard Stern episodes.
```bash
chmod +x stern-scrape.sh
```
```bash
./stern-scrape.sh
```
You will be prompted for 'year' followed by 'month' (2020) (april). 
This will list the dates Howard aired.
Here you will be prompted for 'day' (13).

This will then output a txt file with all of the requested info.

Sample output file text.

```
Howard and Beth buy a robot vacuum
Gov. Andrew Cuomo Updates Howard on New York’s COVID\u002D19 Fight and His Relationship With Donald Trump
AUDIO: Michael Rapaport Blasts Sal Governale for Not Checking in on Him During the Quarantine
Sal Governale’s Dad Snuck Out to Play the Lotto While Recovering From Coronavirus
High Pitch Erik Offers to Work for New York Governor Andrew Cuomo
Episode Thumbnails:
https://d1o0agh0cxj49r.cloudfront.net/photos/2020/04/13/102-51217-shutterstock_1218475189-roomba-promo-1586789067.jpg
https://d1o0agh0cxj49r.cloudfront.net/photos/2020/04/14/102-51227-andrew-cuomo-promo-getty-1586822455.jpg
https://d1o0agh0cxj49r.cloudfront.net/photos/2019/12/11/102-50181-michael-rapaport-gettyimages-1032303746-promo-card-1576090533.jpg
https://d1o0agh0cxj49r.cloudfront.net/photos/2020/04/13/102-51225-sal-1-thss-041320-promo-1586811903.jpg
https://d1o0agh0cxj49r.cloudfront.net/photos/2020/04/13/102-51223-01-15-20-high-pitch-erik-and-chris-wilding-in-new-truck-2--1586801526.jpg
```

The output is what I am using to throw in comments of id3 tag on mp3 recording of show.

Screenshot:
![stern-scrape-screenshot](https://user-images.githubusercontent.com/9546844/79399757-ce609e00-7f49-11ea-9c0c-a0fd8b3cd7fe.png)
