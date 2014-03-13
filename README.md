# sdctools

I provision and destroy a bunch of Joyent Cloud instances to document them.
These are some tools I wrote to make it a little easier for me.


## creds

Print my current SDC and Manta credentials.

```
$./creds
export SDC_URL=https://us-east-1.api.joyentcloud.com
export SDC_ACCOUNT=someaccount
export SDC_KEY_ID=3e:45:9b:55:a6:dc:63:be:1a:20:95:c9:73:ea:42:9e
export MANTA_USER=someaccount
export MANTA_KEY_ID=3e:45:9b:55:a6:dc:63:be:1a:20:95:c9:73:ea:42:9e
export MANTA_URL=https://us-east.manta.joyent.com
```

## images

Print a list of images that match a search string.

```
./images java
48489174-e351-11e2-88c0-a31eb2b342ee 13.1.0 java
c56ed646-82d8-11e3-849e-eb2c0535bf06 13.3.1 java
```

## deletemachines

Delete a set of machines.

```
$ ./deletemachines 75413d62-3135-446e-83b8-d7da437e1faa b896d83a-a502-c50e-9642-e3c6645c86a5
Deleting  75413d62-3135-446e-83b8-d7da437e1faa
Deleting  b896d83a-a502-c50e-9642-e3c6645c86a5
```



## machines

List the machines I have in the current datacenter.

```
$ ./machines
75413d62-3135-446e-83b8-d7da437e1faa 72.2.118.229 133464 sdc:sdc:base64:13.4.0 2014-03-13T17:15:39.305Z
b896d83a-a502-c50e-9642-e3c6645c86a5 72.2.113.72 133432 sdc:sdc:base:13.4.0 2014-03-13T17:16:18.670Z
```


## provision

Given an image, a size in GB, and an optional name, provision an instance.

```
$ ./provision ff86eb8a-a069-11e3-ae0e-4f3c8983a91c 1 base641340
Provisioning base64 13.4.0 g3-standard-1-smartos (base641340)
f681207e-9ef3-4638-e1b1-809896a7c4cc
```


## state

Get the current state of one or more machines and their public IP address.

```
$ ./state f681207e-9ef3-4638-e1b1-809896a7c4cc
base641340 provisioning
. . .
$ ./state f681207e-9ef3-4638-e1b1-809896a7c4cc
base641340 running 72.2.118.17
```



