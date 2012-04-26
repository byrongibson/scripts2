#!/usr/bin/env python
# Courtesy of Sue in Boston
# http://zombievir.us/2010/02/beautiful-soup-for-ugly-html/

import re, util
from BeautifulSoup import BeautifulSoup, Comment
 
# list
list=[]
 
# base url
baseurl = "http://www.plyrics.com/w/weezer.html"
 
# use cs171-util to get a soup object that represents a webpage
soup = util.mysoupopen(baseurl)
#I started with the dido lyric scraper I saw on the forums. I have never written
#in python before. I played with it for a while and came up with my own way of
#grabbing urls.
 
# titleCols- grab the HREF values of all links
titleCols = soup.findAll("a", href=True)
 
# if there are no href values, stop :)
# program!
if(len(titleCols) == 0):
    exit;
 
# for each entry
for url in titleCols:
    mc = str(url['href'])
    #print mc
    # find the urls
    m = re.search("weezer/(.*)", mc);
    if(m != None):
        test=(m.groups()[0].strip())
        list.append(test)
        #print test  just checking what it's grabbing  I use print a LOT
 
#start the scraping of the other urls
# this creates a tab-delimited file
delim = "\t"
 
# base url 2- this is the first part of my path
baseurl2 = "http://www.plyrics.com/lyrics/weezer/"
 
# while loop
c = 0
while c &lt; len(list):    
 
# add the file name to the plyrics path
    baseurl3 = baseurl2 + list[c]
    soup2 = util.mysoupopen(baseurl3)
 
    #just checking my urls - Accidentally created infinite loop. funtimes.
    #print baseurl3
 
# grab lyrics
    lyrics = soup2.findAll("div",{"class":"body_lyr"})
 
# No lyrics? stop program!
    if(len(lyrics) == 0):
        exit;
# for each article...
    for entry in lyrics:
        mc2 = str(entry)
    # find the name of the product
        mosoup = BeautifulSoup(mc2)
        #remove comments &amp; all other stuff
        comments = mosoup.findAll(text=lambda text:isinstance(text, Comment))
        [comment.extract() for comment in comments]
 
        for script in mosoup("script"):
            mosoup.script.extract()
        for style in mosoup("style"):
            mosoup.style.extract()
        for iframe in mosoup("iframe"):
            mosoup.iframe.extract()
        for h4 in mosoup("h4"):
            mosoup.h4.extract()
        for h5 in mosoup("h5"):
            mosoup.h5.extract()
        for h2 in mosoup("h2"):
            mosoup.h2.extract()
        for a in mosoup("a"):
            mosoup.a.extract()
        for br in mosoup("br"):
            mosoup.br.extract()
        for img in mosoup("img"):
            mosoup.img.extract()
        for h1 in mosoup("h1"):
            mosoup.h1.extract()
        for h3 in mosoup("h3"):
            mosoup.h3.extract()
        for h2 in mosoup("h2"):
            mosoup.h2.extract()
 
        f = open('output.txt','a')
        f.write(str(mosoup))
        f.close()
 
    c = c + 1

