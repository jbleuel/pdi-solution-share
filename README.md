# pdi-solution-share
Remove security and other unwanted information and meta-data from PDI jobs/transformations to share with others.

This has been presented at the German Pentaho Community Meeting 2015 (#PCMD15) and is now within GitHub to keep the files and allow others to collaborate when needed.
see also http://kettle.bleuel.com/2015/02/05/pdikettle-solution-share-presented-at-pcmd15/ and https://pentaho-public.atlassian.net/wiki/spaces/EAI/pages/388316831/PDI+Kettle+Solution+Share

## Documentation

Before you share a PDI solution with the community, clients etc. you probably want to ensure that it does not contain any security related information you do not want to share.

There are many information within transformations and jobs that you may not want to expose to others like: hostnames, usernames, creator information, server names, file paths etc.

This article explains how to use the PDI/Kettle Solution Share to remove these unwanted (secure & private) information in your Kettle/PDI jobs and transformations.

It should also encourage you to share your solution with others, e.g. via the Kettle Exchange on the Pentaho Wiki.

This works for multiple files es well for a repository export.

Here is the how to:

1. Download the bin/solution_share.zip, unzip it to a folder of your choice (or pull the files directly from GitHub)
2. Open solution_share_main.kjb from Spoon
3. Execute it with the test files within the solution_share/share folder
4. A new folder solution_share/share_date_time (e.g. share_public_2015-02-08_22-06-27) has been created with the cleaned files
5. You may want to compare the files if they do not contain any private information like connections, user names etc.
6. Put your files to share into the ./share folder instead the sample files (you can also modify the default location by changing the parameter within solution_share.ktr)

If you want to add and/or modify the elements that are removed from your solution, you can do so by editing the XSL Transformation: share_remove.xsl
