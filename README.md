# fsi-log

fsi-log is the official newsletter of the Fachschaft Informatik of the univesity in Tuebingen.
## Contribute
1. Clone this Repository  
`svn co https://projects.fsi.uni-tuebingen.de/svn/newsletter/trunk newsletter `
2. Edit or add content
3. Commit your changes  
`svn commit -m "<your message>" Path/To/Your/File`  
4. Maybe you have to add new files:  
`svn add Path/To/Your/File`  
After that you should be able to commit it


## Release
1. Clone this Repository  
`svn co https://projects.fsi.uni-tuebingen.de/svn/newsletter newsletter `
2. Copy the released fsi-log into the Release folder  
`cp trunk/ releases/<year>/<month>`
3. Commit the releases  
`svn commit -m "release <year> <month>"`

## Make
1. Clone this Repository  
`svn co https://projects.fsi.uni-tuebingen.de/svn/newsletter/trunk newsletter `
2. Compile the LaTeX  
`make`
3. If you just want the PDF  
`make pdf`
