## cs2hack

cs2 game hack including info esp, radar (WIP) and aim/trigger powered by input through qmp

a lot could have been better, but since it works just fine and does not get detected on certain 3rd party platforms depending on qemu/kvm setup, i decided to just throw this project on github.

### credits
- [ko1N](https://github.com/ko1N), [h33p](https://github.com/h33p) and [emesare](https://github.com/emesare) - memflow
- [a2x](https://github.com/a2x) - cs2 offset dumper
- [h3rx](https://www.unknowncheats.me/forum/members/2460597.html) - QeMouse
- [horror](https://github.com/horrified-dev) - all inspiration to get into qemu/kvm gaming ;)
- contributors of [curl](https://github.com/curl/curl), [IXWebSocket](https://github.com/machinezone/IXWebSocket) and [JSON for C++](https://github.com/nlohmann/json)

## setup 
to get setup, we're assuming you have a qemu/kvm gaming setup already

#### build
to prepare the web server dependencies and build the client in one step, run the root build script
```
./build.sh
```

#### web
go into the web folder and start the server
```
npm start
```

#### client
if you only want to build the client, run the build.sh script inside of client folder
```
./build.sh
```
head into build folder, modify run.sh to your preferences/needs
```
cd build
nano run.sh
```
(for aimbot and triggerbot) configure qmp for mouse input you'll need to modify your vm xml
[reference](https://www.unknowncheats.me/forum/anti-cheat-bypass/491109-qemouse-injecting-mouse-events-qemu-qmp.html)
```
// replace <port> with the port you'd like to use for qmp (6448 default on uc)
<domain>
  ...
  <qemu:commandline>
    <qemu:arg value="-qmp"/>
    <qemu:arg value="tcp:127.0.0.1:<port>,server,nowait"/>
  </qemu:commandline>
</domain>
```
finally, run "run.sh" script
```
./run.sh
```
triggerbot key is your use key in-game, to bind it use cs2 command
```
bind <key> +use
```
aimbot is enabled for the first X shots defined by -shots argument defined in [run.sh](https://github.com/ce6ac/cs2hack/blob/main/client/build/run.sh)
