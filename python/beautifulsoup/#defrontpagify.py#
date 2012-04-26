#!/usr/bin/env python
# Part of (under construction) makeover module for prettifying terrible html.
# 1.  soupify and defrontpagify all *.htm* files in current directory.
# 2.  write back to same dir with '.pretty.htm' appended to filename.

"""
Module Makeover.
"""

import re, copy, sys, optparse, os, glob 
from BeautifulSoup import BeautifulSoup, Comment, Tag

# process commandline.  not used yet.
# http://python.net/~goodger/projects/pycon/2007/idiomatic/handout.html#command-line-processing
def process_command_line(argv):
    """
    Return a 2-tuple: (settings object, args list).
    `argv` is a list of arguments, or `None` for ``sys.argv[1:]``.
    """
    if argv is None:
        argv = sys.argv[1:]

    # initialize the parser object:
    parser = optparse.OptionParser(
        formatter=optparse.TitledHelpFormatter(width=78),
        add_help_option=None)

    # define options here:
    parser.add_option(      # customized description; put --help last
        '-h', '--help', action='help',
        help='Show this help message and exit.')

    settings, args = parser.parse_args(argv)

    # check number of arguments, verify values, etc.:
    #if args:
    #    parser.error('program takes no command-line arguments; '
    #                 '"%s" ignored.' % (args,))

    # further process settings & args if necessary
    # For future versions, use args to specify what cleaning/prettifying ops to perform on the input files
     
    return settings, args


# read all files in current dir, store filenames and content in dict.
def defrontpagify(argv=None):
   
    # ########## ARGUMENTS ########## #
    #settings, args = process_command_line(argv)
    #return settings, args        # success
    
    # ########## VARIABLES ########## #
    # Massage input file contents
    myMassage = [(re.compile('<!-([^-])'), lambda match: '<!--' + match.group(1))]
    myNewMassage = copy.copy(BeautifulSoup.MARKUP_MASSAGE)
    myNewMassage.extend(myMassage)

    # delete tags and all contents
    OBLITERATE_TAGS = ['meta','script','style']

    # delete tags, preserve contents
    REMOVE_TAGS = ['font','xxpstylexx','i','b','em','strong'] 
    REMOVE_TAG_WITH_ATTRIBUTE = ['language=javascript']

    # image tags to remove
    REMOVE_IMG_WITH_ATTRIBUTE = ['anarule','anabul']
   
    # replace tags 
    REPLACE_TAG_WITH_DIV = ['u1']
    REPLACE_TAG_WITH_SPAN = ['st1']
  
    # strip attributes, preserve tag
    REMOVE_ATTRIBUTES = ['id','lang','language','onmouseover','onmouseout','script','style','font',
                        'dir','face','size','color','style','class','width','height','hspace',
                        'border','valign','align','background','bgcolor','text','link','vlink',
                        'alink','cellpadding','cellspacing','colspan','rowspan','bordercolordark',
                        'bordercolorlight']

    # replace attributes 
    #REPLACE_ATTRIBUTE = [] 

    # modify attribute values 
    #MODIFY_ATTRIBUTE = [] 

    # remove &markup
    REMOVE_MARKUP = ['&nbsp']
    
    
    # ########## FUNCTIONS ########## #
    # get list of all *.htm* files in specified dir 
    # loop through each, create file object, remove all MS Front Page and other HTML cruft
    # write result to new file object with '.pretty.html' appended to end of filename
    #for infile in glob.glob( os.path.join('.', '*.htm*') ):
    for infile in glob.glob('*.htm*'):
        with open(infile,'r') as raw:

            # strip line feeds with line.strip() and markupMassage, write new files to ./souped
            outputlist = [line.strip() for line in raw]
            old = "".join(outputlist)

            # strip REMOVE_MARKUP from old using string method replace 
            for x in REMOVE_MARKUP:
                old = old.replace(x,"")
            
            new = open( os.path.join('./souped', infile), 'w')
            soup = BeautifulSoup(old, markupMassage=myNewMassage)

            # remove all comments
            comments = soup.findAll(text=lambda text:isinstance(text, Comment))
            [comment.extract() for comment in comments]

            # remove all tags and enclosed content in OBLITERATE_TAGS
            for tag in OBLITERATE_TAGS:
                tags = soup.findAll(tag)
                [oblit.extract() for oblit in tags]

            # remove all img tags with 'anarule.gif', 'anabul.gif', 'nabul.gif', 
            # 'narule.gif', 'logo', or _derived in the src attribute
            imgs = soup.findAll('img', src=re.compile('.*(ana|narule|nabul|logo|_derived).*'))
            [img.extract() for img in imgs]

            # remove all tags in REMOVE_TAGS, but preserve their contents.
            for tag in REMOVE_TAGS: 
                for match in soup.findAll(tag):
                    match.replaceWithChildren() 

            # remove all attributes in REMOVE_ATTRIBUTES from all tags, 
            # but preserve the tag and its content. 
            #for attribute in REMOVE_ATTRIBUTES:
            #    for tag in soup.findAll():  ## error: `attribute` reference fails
            #        del(tag[attribute])
            for tag in soup.recursiveChildGenerator():
                try:
                    tag.attrs = [(key,value) for key,value in tag.attrs
                        if key not in REMOVE_ATTRIBUTES]
                except AttributeError: 
                   # 'NavigableString' object has no attribute 'attrs'
                    pass

            # remove all carriage returns from within the contents of an anchor tag
            # edit:  this doesn't work, use dos2unix from debian repo, plus file 
            # preprocessing and soup massaging at beginning of this function instead
            #anchors = soup.findAll(text=re.compile('.*\^M.*'))
            #[anchor.find(text=re.compile('.*^M.*')).extract('^M') for anchor in anchors]
            #anchors = soup.findAll("a", text="\015")
            #[anchor.find(text="\015").replaceWith(" ") for anchor in anchors]

            # remove all tables with no contents
            #tags = soup.findAll('td',text=None) 
            #[tag.extract() for tag in tags]
            #tags = soup.findAll('tr',text=None) 
            #[tag.extract() for tag in tags]
            #tags = soup.findAll('table',text=None) 
            #[tag.extract() for tag in tags]
            for table in soup.findAll("table",text=None,recursive=True):
                if not table.text:
                    table.extract()
             
            # done.  write and close.
            new.write(soup.prettify())
            new.close()
            

def main(argv=None):
    # run(settings, args)
    defrontpagify()
    #return 0        # success

if __name__ == '__main__':
    status = main()
    sys.exit(status)
