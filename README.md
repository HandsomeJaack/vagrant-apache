# Apache server configuration

First of all do `vagrant up` to configure and load Apache server on Ubuntu-20.04 using Vagrant.<br/>

Apache uses python's Flask backend, to recieve responce from it you should follow https://localhost:10443/. You should see a message from it:
```
Congrats! You've received response from dummy flask server!
```
Apache server is configured with SSL self-signed certificate, so your browser may throw a warning about unsafe connection, just ignore it and go further.

To edit static pages live on server folder html is synced with remote, just go to https://localhost:10443/static/ and see the contents of `./html/index.html` presented in this repo. You may edit it and reload page to see changes.