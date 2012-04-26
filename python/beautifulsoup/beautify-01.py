from BeautifulSoup import BeautifulSoup
import urllib2

page = urllib2.urlopen("http://iuns.org/adhering-bodies.htm")
soup = beautifulsoup(page)
print soup.pretify()
