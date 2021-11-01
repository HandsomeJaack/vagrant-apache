# Apache server configuration

First of all do `vagrant up` to configure and load Apache server on Ubuntu-20.04 using Vagrant.<br/>

Apache uses python's Flask backend, to recieve responce from it you should follow https://www.dummy-example.com/. You should see a message from it:
```
Congrats! You've received response from dummy flask server!
```
Apache server is configured with SSL self-signed certificate, so your browser may throw a warning about unsafe connection, just ignore it and go further.

To edit static pages live on server folder html is synced with remote, just go to http://www.dummy-example.com/ and see the contents of `./html/index.html` presented in this repo. You may edit it and reload page to see changes.

**Note**: as you see it uses normal site representation. It's beacuase corresponding line added to `/etc/hosts`, don't worry, it will be deleted during `vagrant destroy`. Have fun!
