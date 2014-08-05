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

List the files in `~/.creds`

```
$ creds -l
Joyent_Dev
pborenstein
pborensteinjoyent
philip
```

These files are just bash files:

```
export SDC_URL=https://192.168.1.20
export SDC_ACCOUNT=lassie
export SDC_KEY_ID=3e:37:9b:11:62:dc:21:be:1a:fd:81:b6:73:ea:42:9e

export MANTA_ACCOUNT=lassie
export MANTA_URL=https://192.168.1.32
export MANTA_KEY_ID=3e:37:9b:11:62:dc:21:be:1a:fd:81:b6:73:ea:42:9e
```

Set environment variables in current shell:

```
$ eval $(creds philip)
```




## images

Print a list of images that match a search string.
With no argument, lists all images.

```
$ ./images java
48489174-e351-11e2-88c0-a31eb2b342ee     13.1.0 java
c56ed646-82d8-11e3-849e-eb2c0535bf06     13.3.1 java
bb41287c-e02a-11e3-aa6b-db678b82f5fc     14.1.0 java
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
db1186a7-e908-632e-d609-ed960ed8bac1 stopped        172.26.3.22 first      sdc:sdc:base:14.2.0       2014-07-30T03:32:00.731Z
dbdd81f1-43a7-4adb-a5cd-d18655c4b682 running        172.26.3.23 second     sdc:sdc:base:14.2.0       2014-07-30T03:32:19.866Z
ad4c95dc-c813-6b63-b3b4-fc4515d36951 running        172.26.3.24 third      sdc:sdc:base:14.2.0       2014-07-30T03:32:26.206Z
```


## packages

Print a list of packages that match a search string.
With no argument, lists all packages.


```
[master *]$ packages kvm
00747b85-e955-42c3-93b7-bf5cd6b3b82f   737280    1.0.0 g3-highio-30-kvm
ebb5dffb-04fd-487f-bd03-581ade19f717   269312    1.1.0 g3-highcpu-7-kvm
4dad8aa6-2c7c-e20a-be26-c7f4f1925a9a    16384    1.0.3 g3-devtier-0.25-kvm
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
$ state db1186a7-e908-632e-d609-ed960ed8bac1 dbdd81f1-43a7-4adb-a5cd-d18655c4b682
first           stopped        172.26.3.22 db1186a7-e908-632e-d609-ed960ed8bac1
second          running        172.26.3.23 dbdd81f1-43a7-4adb-a5cd-d18655c4b682
```



