README.txt

images missing:
images/*
kappler/images/*
treatylexicon/images/*


Updated 2016 by Jessica
- Moved project to cors1601 server in April 2016
- Renamed some cocoon instances to reflect their vhosts

annualregister1763.unl.edu
csaindiantreaties.unl.edu
earlytreaties.unl.edu
indianaffairsvetoes.unl.edu
kappler.unl.edu
okmulgeeconstitution.unl.edu
treatylexicon.unl.edu
treatyoffortlaramie1851.unl.edu

These sites are constructed in cocoon. earlytreaties uses a solr instance to power its search

I took the liberty of removing all of the search directories from the sites that do not actually have search.  I left it in earlytreaties in case anyone in the future needs that particular posting script, as I am not going to make an API repo for 9 documents

Also, I moved all of the html / non-cocoon treatiesportal files into a directory (treatiesportal.unl.edu) so that it is simpler to apply different permissions to those files and the cocoon sites



2016-11-15 Greg Tunink
Updated the character encoding serializer to iso-8859-1
(https://github.com/CDRH/CDRH-General/wiki/Cocoon#undisplayable-diacritics)
  Treaty of Fort Laramie
  Early Treaties
  Forced Convergence
  Kappler
  Kappler Map
  Mayflower
  Okmulgee Constitution
  Ordinance 1786
  Plan of 1764
  Serial Set
  Treaty Lexicon
  Waitangi

A couple other documents had iso-8859-1 in the HTML meta element,
but I saw no misdisplayed characters so I didn't change the sitemap.

